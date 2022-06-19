package androidx.work;

import android.content.Context;
/* renamed from: androidx.work.v */
/* loaded from: classes-dex2jar.jar:androidx/work/v.class */
public abstract class AbstractC1313v {

    /* renamed from: a */
    private static final String f4362a = AbstractC1293l.m17541a("WorkerFactory");

    /* renamed from: a */
    public static AbstractC1313v m17521a() {
        return new AbstractC1313v() { // from class: androidx.work.v.1
            @Override // androidx.work.AbstractC1313v
            /* renamed from: a */
            public ListenableWorker mo17519a(Context context, String str, WorkerParameters workerParameters) {
                return null;
            }
        };
    }

    /* renamed from: a */
    public abstract ListenableWorker mo17519a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m17520b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker listenableWorker;
        ListenableWorker mo17519a = mo17519a(context, str, workerParameters);
        if (mo17519a == null) {
            Class cls = null;
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (ClassNotFoundException e) {
                AbstractC1293l.m17543a().mo17536e(f4362a, "Class not found: " + str, new Throwable[0]);
            }
            if (cls != null) {
                try {
                    listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Exception e2) {
                    AbstractC1293l.m17543a().mo17536e(f4362a, "Could not instantiate " + str, e2);
                }
                if (listenableWorker == null && listenableWorker.m17973g()) {
                    throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
                }
                return listenableWorker;
            }
        }
        listenableWorker = mo17519a;
        if (listenableWorker == null) {
        }
        return listenableWorker;
    }
}
