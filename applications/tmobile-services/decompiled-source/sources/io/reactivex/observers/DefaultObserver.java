package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.EndConsumerHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DefaultObserver.class */
public abstract class DefaultObserver<T> implements Observer<T> {

    /* renamed from: f */
    private Disposable f19445f;

    /* renamed from: a */
    protected void m3391a() {
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3440e(this.f19445f, disposable, getClass())) {
            this.f19445f = disposable;
            m3391a();
        }
    }
}
