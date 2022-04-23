package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.NestedScrollView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import com.jakewharton.rxbinding2.view.ViewScrollChangeEvent;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.NestedScrollViewScrollChangeEventObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable.class */
final class NestedScrollViewScrollChangeEventObservable extends Observable<ViewScrollChangeEvent> {
    private final NestedScrollView view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.widget.NestedScrollViewScrollChangeEventObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements NestedScrollView.OnScrollChangeListener {
        private final Observer<? super ViewScrollChangeEvent> observer;
        private final NestedScrollView view;

        Listener(NestedScrollView nestedScrollView, Observer<? super ViewScrollChangeEvent> observer) {
            this.view = nestedScrollView;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnScrollChangeListener((NestedScrollView.OnScrollChangeListener) null);
        }

        @Override // android.support.p001v4.widget.NestedScrollView.OnScrollChangeListener
        public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            if (!isDisposed()) {
                this.observer.onNext(ViewScrollChangeEvent.create(this.view, i, i2, i3, i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NestedScrollViewScrollChangeEventObservable(NestedScrollView nestedScrollView) {
        this.view = nestedScrollView;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super ViewScrollChangeEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setOnScrollChangeListener(listener);
        }
    }
}
