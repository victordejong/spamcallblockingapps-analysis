package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.observers.DefaultObserver;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableMostRecent.class */
public final class BlockingObservableMostRecent<T> implements Iterable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17509f;

    /* renamed from: g */
    final T f17510g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver.class */
    static final class MostRecentObserver<T> extends DefaultObserver<T> {

        /* renamed from: g */
        volatile Object f17511g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator.class */
        public final class Iterator implements java.util.Iterator<T> {

            /* renamed from: f */
            private Object f17512f;

            Iterator() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = MostRecentObserver.this.f17511g;
                this.f17512f = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f17512f == null) {
                        this.f17512f = MostRecentObserver.this.f17511g;
                    }
                    if (NotificationLite.isComplete(this.f17512f)) {
                        throw new NoSuchElementException();
                    } else if (!NotificationLite.isError(this.f17512f)) {
                        return (T) NotificationLite.getValue(this.f17512f);
                    } else {
                        throw ExceptionHelper.m3434e(NotificationLite.getError(this.f17512f));
                    }
                } finally {
                    this.f17512f = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        MostRecentObserver(T t) {
            this.f17511g = NotificationLite.next(t);
        }

        /* renamed from: b */
        public MostRecentObserver<T>.Iterator m3911b() {
            return new Iterator();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17511g = NotificationLite.complete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17511g = NotificationLite.error(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17511g = NotificationLite.next(t);
        }
    }

    public BlockingObservableMostRecent(ObservableSource<T> observableSource, T t) {
        this.f17509f = observableSource;
        this.f17510g = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        MostRecentObserver mostRecentObserver = new MostRecentObserver(this.f17510g);
        this.f17509f.subscribe(mostRecentObserver);
        return mostRecentObserver.m3911b();
    }
}
