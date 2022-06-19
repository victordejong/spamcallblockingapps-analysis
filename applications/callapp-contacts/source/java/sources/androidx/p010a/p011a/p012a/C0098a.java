package androidx.p010a.p011a.p012a;

import java.util.concurrent.Executor;
/* renamed from: androidx.a.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/a.class */
public class C0098a extends AbstractC0103c {

    /* renamed from: b */
    private static volatile C0098a f194b;

    /* renamed from: d */
    private static final Executor f195d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            C0098a.m46411a().mo46407b(runnable);
        }
    };

    /* renamed from: e */
    private static final Executor f196e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            C0098a.m46411a().mo46408a(runnable);
        }
    };

    /* renamed from: a */
    public AbstractC0103c f197a;

    /* renamed from: c */
    private AbstractC0103c f198c;

    private C0098a() {
        C0101b c0101b = new C0101b();
        this.f198c = c0101b;
        this.f197a = c0101b;
    }

    /* renamed from: a */
    public static C0098a m46411a() {
        if (f194b != null) {
            return f194b;
        }
        synchronized (C0098a.class) {
            try {
                if (f194b == null) {
                    f194b = new C0098a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f194b;
    }

    /* renamed from: b */
    public static Executor m46410b() {
        return f196e;
    }

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: a */
    public final void mo46408a(Runnable runnable) {
        this.f197a.mo46408a(runnable);
    }

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: b */
    public final void mo46407b(Runnable runnable) {
        this.f197a.mo46407b(runnable);
    }

    @Override // androidx.p010a.p011a.p012a.AbstractC0103c
    /* renamed from: c */
    public final boolean mo46406c() {
        return this.f197a.mo46406c();
    }
}
