package androidx.work;

import android.content.Context;
/* renamed from: androidx.work.w */
/* loaded from: classes-dex2jar.jar:androidx/work/w.class */
public abstract class AbstractC3168w {

    /* renamed from: a */
    private static final String f11527a = AbstractC3145k.m39275a("WorkerFactory");

    /* renamed from: a */
    public static AbstractC3168w m39253a() {
        return new AbstractC3168w() { // from class: androidx.work.w.1
        };
    }

    /* renamed from: a */
    public final ListenableWorker m39252a(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        try {
            cls = Class.forName(str).asSubclass(ListenableWorker.class);
        } catch (Throwable th) {
            AbstractC3145k.m39277a().mo39273a(f11527a, "Invalid class: ".concat(String.valueOf(str)), th);
            cls = null;
        }
        ListenableWorker listenableWorker = null;
        if (cls != null) {
            try {
                listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                AbstractC3145k.m39277a().mo39273a(f11527a, "Could not instantiate ".concat(String.valueOf(str)), th2);
                listenableWorker = null;
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
