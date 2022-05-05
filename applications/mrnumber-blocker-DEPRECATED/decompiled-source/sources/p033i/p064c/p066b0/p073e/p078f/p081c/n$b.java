package p033i.p064c.p066b0.p073e.p078f.p081c;

import p033i.p064c.p066b0.p070b.AbstractC0469r;
import p033i.p064c.p066b0.p070b.AbstractC0471t;
/* renamed from: i.c.b0.e.f.c.n$b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/c/n$b.class */
final class n$b<T> implements Runnable {

    /* renamed from: f */
    final AbstractC0469r<? super T> f1082f;

    /* renamed from: g */
    final AbstractC0471t<T> f1083g;

    n$b(AbstractC0469r<? super T> rVar, AbstractC0471t<T> tVar) {
        this.f1082f = rVar;
        this.f1083g = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1083g.m80a(this.f1082f);
    }
}
