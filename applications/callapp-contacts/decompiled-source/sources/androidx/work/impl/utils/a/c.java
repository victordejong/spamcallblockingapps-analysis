package androidx.work.impl.utils.a;

import com.google.common.util.concurrent.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/c.class */
public final class c<V> extends a<V> {
    private c() {
    }

    public static <V> c<V> a() {
        return new c<>();
    }

    @Override // androidx.work.impl.utils.a.a
    public final boolean a(a<? extends V> aVar) {
        return super.a((a) aVar);
    }

    @Override // androidx.work.impl.utils.a.a
    public final boolean a(V v) {
        return super.a((c<V>) v);
    }

    @Override // androidx.work.impl.utils.a.a
    public final boolean a(Throwable th) {
        return super.a(th);
    }
}
