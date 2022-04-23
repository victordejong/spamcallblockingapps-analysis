package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/ArrayCompositeDisposable.class */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<AbstractC9861b> implements AbstractC9861b {
    public static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i) {
        super(i);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC9861b andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                AbstractC9861b bVar = get(i);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (!(bVar == disposableHelper || (andSet = getAndSet(i, disposableHelper)) == DisposableHelper.DISPOSED || andSet == null)) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        boolean z = false;
        if (get(0) == DisposableHelper.DISPOSED) {
            z = true;
        }
        return z;
    }

    public AbstractC9861b replaceResource(int i, AbstractC9861b bVar) {
        AbstractC9861b bVar2;
        do {
            bVar2 = get(i);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return null;
            }
        } while (!compareAndSet(i, bVar2, bVar));
        return bVar2;
    }

    public boolean setResource(int i, AbstractC9861b bVar) {
        AbstractC9861b bVar2;
        do {
            bVar2 = get(i);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return false;
            }
        } while (!compareAndSet(i, bVar2, bVar));
        if (bVar2 == null) {
            return true;
        }
        bVar2.dispose();
        return true;
    }
}
