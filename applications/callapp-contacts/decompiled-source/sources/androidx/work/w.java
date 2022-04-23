package androidx.work;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:androidx/work/w.class */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6246a = k.a("WorkerFactory");

    public static w a() {
        return new w() { // from class: androidx.work.w.1
        };
    }

    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        try {
            cls = Class.forName(str).asSubclass(ListenableWorker.class);
        } catch (Throwable th) {
            k.a().a(f6246a, "Invalid class: ".concat(String.valueOf(str)), th);
            cls = null;
        }
        ListenableWorker listenableWorker = null;
        if (cls != null) {
            try {
                listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                k.a().a(f6246a, "Could not instantiate ".concat(String.valueOf(str)), th2);
                listenableWorker = null;
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
