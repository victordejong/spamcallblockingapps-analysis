package io.reactivex.internal.operators.single;

import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable.class */
public enum SingleInternalHelper$NoSuchElementCallable implements Callable<NoSuchElementException> {
    INSTANCE;

    @Override // java.util.concurrent.Callable
    public NoSuchElementException call() throws Exception {
        return new NoSuchElementException();
    }
}
