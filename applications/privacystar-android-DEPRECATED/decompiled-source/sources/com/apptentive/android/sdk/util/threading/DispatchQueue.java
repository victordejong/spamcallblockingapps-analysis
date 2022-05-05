package com.apptentive.android.sdk.util.threading;

import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/DispatchQueue.class */
public abstract class DispatchQueue {
    private static final MainQueueChecker MAIN_QUEUE_CHECKER = new MainQueueChecker() { // from class: com.apptentive.android.sdk.util.threading.DispatchQueue.1
        @Override // com.apptentive.android.sdk.util.threading.DispatchQueue.MainQueueChecker
        public boolean isMainQueue() {
            return Looper.getMainLooper() == Looper.myLooper();
        }
    };
    private final String name;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/DispatchQueue$Holder.class */
    public static class Holder {
        private static final DispatchQueue MAIN_QUEUE = createMainQueue();
        private static final DispatchQueue BACKGROUND_QUEUE = createBackgroundQueue();

        private Holder() {
        }

        private static DispatchQueue createBackgroundQueue() {
            return new ConcurrentDispatchQueue("Apptentive Background Queue");
        }

        private static DispatchQueue createMainQueue() {
            try {
                return new SerialDispatchQueue(Looper.getMainLooper(), "Main");
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/DispatchQueue$MainQueueChecker.class */
    public interface MainQueueChecker {
        boolean isMainQueue();
    }

    public DispatchQueue(String str) {
        this.name = str;
    }

    public static DispatchQueue backgroundQueue() {
        return Holder.BACKGROUND_QUEUE;
    }

    public static DispatchQueue createBackgroundQueue(String str, DispatchQueueType dispatchQueueType) {
        if (dispatchQueueType == DispatchQueueType.Serial) {
            return new SerialDispatchQueue(str);
        }
        if (dispatchQueueType == DispatchQueueType.Concurrent) {
            return new ConcurrentDispatchQueue(str);
        }
        throw new IllegalArgumentException("Unexpected queue type: " + dispatchQueueType);
    }

    public static boolean isMainQueue() {
        return MAIN_QUEUE_CHECKER.isMainQueue();
    }

    public static DispatchQueue mainQueue() {
        return Holder.MAIN_QUEUE;
    }

    protected abstract void dispatch(DispatchTask dispatchTask, long j);

    public void dispatchAsync(DispatchTask dispatchTask) {
        dispatchAsync(dispatchTask, 0L);
    }

    public void dispatchAsync(DispatchTask dispatchTask, long j) {
        dispatchTask.setScheduled(true);
        dispatch(dispatchTask, j);
    }

    public boolean dispatchAsyncOnce(DispatchTask dispatchTask) {
        return dispatchAsyncOnce(dispatchTask, 0L);
    }

    public boolean dispatchAsyncOnce(DispatchTask dispatchTask, long j) {
        if (dispatchTask.isScheduled()) {
            return false;
        }
        dispatchAsync(dispatchTask, j);
        return true;
    }

    public String getName() {
        return this.name;
    }

    public abstract boolean isCurrent();

    public abstract void stop();
}
