package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/AbstractObservableWithUpstream.class */
abstract class AbstractObservableWithUpstream<T, U> extends Observable<U> implements HasUpstreamObservableSource<T> {

    /* renamed from: f */
    protected final ObservableSource<T> f17497f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractObservableWithUpstream(ObservableSource<T> observableSource) {
        this.f17497f = observableSource;
    }
}
