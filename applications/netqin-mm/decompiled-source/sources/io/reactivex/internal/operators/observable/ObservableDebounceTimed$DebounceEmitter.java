package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p548e.p552d.C9741f;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter.class */
public final class ObservableDebounceTimed$DebounceEmitter<T> extends AtomicReference<AbstractC9861b> implements Runnable, AbstractC9861b {
    public static final long serialVersionUID = 6812032969491025141L;
    public final long idx;
    public final AtomicBoolean once = new AtomicBoolean();
    public final C9741f<T> parent;
    public final T value;

    public ObservableDebounceTimed$DebounceEmitter(T t, long j, C9741f<T> fVar) {
        this.value = t;
        this.idx = j;
        this.parent = fVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.once.compareAndSet(false, true)) {
            this.parent.m2074a(this.idx, this.value, this);
            throw null;
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.replace(this, bVar);
    }
}
