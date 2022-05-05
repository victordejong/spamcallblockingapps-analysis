package androidx.media2.session.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/session/futures/ResolvableFuture.class */
public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    public static <V> ResolvableFuture<V> create() {
        return new ResolvableFuture<>();
    }

    @Override // androidx.media2.session.futures.AbstractResolvableFuture
    public boolean set(@Nullable V v) {
        return super.set(v);
    }

    @Override // androidx.media2.session.futures.AbstractResolvableFuture
    public boolean setException(Throwable th) {
        return super.setException(th);
    }

    @Override // androidx.media2.session.futures.AbstractResolvableFuture
    public boolean setFuture(AbstractFutureC9382a<? extends V> aVar) {
        return super.setFuture(aVar);
    }
}
