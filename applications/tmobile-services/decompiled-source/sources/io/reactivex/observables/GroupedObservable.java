package io.reactivex.observables;

import io.reactivex.Observable;
import io.reactivex.annotations.Nullable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observables/GroupedObservable.class */
public abstract class GroupedObservable<K, T> extends Observable<T> {

    /* renamed from: f */
    final K f19437f;

    /* JADX INFO: Access modifiers changed from: protected */
    public GroupedObservable(@Nullable K k) {
        this.f19437f = k;
    }
}
