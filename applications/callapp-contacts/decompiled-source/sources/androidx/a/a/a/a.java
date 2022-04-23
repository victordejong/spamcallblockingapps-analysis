package androidx.a.a.a;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/a.class */
public class a extends c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f488b;

    /* renamed from: d  reason: collision with root package name */
    private static final Executor f489d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };
    private static final Executor e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public c f490a;

    /* renamed from: c  reason: collision with root package name */
    private c f491c;

    private a() {
        b bVar = new b();
        this.f491c = bVar;
        this.f490a = bVar;
    }

    public static a a() {
        if (f488b != null) {
            return f488b;
        }
        synchronized (a.class) {
            try {
                if (f488b == null) {
                    f488b = new a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f488b;
    }

    public static Executor b() {
        return e;
    }

    @Override // androidx.a.a.a.c
    public final void a(Runnable runnable) {
        this.f490a.a(runnable);
    }

    @Override // androidx.a.a.a.c
    public final void b(Runnable runnable) {
        this.f490a.b(runnable);
    }

    @Override // androidx.a.a.a.c
    public final boolean c() {
        return this.f490a.c();
    }
}
