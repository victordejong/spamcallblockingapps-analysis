package androidx.work.impl.utils.futures;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$c.class */
final class AbstractFuture$c {

    /* renamed from: c */
    static final AbstractFuture$c f3131c;

    /* renamed from: d */
    static final AbstractFuture$c f3132d;

    /* renamed from: a */
    final boolean f3133a;

    /* renamed from: b */
    final Throwable f3134b;

    static {
        if (AbstractFuture.e) {
            f3132d = null;
            f3131c = null;
            return;
        }
        f3132d = new AbstractFuture$c(false, null);
        f3131c = new AbstractFuture$c(true, null);
    }

    AbstractFuture$c(boolean z, Throwable th) {
        this.f3133a = z;
        this.f3134b = th;
    }
}
