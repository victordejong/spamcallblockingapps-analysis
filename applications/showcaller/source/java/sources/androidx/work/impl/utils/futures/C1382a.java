package androidx.work.impl.utils.futures;

import com.google.common.util.concurrent.AbstractFutureC8832a;
/* renamed from: androidx.work.impl.utils.futures.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/a.class */
public final class C1382a<V> extends AbstractFuture<V> {
    private C1382a() {
    }

    /* renamed from: u */
    public static <V> C1382a<V> m30184u() {
        return new C1382a<>();
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    /* renamed from: q */
    public boolean mo30187q(V v) {
        return super.mo30187q(v);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    /* renamed from: r */
    public boolean mo30186r(Throwable th) {
        return super.mo30186r(th);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    /* renamed from: s */
    public boolean mo30185s(AbstractFutureC8832a<? extends V> abstractFutureC8832a) {
        return super.mo30185s(abstractFutureC8832a);
    }
}
