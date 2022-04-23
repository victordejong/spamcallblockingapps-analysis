package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.SwipeRefreshLayout;
import com.jakewharton.rxbinding2.internal.Notification;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SwipeRefreshLayoutRefreshObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable.class */
final class SwipeRefreshLayoutRefreshObservable extends Observable<Object> {
    private final SwipeRefreshLayout view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SwipeRefreshLayoutRefreshObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements SwipeRefreshLayout.OnRefreshListener {
        private final Observer<? super Object> observer;
        private final SwipeRefreshLayout view;

        Listener(SwipeRefreshLayout swipeRefreshLayout, Observer<? super Object> observer) {
            this.view = swipeRefreshLayout;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnRefreshListener(null);
        }

        @Override // android.support.p001v4.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            if (!isDisposed()) {
                this.observer.onNext(Notification.INSTANCE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SwipeRefreshLayoutRefreshObservable(SwipeRefreshLayout swipeRefreshLayout) {
        this.view = swipeRefreshLayout;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Object> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setOnRefreshListener(listener);
        }
    }
}
