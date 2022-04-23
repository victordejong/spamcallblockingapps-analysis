package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.SlidingPaneLayout;
import android.view.View;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SlidingPaneLayoutSlideObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable.class */
final class SlidingPaneLayoutSlideObservable extends Observable<Float> {
    private final SlidingPaneLayout view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SlidingPaneLayoutSlideObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements SlidingPaneLayout.PanelSlideListener {
        private final Observer<? super Float> observer;
        private final SlidingPaneLayout view;

        Listener(SlidingPaneLayout slidingPaneLayout, Observer<? super Float> observer) {
            this.view = slidingPaneLayout;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setPanelSlideListener(null);
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelClosed(View view) {
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelOpened(View view) {
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelSlide(View view, float f) {
            if (!isDisposed()) {
                this.observer.onNext(Float.valueOf(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlidingPaneLayoutSlideObservable(SlidingPaneLayout slidingPaneLayout) {
        this.view = slidingPaneLayout;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Float> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setPanelSlideListener(listener);
        }
    }
}
