package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.subscribers.DefaultSubscriber;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableMostRecent.class */
public final class BlockingFlowableMostRecent<T> implements Iterable<T> {

    /* renamed from: f */
    final Flowable<T> f15426f;

    /* renamed from: g */
    final T f15427g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber.class */
    static final class MostRecentSubscriber<T> extends DefaultSubscriber<T> {

        /* renamed from: g */
        volatile Object f15428g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator.class */
        public final class Iterator implements java.util.Iterator<T> {

            /* renamed from: f */
            private Object f15429f;

            Iterator() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = MostRecentSubscriber.this.f15428g;
                this.f15429f = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f15429f == null) {
                        this.f15429f = MostRecentSubscriber.this.f15428g;
                    }
                    if (NotificationLite.isComplete(this.f15429f)) {
                        throw new NoSuchElementException();
                    } else if (!NotificationLite.isError(this.f15429f)) {
                        return (T) NotificationLite.getValue(this.f15429f);
                    } else {
                        throw ExceptionHelper.m3434e(NotificationLite.getError(this.f15429f));
                    }
                } finally {
                    this.f15429f = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        MostRecentSubscriber(T t) {
            this.f15428g = NotificationLite.next(t);
        }

        /* renamed from: c */
        public MostRecentSubscriber<T>.Iterator m4316c() {
            return new Iterator();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15428g = NotificationLite.complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15428g = NotificationLite.error(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15428g = NotificationLite.next(t);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        MostRecentSubscriber mostRecentSubscriber = new MostRecentSubscriber(this.f15427g);
        this.f15426f.m4493v(mostRecentSubscriber);
        return mostRecentSubscriber.m4316c();
    }
}
