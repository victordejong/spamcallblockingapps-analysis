package io.reactivex.internal.operators.observable;

import io.reactivex.Notification;
import io.reactivex.ObservableSource;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableNext.class */
public final class BlockingObservableNext<T> implements Iterable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17514f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableNext$NextIterator.class */
    static final class NextIterator<T> implements Iterator<T> {

        /* renamed from: f */
        private final NextObserver<T> f17515f;

        /* renamed from: g */
        private final ObservableSource<T> f17516g;

        /* renamed from: h */
        private T f17517h;

        /* renamed from: i */
        private boolean f17518i = true;

        /* renamed from: j */
        private boolean f17519j = true;

        /* renamed from: k */
        private Throwable f17520k;

        /* renamed from: l */
        private boolean f17521l;

        NextIterator(ObservableSource<T> observableSource, NextObserver<T> nextObserver) {
            this.f17516g = observableSource;
            this.f17515f = nextObserver;
        }

        /* renamed from: a */
        private boolean m3910a() {
            if (!this.f17521l) {
                this.f17521l = true;
                this.f17515f.m3908c();
                new ObservableMaterialize(this.f17516g).subscribe(this.f17515f);
            }
            try {
                Notification<T> d = this.f17515f.m3907d();
                if (d.m4477h()) {
                    this.f17519j = false;
                    this.f17517h = d.m4480e();
                    return true;
                }
                this.f17518i = false;
                if (d.m4479f()) {
                    return false;
                }
                Throwable d2 = d.m4481d();
                this.f17520k = d2;
                throw ExceptionHelper.m3434e(d2);
            } catch (InterruptedException e) {
                this.f17515f.dispose();
                this.f17520k = e;
                throw ExceptionHelper.m3434e(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f17520k;
            if (th == null) {
                boolean z = false;
                if (!this.f17518i) {
                    return false;
                }
                if (!this.f17519j || m3910a()) {
                    z = true;
                }
                return z;
            }
            throw ExceptionHelper.m3434e(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f17520k;
            if (th != null) {
                throw ExceptionHelper.m3434e(th);
            } else if (hasNext()) {
                this.f17519j = true;
                return this.f17517h;
            } else {
                throw new NoSuchElementException("No more elements");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver.class */
    public static final class NextObserver<T> extends DisposableObserver<Notification<T>> {

        /* renamed from: g */
        private final BlockingQueue<Notification<T>> f17522g = new ArrayBlockingQueue(1);

        /* renamed from: h */
        final AtomicInteger f17523h = new AtomicInteger();

        NextObserver() {
        }

        /* renamed from: b */
        public void onNext(Notification<T> notification) {
            Notification<T> notification2 = notification;
            if (this.f17523h.getAndSet(0) != 1) {
                if (!notification.m4477h()) {
                    notification2 = notification;
                } else {
                    return;
                }
            }
            while (!this.f17522g.offer(notification2)) {
                Notification<T> poll = this.f17522g.poll();
                if (poll != null && !poll.m4477h()) {
                    notification2 = poll;
                }
            }
        }

        /* renamed from: c */
        void m3908c() {
            this.f17523h.set(1);
        }

        /* renamed from: d */
        public Notification<T> m3907d() throws InterruptedException {
            m3908c();
            BlockingHelper.m3447b();
            return this.f17522g.take();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            RxJavaPlugins.m3354t(th);
        }
    }

    public BlockingObservableNext(ObservableSource<T> observableSource) {
        this.f17514f = observableSource;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new NextIterator(this.f17514f, new NextObserver());
    }
}
