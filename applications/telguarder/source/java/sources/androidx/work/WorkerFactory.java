package androidx.work;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerFactory.class */
public abstract class WorkerFactory {
    private static final String TAG = Logger.tagWithPrefix("WorkerFactory");

    public static WorkerFactory getDefaultWorkerFactory() {
        return new WorkerFactory() { // from class: androidx.work.WorkerFactory.1
            @Override // androidx.work.WorkerFactory
            public ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters) {
                return null;
            }
        };
    }

    public abstract ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters);

    public final ListenableWorker createWorkerWithDefaultFallback(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker createWorker = createWorker(context, str, workerParameters);
        if (createWorker != null) {
            return createWorker;
        }
        try {
            try {
                return (ListenableWorker) Class.forName(str).asSubclass(ListenableWorker.class).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Exception e) {
                Logger logger = Logger.get();
                String str2 = TAG;
                logger.error(str2, "Could not instantiate " + str, e);
                return null;
            }
        } catch (ClassNotFoundException e2) {
            Logger logger2 = Logger.get();
            String str3 = TAG;
            logger2.error(str3, "Class not found: " + str, new Throwable[0]);
            return null;
        }
    }
}
