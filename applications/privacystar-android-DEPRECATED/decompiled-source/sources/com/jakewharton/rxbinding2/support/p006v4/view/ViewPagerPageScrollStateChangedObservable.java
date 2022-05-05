package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.p001v4.view.ViewPager;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.ViewPagerPageScrollStateChangedObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable.class */
final class ViewPagerPageScrollStateChangedObservable extends Observable<Integer> {
    private final ViewPager view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.view.ViewPagerPageScrollStateChangedObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements ViewPager.OnPageChangeListener {
        private final Observer<? super Integer> observer;
        private final ViewPager view;

        Listener(ViewPager viewPager, Observer<? super Integer> observer) {
            this.view = viewPager;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            if (!isDisposed()) {
                this.view.removeOnPageChangeListener(this);
            }
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (!isDisposed()) {
                this.observer.onNext(Integer.valueOf(i));
            }
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPagerPageScrollStateChangedObservable(ViewPager viewPager) {
        this.view = viewPager;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Integer> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.addOnPageChangeListener(listener);
        }
    }
}
