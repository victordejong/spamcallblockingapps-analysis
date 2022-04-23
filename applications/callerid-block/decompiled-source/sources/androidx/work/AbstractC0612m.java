package androidx.work;

import android.content.Context;
/* renamed from: androidx.work.m */
/* loaded from: classes-dex2jar.jar:androidx/work/m.class */
public abstract class AbstractC0612m {

    /* renamed from: a */
    private static final String f3165a = AbstractC0555f.m11738f("WorkerFactory");

    /* renamed from: c */
    public static AbstractC0612m m11576c() {
        return new a();
    }

    /* renamed from: a */
    public abstract ListenableWorker m11578a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m11577b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker a = m11578a(context, str, workerParameters);
        if (a != null) {
            return a;
        }
        try {
            try {
                return (ListenableWorker) Class.forName(str).asSubclass(ListenableWorker.class).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Exception e) {
                AbstractC0555f c = AbstractC0555f.m11741c();
                String str2 = f3165a;
                c.m11742b(str2, "Could not instantiate " + str, e);
                return null;
            }
        } catch (ClassNotFoundException e2) {
            AbstractC0555f c2 = AbstractC0555f.m11741c();
            String str3 = f3165a;
            c2.m11742b(str3, "Class not found: " + str, new Throwable[0]);
            return null;
        }
    }
}
