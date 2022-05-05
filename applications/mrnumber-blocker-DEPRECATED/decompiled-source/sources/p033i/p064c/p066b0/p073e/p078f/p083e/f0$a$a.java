package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.e.f.e.f0;
/* renamed from: i.c.b0.e.f.e.f0$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/f0$a$a.class */
final class f0$a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ f0.a f1101f;

    f0$a$a(f0.a aVar) {
        this.f1101f = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1101f.f.onComplete();
        this.f1101f.i.dispose();
    }
}
