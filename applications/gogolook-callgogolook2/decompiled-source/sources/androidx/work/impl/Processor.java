package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/Processor.class */
public class Processor implements ExecutionListener, ForegroundProcessor {
    public static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    public static final String TAG = Logger.tagWithPrefix("Processor");
    public Context mAppContext;
    public Configuration mConfiguration;
    public List<Scheduler> mSchedulers;
    public WorkDatabase mWorkDatabase;
    public TaskExecutor mWorkTaskExecutor;
    public Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    public Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    public Set<String> mCancelledIds = new HashSet();
    public final List<ExecutionListener> mOuterListeners = new ArrayList();
    @Nullable
    public PowerManager.WakeLock mForegroundLock = null;
    public final Object mLock = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/Processor$FutureListener.class */
    public static class FutureListener implements Runnable {
        @NonNull
        public ExecutionListener mExecutionListener;
        @NonNull
        public AbstractFutureC9382a<Boolean> mFuture;
        @NonNull
        public String mWorkSpecId;

        public FutureListener(@NonNull ExecutionListener executionListener, @NonNull String str, @NonNull AbstractFutureC9382a<Boolean> aVar) {
            this.mExecutionListener = executionListener;
            this.mWorkSpecId = str;
            this.mFuture = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = this.mFuture.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.mExecutionListener.onExecuted(this.mWorkSpecId, z);
        }
    }

    public Processor(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> list) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = list;
    }

    public static boolean interrupt(@NonNull String str, @Nullable WorkerWrapper workerWrapper) {
        if (workerWrapper != null) {
            workerWrapper.interrupt();
            Logger.get().debug(TAG, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
            return true;
        }
        Logger.get().debug(TAG, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
        return false;
    }

    private void stopForegroundService() {
        synchronized (this.mLock) {
            if (!(!this.mForegroundWorkMap.isEmpty())) {
                SystemForegroundService instance = SystemForegroundService.getInstance();
                if (instance != null) {
                    Logger.get().debug(TAG, "No more foreground work. Stopping SystemForegroundService", new Throwable[0]);
                    instance.stopForegroundService();
                } else {
                    Logger.get().debug(TAG, "No more foreground work. SystemForegroundService is already stopped", new Throwable[0]);
                }
                if (this.mForegroundLock != null) {
                    this.mForegroundLock.release();
                    this.mForegroundLock = null;
                }
            }
        }
    }

    public void addExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    public boolean hasWork() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mEnqueuedWorkMap.isEmpty() && this.mForegroundWorkMap.isEmpty()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    public boolean isCancelled(@NonNull String str) {
        boolean contains;
        synchronized (this.mLock) {
            contains = this.mCancelledIds.contains(str);
        }
        return contains;
    }

    public boolean isEnqueued(@NonNull String str) {
        boolean z;
        synchronized (this.mLock) {
            if (!this.mEnqueuedWorkMap.containsKey(str) && !this.mForegroundWorkMap.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    public boolean isEnqueuedInForeground(@NonNull String str) {
        boolean containsKey;
        synchronized (this.mLock) {
            containsKey = this.mForegroundWorkMap.containsKey(str);
        }
        return containsKey;
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull String str, boolean z) {
        synchronized (this.mLock) {
            this.mEnqueuedWorkMap.remove(str);
            Logger.get().debug(TAG, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (ExecutionListener executionListener : this.mOuterListeners) {
                executionListener.onExecuted(str, z);
            }
        }
    }

    public void removeExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(@NonNull String str, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            Logger.get().info(TAG, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            WorkerWrapper remove = this.mEnqueuedWorkMap.remove(str);
            if (remove != null) {
                if (this.mForegroundLock == null) {
                    this.mForegroundLock = WakeLocks.newWakeLock(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                    this.mForegroundLock.acquire();
                }
                this.mForegroundWorkMap.put(str, remove);
                ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, str, foregroundInfo));
            }
        }
    }

    public boolean startWork(@NonNull String str) {
        return startWork(str, null);
    }

    public boolean startWork(@NonNull String str, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        synchronized (this.mLock) {
            if (isEnqueued(str)) {
                Logger.get().debug(TAG, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            WorkerWrapper build = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, str).withSchedulers(this.mSchedulers).withRuntimeExtras(runtimeExtras).build();
            AbstractFutureC9382a<Boolean> future = build.getFuture();
            future.addListener(new FutureListener(this, str, future), this.mWorkTaskExecutor.getMainThreadExecutor());
            this.mEnqueuedWorkMap.put(str, build);
            this.mWorkTaskExecutor.getBackgroundExecutor().execute(build);
            Logger.get().debug(TAG, String.format("%s: processing %s", Processor.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    public boolean stopAndCancelWork(@NonNull String str) {
        boolean interrupt;
        synchronized (this.mLock) {
            boolean z = true;
            Logger.get().debug(TAG, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.mCancelledIds.add(str);
            WorkerWrapper remove = this.mForegroundWorkMap.remove(str);
            if (remove == null) {
                z = false;
            }
            WorkerWrapper workerWrapper = remove;
            if (remove == null) {
                workerWrapper = this.mEnqueuedWorkMap.remove(str);
            }
            interrupt = interrupt(str, workerWrapper);
            if (z) {
                stopForegroundService();
            }
        }
        return interrupt;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void stopForeground(@NonNull String str) {
        synchronized (this.mLock) {
            this.mForegroundWorkMap.remove(str);
            stopForegroundService();
        }
    }

    public boolean stopForegroundWork(@NonNull String str) {
        boolean interrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            interrupt = interrupt(str, this.mForegroundWorkMap.remove(str));
        }
        return interrupt;
    }

    public boolean stopWork(@NonNull String str) {
        boolean interrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping background work %s", str), new Throwable[0]);
            interrupt = interrupt(str, this.mEnqueuedWorkMap.remove(str));
        }
        return interrupt;
    }
}
