package io.reactivex.internal.util;

import io.reactivex.Observer;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ObservableQueueDrain.class */
public interface ObservableQueueDrain<T, U> {
    void accept(Observer<? super U> observer, T t);

    boolean cancelled();

    boolean done();

    boolean enter();

    Throwable error();

    int leave(int i);
}
