package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.DrawerLayout;
import android.view.View;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.DrawerLayoutDrawerOpenedObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable.class */
final class DrawerLayoutDrawerOpenedObservable extends InitialValueObservable<Boolean> {
    private final int gravity;
    private final DrawerLayout view;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.widget.DrawerLayoutDrawerOpenedObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements DrawerLayout.DrawerListener {
        private final int gravity;
        private final Observer<? super Boolean> observer;
        private final DrawerLayout view;

        Listener(DrawerLayout drawerLayout, int i, Observer<? super Boolean> observer) {
            this.view = drawerLayout;
            this.gravity = i;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.removeDrawerListener(this);
        }

        @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
            if (!isDisposed() && ((DrawerLayout.LayoutParams) view.getLayoutParams()).gravity == this.gravity) {
                this.observer.onNext(false);
            }
        }

        @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
            if (!isDisposed() && ((DrawerLayout.LayoutParams) view.getLayoutParams()).gravity == this.gravity) {
                this.observer.onNext(true);
            }
        }

        @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DrawerLayoutDrawerOpenedObservable(DrawerLayout drawerLayout, int i) {
        this.view = drawerLayout;
        this.gravity = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public Boolean getInitialValue() {
        return Boolean.valueOf(this.view.isDrawerOpen(this.gravity));
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super Boolean> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, this.gravity, observer);
            observer.onSubscribe(listener);
            this.view.addDrawerListener(listener);
        }
    }
}
