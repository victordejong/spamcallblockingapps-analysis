package androidx.p002a.p003a.p004a;

import java.util.concurrent.Executor;
/* renamed from: androidx.a.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/a.class */
public class C0030a extends AbstractC0035c {

    /* renamed from: a */
    private static volatile C0030a f62a;

    /* renamed from: d */
    private static final Executor f63d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0030a.m8021a().mo8017b(runnable);
        }
    };

    /* renamed from: e */
    private static final Executor f64e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0030a.m8021a().mo8018a(runnable);
        }
    };

    /* renamed from: c */
    private AbstractC0035c f66c = new C0033b();

    /* renamed from: b */
    private AbstractC0035c f65b = this.f66c;

    private C0030a() {
    }

    /* renamed from: a */
    public static C0030a m8021a() {
        if (f62a != null) {
            return f62a;
        }
        synchronized (C0030a.class) {
            try {
                if (f62a == null) {
                    f62a = new C0030a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f62a;
    }

    /* renamed from: b */
    public static Executor m8020b() {
        return f64e;
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: a */
    public void mo8018a(Runnable runnable) {
        this.f65b.mo8018a(runnable);
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: b */
    public void mo8017b(Runnable runnable) {
        this.f65b.mo8017b(runnable);
    }

    @Override // androidx.p002a.p003a.p004a.AbstractC0035c
    /* renamed from: c */
    public boolean mo8016c() {
        return this.f65b.mo8016c();
    }
}
