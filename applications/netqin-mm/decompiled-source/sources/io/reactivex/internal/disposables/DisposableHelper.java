package io.reactivex.internal.disposables;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/DisposableHelper.class */
public enum DisposableHelper implements AbstractC9861b {
    DISPOSED;

    public static boolean dispose(AtomicReference<AbstractC9861b> atomicReference) {
        AbstractC9861b andSet;
        AbstractC9861b bVar = atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (bVar == disposableHelper || (andSet = atomicReference.getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    public static boolean isDisposed(AbstractC9861b bVar) {
        return bVar == DISPOSED;
    }

    public static boolean replace(AtomicReference<AbstractC9861b> atomicReference, AbstractC9861b bVar) {
        AbstractC9861b bVar2;
        do {
            bVar2 = atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar == null) {
                    return false;
                }
                bVar.dispose();
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        return true;
    }

    public static void reportDisposableSet() {
        C9815a.m1923b(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean set(AtomicReference<AbstractC9861b> atomicReference, AbstractC9861b bVar) {
        AbstractC9861b bVar2;
        do {
            bVar2 = atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar == null) {
                    return false;
                }
                bVar.dispose();
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        if (bVar2 == null) {
            return true;
        }
        bVar2.dispose();
        return true;
    }

    public static boolean setOnce(AtomicReference<AbstractC9861b> atomicReference, AbstractC9861b bVar) {
        C9650a.m2095a(bVar, "d is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        reportDisposableSet();
        return false;
    }

    public static boolean trySet(AtomicReference<AbstractC9861b> atomicReference, AbstractC9861b bVar) {
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        if (atomicReference.get() != DISPOSED) {
            return false;
        }
        bVar.dispose();
        return false;
    }

    public static boolean validate(AbstractC9861b bVar, AbstractC9861b bVar2) {
        if (bVar2 == null) {
            C9815a.m1923b(new NullPointerException("next is null"));
            return false;
        } else if (bVar == null) {
            return true;
        } else {
            bVar2.dispose();
            reportDisposableSet();
            return false;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return true;
    }
}
