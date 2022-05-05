package com.jakewharton.rxbinding2.view;

import android.view.DragEvent;
import android.view.View;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
import io.reactivex.functions.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewDragObservable.class */
public final class ViewDragObservable extends Observable<DragEvent> {
    private final Predicate<? super DragEvent> handled;
    private final View view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewDragObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements View.OnDragListener {
        private final Predicate<? super DragEvent> handled;
        private final Observer<? super DragEvent> observer;
        private final View view;

        Listener(View view, Predicate<? super DragEvent> predicate, Observer<? super DragEvent> observer) {
            this.view = view;
            this.handled = predicate;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnDragListener(null);
        }

        @Override // android.view.View.OnDragListener
        public boolean onDrag(View view, DragEvent dragEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.handled.test(dragEvent)) {
                    return false;
                }
                this.observer.onNext(dragEvent);
                return true;
            } catch (Exception e) {
                this.observer.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewDragObservable(View view, Predicate<? super DragEvent> predicate) {
        this.view = view;
        this.handled = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super DragEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, this.handled, observer);
            observer.onSubscribe(listener);
            this.view.setOnDragListener(listener);
        }
    }
}
