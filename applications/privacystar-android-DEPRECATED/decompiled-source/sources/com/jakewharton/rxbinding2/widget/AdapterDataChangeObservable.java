package com.jakewharton.rxbinding2.widget;

import android.database.DataSetObserver;
import android.widget.Adapter;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterDataChangeObservable.class */
final class AdapterDataChangeObservable<T extends Adapter> extends InitialValueObservable<T> {
    private final T adapter;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterDataChangeObservable$ObserverDisposable.class */
    static final class ObserverDisposable<T extends Adapter> extends MainThreadDisposable {
        private final T adapter;
        private final DataSetObserver dataSetObserver;

        ObserverDisposable(final T t, final Observer<? super T> observer) {
            this.adapter = t;
            this.dataSetObserver = new DataSetObserver() { // from class: com.jakewharton.rxbinding2.widget.AdapterDataChangeObservable.ObserverDisposable.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    if (!ObserverDisposable.this.isDisposed()) {
                        observer.onNext(t);
                    }
                }
            };
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.adapter.unregisterDataSetObserver(this.dataSetObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterDataChangeObservable(T t) {
        this.adapter = t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public T getInitialValue() {
        return this.adapter;
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super T> observer) {
        if (Preconditions.checkMainThread(observer)) {
            ObserverDisposable observerDisposable = new ObserverDisposable(this.adapter, observer);
            this.adapter.registerDataSetObserver(observerDisposable.dataSetObserver);
            observer.onSubscribe(observerDisposable);
        }
    }
}
