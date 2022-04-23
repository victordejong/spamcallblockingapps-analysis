package io.reactivex.internal.operators.single;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCache.class */
public final class SingleCache<T> extends AbstractC9850t<T> implements AbstractC9851u<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCache$CacheDisposable.class */
    public static final class CacheDisposable<T> extends AtomicBoolean implements AbstractC9861b {
        public static final long serialVersionUID = 7514387411091976596L;
        public final AbstractC9851u<? super T> actual;
        public final SingleCache<T> parent;

        public CacheDisposable(AbstractC9851u<? super T> uVar, SingleCache<T> singleCache) {
            this.actual = uVar;
            this.parent = singleCache;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.m232a((CacheDisposable) this);
                throw null;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get();
        }
    }

    /* renamed from: a */
    public void m232a(CacheDisposable<T> cacheDisposable) {
        throw null;
    }
}
