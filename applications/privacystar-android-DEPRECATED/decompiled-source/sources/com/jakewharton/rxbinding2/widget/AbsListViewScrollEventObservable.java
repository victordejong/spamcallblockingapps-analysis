package com.jakewharton.rxbinding2.widget;

import android.widget.AbsListView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AbsListViewScrollEventObservable.class */
final class AbsListViewScrollEventObservable extends Observable<AbsListViewScrollEvent> {
    private final AbsListView view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AbsListViewScrollEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements AbsListView.OnScrollListener {
        private int currentScrollState = 0;
        private final Observer<? super AbsListViewScrollEvent> observer;
        private final AbsListView view;

        Listener(AbsListView absListView, Observer<? super AbsListViewScrollEvent> observer) {
            this.view = absListView;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnScrollListener(null);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (!isDisposed()) {
                this.observer.onNext(AbsListViewScrollEvent.create(this.view, this.currentScrollState, i, i2, i3));
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            this.currentScrollState = i;
            if (!isDisposed()) {
                this.observer.onNext(AbsListViewScrollEvent.create(this.view, i, this.view.getFirstVisiblePosition(), this.view.getChildCount(), this.view.getCount()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbsListViewScrollEventObservable(AbsListView absListView) {
        this.view = absListView;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super AbsListViewScrollEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setOnScrollListener(listener);
        }
    }
}
