package androidx.work.impl.background.systemalarm;

import androidx.work.Logger;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/WorkTimer.class */
public class WorkTimer {
    private static final String TAG = Logger.tagWithPrefix("WorkTimer");
    private final ThreadFactory mBackgroundThreadFactory;
    private final ScheduledExecutorService mExecutorService;
    final Map<String, WorkTimerRunnable> mTimerMap = new HashMap();
    final Map<String, TimeLimitExceededListener> mListeners = new HashMap();
    final Object mLock = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener.class */
    public interface TimeLimitExceededListener {
        void onTimeLimitExceeded(String str);
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable.class */
    public static class WorkTimerRunnable implements Runnable {
        static final String TAG = "WrkTimerRunnable";
        private final String mWorkSpecId;
        private final WorkTimer mWorkTimer;

        WorkTimerRunnable(WorkTimer workTimer, String str) {
            this.mWorkTimer = workTimer;
            this.mWorkSpecId = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mWorkTimer.mLock) {
                if (this.mWorkTimer.mTimerMap.remove(this.mWorkSpecId) != null) {
                    TimeLimitExceededListener remove = this.mWorkTimer.mListeners.remove(this.mWorkSpecId);
                    if (remove != null) {
                        remove.onTimeLimitExceeded(this.mWorkSpecId);
                    }
                } else {
                    Logger.get().debug(TAG, String.format("Timer with %s is already marked as complete.", this.mWorkSpecId), new Throwable[0]);
                }
            }
        }
    }

    public WorkTimer() {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: androidx.work.impl.background.systemalarm.WorkTimer.1
            private int mThreadsCreated = 0;

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                newThread.setName("WorkManager-WorkTimer-thread-" + this.mThreadsCreated);
                this.mThreadsCreated = this.mThreadsCreated + 1;
                return newThread;
            }
        };
        this.mBackgroundThreadFactory = threadFactory;
        this.mExecutorService = Executors.newSingleThreadScheduledExecutor(threadFactory);
    }

    ScheduledExecutorService getExecutorService() {
        return this.mExecutorService;
    }

    Map<String, TimeLimitExceededListener> getListeners() {
        Map<String, TimeLimitExceededListener> map;
        synchronized (this) {
            map = this.mListeners;
        }
        return map;
    }

    Map<String, WorkTimerRunnable> getTimerMap() {
        Map<String, WorkTimerRunnable> map;
        synchronized (this) {
            map = this.mTimerMap;
        }
        return map;
    }

    public void onDestroy() {
        if (!this.mExecutorService.isShutdown()) {
            this.mExecutorService.shutdownNow();
        }
    }

    public void startTimer(String str, long j, TimeLimitExceededListener timeLimitExceededListener) {
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Starting timer for %s", str), new Throwable[0]);
            stopTimer(str);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, str);
            this.mTimerMap.put(str, workTimerRunnable);
            this.mListeners.put(str, timeLimitExceededListener);
            this.mExecutorService.schedule(workTimerRunnable, j, TimeUnit.MILLISECONDS);
        }
    }

    public void stopTimer(String str) {
        synchronized (this.mLock) {
            if (this.mTimerMap.remove(str) != null) {
                Logger.get().debug(TAG, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.mListeners.remove(str);
            }
        }
    }
}
