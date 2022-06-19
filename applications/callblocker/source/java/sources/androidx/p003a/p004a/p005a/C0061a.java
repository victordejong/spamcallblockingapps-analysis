package androidx.p003a.p004a.p005a;

import java.util.concurrent.Executor;
/* renamed from: androidx.a.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/a.class */
public class C0061a extends AbstractC0066c {

    /* renamed from: a */
    private static volatile C0061a f152a;

    /* renamed from: d */
    private static final Executor f153d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0061a.m22313a().mo22309b(runnable);
        }
    };

    /* renamed from: e */
    private static final Executor f154e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0061a.m22313a().mo22310a(runnable);
        }
    };

    /* renamed from: c */
    private AbstractC0066c f156c = new C0064b();

    /* renamed from: b */
    private AbstractC0066c f155b = this.f156c;

    private C0061a() {
    }

    /* renamed from: a */
    public static C0061a m22313a() {
        C0061a c0061a;
        if (f152a != null) {
            c0061a = f152a;
        } else {
            synchronized (C0061a.class) {
                try {
                    if (f152a == null) {
                        f152a = new C0061a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c0061a = f152a;
        }
        return c0061a;
    }

    /* renamed from: b */
    public static Executor m22312b() {
        return f154e;
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: a */
    public void mo22310a(Runnable runnable) {
        this.f155b.mo22310a(runnable);
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: b */
    public void mo22309b(Runnable runnable) {
        this.f155b.mo22309b(runnable);
    }

    @Override // androidx.p003a.p004a.p005a.AbstractC0066c
    /* renamed from: c */
    public boolean mo22308c() {
        return this.f155b.mo22308c();
    }
}
