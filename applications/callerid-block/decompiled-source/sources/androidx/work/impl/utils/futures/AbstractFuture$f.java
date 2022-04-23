package androidx.work.impl.utils.futures;

import e.c.b.a.a.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$f.class */
final class AbstractFuture$f<V> implements Runnable {

    /* renamed from: b */
    final AbstractFuture<V> f3139b;

    /* renamed from: c */
    final a<? extends V> f3140c;

    AbstractFuture$f(AbstractFuture<V> abstractFuture, a<? extends V> aVar) {
        this.f3139b = abstractFuture;
        this.f3140c = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3139b.b == this) {
            if (AbstractFuture.g.m11603b(this.f3139b, this, AbstractFuture.k(this.f3140c))) {
                AbstractFuture.g(this.f3139b);
            }
        }
    }
}
