package com.jakewharton.rxbinding2.view;

import android.view.MotionEvent;
import android.view.View;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
import io.reactivex.functions.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewHoverObservable.class */
public final class ViewHoverObservable extends Observable<MotionEvent> {
    private final Predicate<? super MotionEvent> handled;
    private final View view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewHoverObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements View.OnHoverListener {
        private final Predicate<? super MotionEvent> handled;
        private final Observer<? super MotionEvent> observer;
        private final View view;

        Listener(View view, Predicate<? super MotionEvent> predicate, Observer<? super MotionEvent> observer) {
            this.view = view;
            this.handled = predicate;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnHoverListener(null);
        }

        @Override // android.view.View.OnHoverListener
        public boolean onHover(View view, MotionEvent motionEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.handled.test(motionEvent)) {
                    return false;
                }
                this.observer.onNext(motionEvent);
                return true;
            } catch (Exception e) {
                this.observer.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewHoverObservable(View view, Predicate<? super MotionEvent> predicate) {
        this.view = view;
        this.handled = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super MotionEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, this.handled, observer);
            observer.onSubscribe(listener);
            this.view.setOnHoverListener(listener);
        }
    }
}
