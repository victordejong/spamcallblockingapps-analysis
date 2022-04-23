package io.reactivex.observables;

import io.reactivex.Observable;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.operators.observable.ObservablePublishAlt;
import io.reactivex.internal.operators.observable.ObservablePublishClassic;
import io.reactivex.internal.operators.observable.ObservableRefCount;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observables/ConnectableObservable.class */
public abstract class ConnectableObservable<T> extends Observable<T> {
    /* renamed from: e */
    private ConnectableObservable<T> m3393e() {
        return this instanceof ObservablePublishClassic ? RxJavaPlugins.m3357q(new ObservablePublishAlt(((ObservablePublishClassic) this).mo3748c())) : this;
    }

    /* renamed from: d */
    public abstract void mo3394d(@NonNull Consumer<? super Disposable> consumer);

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public Observable<T> m3392f() {
        return RxJavaPlugins.m3360n(new ObservableRefCount(m3393e()));
    }
}
