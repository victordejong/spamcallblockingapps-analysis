package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$b.class */
final class f0$a$b implements Runnable {

    /* renamed from: f */
    private final Throwable f1102f;

    /* renamed from: g */
    final /* synthetic */ f0.a f1103g;

    f0$a$b(f0.a aVar, Throwable th) {
        this.f1103g = aVar;
        this.f1102f = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1103g.f.onError(this.f1102f);
        this.f1103g.i.dispose();
    }
}
