package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.SlidingPaneLayout;
import android.view.View;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SlidingPaneLayoutPaneOpenedObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable.class */
final class SlidingPaneLayoutPaneOpenedObservable extends InitialValueObservable<Boolean> {
    private final SlidingPaneLayout view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.widget.SlidingPaneLayoutPaneOpenedObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements SlidingPaneLayout.PanelSlideListener {
        private final Observer<? super Boolean> observer;
        private final SlidingPaneLayout view;

        Listener(SlidingPaneLayout slidingPaneLayout, Observer<? super Boolean> observer) {
            this.view = slidingPaneLayout;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setPanelSlideListener(null);
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelClosed(View view) {
            if (!isDisposed()) {
                this.observer.onNext(false);
            }
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelOpened(View view) {
            if (!isDisposed()) {
                this.observer.onNext(true);
            }
        }

        @Override // android.support.p001v4.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelSlide(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlidingPaneLayoutPaneOpenedObservable(SlidingPaneLayout slidingPaneLayout) {
        this.view = slidingPaneLayout;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public Boolean getInitialValue() {
        return Boolean.valueOf(this.view.isOpen());
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super Boolean> observer) {
        Listener listener = new Listener(this.view, observer);
        observer.onSubscribe(listener);
        this.view.setPanelSlideListener(listener);
    }
}
