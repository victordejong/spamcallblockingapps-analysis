package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Notification;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.DisposableSubscriber;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableNext.class */
public final class BlockingFlowableNext<T> implements Iterable<T> {

    /* renamed from: f */
    final Publisher<? extends T> f15431f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator.class */
    static final class NextIterator<T> implements Iterator<T> {

        /* renamed from: f */
        private final NextSubscriber<T> f15432f;

        /* renamed from: g */
        private final Publisher<? extends T> f15433g;

        /* renamed from: h */
        private T f15434h;

        /* renamed from: i */
        private boolean f15435i = true;

        /* renamed from: j */
        private boolean f15436j = true;

        /* renamed from: k */
        private Throwable f15437k;

        /* renamed from: l */
        private boolean f15438l;

        NextIterator(Publisher<? extends T> publisher, NextSubscriber<T> nextSubscriber) {
            this.f15433g = publisher;
            this.f15432f = nextSubscriber;
        }

        /* renamed from: a */
        private boolean m4315a() {
            try {
                if (!this.f15438l) {
                    this.f15438l = true;
                    this.f15432f.m4313d();
                    Flowable.m4507g(this.f15433g).m4504j().m4493v(this.f15432f);
                }
                Notification<T> e = this.f15432f.m4312e();
                if (e.m4477h()) {
                    this.f15436j = false;
                    this.f15434h = e.m4480e();
                    return true;
                }
                this.f15435i = false;
                if (e.m4479f()) {
                    return false;
                }
                if (e.m4478g()) {
                    Throwable d = e.m4481d();
                    this.f15437k = d;
                    throw ExceptionHelper.m3434e(d);
                }
                throw new IllegalStateException("Should not reach here");
            } catch (InterruptedException e2) {
                this.f15432f.dispose();
                this.f15437k = e2;
                throw ExceptionHelper.m3434e(e2);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f15437k;
            if (th == null) {
                boolean z = false;
                if (!this.f15435i) {
                    return false;
                }
                if (!this.f15436j || m4315a()) {
                    z = true;
                }
                return z;
            }
            throw ExceptionHelper.m3434e(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f15437k;
            if (th != null) {
                throw ExceptionHelper.m3434e(th);
            } else if (hasNext()) {
                this.f15436j = true;
                return this.f15434h;
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
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber.class */
    public static final class NextSubscriber<T> extends DisposableSubscriber<Notification<T>> {

        /* renamed from: g */
        private final BlockingQueue<Notification<T>> f15439g = new ArrayBlockingQueue(1);

        /* renamed from: h */
        final AtomicInteger f15440h = new AtomicInteger();

        NextSubscriber() {
        }

        /* renamed from: c */
        public void onNext(Notification<T> notification) {
            Notification<T> notification2 = notification;
            if (this.f15440h.getAndSet(0) != 1) {
                if (!notification.m4477h()) {
                    notification2 = notification;
                } else {
                    return;
                }
            }
            while (!this.f15439g.offer(notification2)) {
                Notification<T> poll = this.f15439g.poll();
                if (poll != null && !poll.m4477h()) {
                    notification2 = poll;
                }
            }
        }

        /* renamed from: d */
        void m4313d() {
            this.f15440h.set(1);
        }

        /* renamed from: e */
        public Notification<T> m4312e() throws InterruptedException {
            m4313d();
            BlockingHelper.m3447b();
            return this.f15439g.take();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            RxJavaPlugins.m3354t(th);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new NextIterator(this.f15431f, new NextSubscriber());
    }
}
