package io.reactivex.flowables;

import io.reactivex.Flowable;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:io/reactivex/flowables/ConnectableFlowable.class */
public abstract class ConnectableFlowable<T> extends Flowable<T> {
    /* renamed from: C */
    public abstract void mo4105C(@NonNull Consumer<? super Disposable> consumer);
}
