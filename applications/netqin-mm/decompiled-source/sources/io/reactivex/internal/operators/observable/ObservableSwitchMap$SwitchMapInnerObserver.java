package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver.class */
public final class ObservableSwitchMap$SwitchMapInnerObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<R> {
    public static final long serialVersionUID = 3837284832786408377L;
    public final int bufferSize;
    public volatile boolean done;
    public final long index;
    public final ObservableSwitchMap$SwitchMapObserver<T, R> parent;
    public volatile AbstractC9661j<R> queue;

    public ObservableSwitchMap$SwitchMapInnerObserver(ObservableSwitchMap$SwitchMapObserver<T, R> observableSwitchMap$SwitchMapObserver, long j, int i) {
        this.parent = observableSwitchMap$SwitchMapObserver;
        this.index = j;
        this.bufferSize = i;
    }

    public void cancel() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.index == this.parent.unique) {
            this.done = true;
            this.parent.drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.parent.innerError(this, th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(R r) {
        if (this.index == this.parent.unique) {
            if (r != null) {
                this.queue.offer(r);
            }
            this.parent.drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.queue = eVar;
                    this.done = true;
                    this.parent.drain();
                    return;
                } else if (requestFusion == 2) {
                    this.queue = eVar;
                    return;
                }
            }
            this.queue = new C9772a(this.bufferSize);
        }
    }
}
