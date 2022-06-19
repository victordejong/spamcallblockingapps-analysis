package androidx.work;

import android.content.Context;
/* renamed from: androidx.work.s */
/* loaded from: classes-dex2jar.jar:androidx/work/s.class */
public abstract class AbstractC1421s {

    /* renamed from: a */
    private static final String f5756a = AbstractC1404j.m30159f("WorkerFactory");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/s$a.class */
    public class C1422a extends AbstractC1421s {
        C1422a() {
        }

        @Override // androidx.work.AbstractC1421s
        /* renamed from: a */
        public ListenableWorker mo30130a(Context context, String str, WorkerParameters workerParameters) {
            return null;
        }
    }

    /* renamed from: c */
    public static AbstractC1421s m30131c() {
        return new C1422a();
    }

    /* renamed from: a */
    public abstract ListenableWorker mo30130a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m30132b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker mo30130a = mo30130a(context, str, workerParameters);
        ListenableWorker listenableWorker = mo30130a;
        if (mo30130a == null) {
            Class cls = null;
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                AbstractC1404j.m30161c().mo30157b(f5756a, "Invalid class: " + str, th);
            }
            listenableWorker = mo30130a;
            if (cls != null) {
                try {
                    listenableWorker = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    AbstractC1404j.m30161c().mo30157b(f5756a, "Could not instantiate " + str, th2);
                    listenableWorker = mo30130a;
                }
            }
        }
        if (listenableWorker == null || !listenableWorker.isUsed()) {
            return listenableWorker;
        }
        throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
    }
}
