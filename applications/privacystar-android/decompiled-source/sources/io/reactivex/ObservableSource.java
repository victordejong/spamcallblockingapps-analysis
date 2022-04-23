package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/ObservableSource.class */
public interface ObservableSource<T> {
    void subscribe(@NonNull Observer<? super T> observer);
}
