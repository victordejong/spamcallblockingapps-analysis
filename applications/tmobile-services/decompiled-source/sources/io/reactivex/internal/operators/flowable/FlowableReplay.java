package io.reactivex.internal.operators.flowable;

import com.google.android.gms.common.api.Api;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.subscribers.SubscriberResourceWrapper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Timed;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay.class */
public final class FlowableReplay<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T>, ResettableConnectable {

    /* renamed from: k */
    static final Callable f16399k = new DefaultUnboundedFactory();

    /* renamed from: g */
    final Flowable<T> f16400g;

    /* renamed from: h */
    final AtomicReference<ReplaySubscriber<T>> f16401h;

    /* renamed from: i */
    final Callable<? extends ReplayBuffer<T>> f16402i;

    /* renamed from: j */
    final Publisher<T> f16403j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer.class */
    static class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* renamed from: f */
        Node f16404f;

        /* renamed from: g */
        int f16405g;

        /* renamed from: h */
        long f16406h;

        BoundedReplayBuffer() {
            Node node = new Node(null, 0L);
            this.f16404f = node;
            set(node);
        }

        /* renamed from: a */
        final void m4109a(Node node) {
            this.f16404f.set(node);
            this.f16404f = node;
            this.f16405g++;
        }

        /* renamed from: b */
        Object mo4096b(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: c */
        public final void mo4091c() {
            Object b = mo4096b(NotificationLite.complete());
            long j = this.f16406h + 1;
            this.f16406h = j;
            m4109a(new Node(b, j));
            mo4093m();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: d */
        public final void mo4090d(T t) {
            Object b = mo4096b(NotificationLite.next(t));
            long j = this.f16406h + 1;
            this.f16406h = j;
            m4109a(new Node(b, j));
            mo4092l();
        }

        /* renamed from: e */
        Node mo4095e() {
            return get();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: f */
        public final void mo4089f(Throwable th) {
            Object b = mo4096b(NotificationLite.error(th));
            long j = this.f16406h + 1;
            this.f16406h = j;
            m4109a(new Node(b, j));
            mo4093m();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: g */
        public final void mo4088g(InnerSubscription<T> innerSubscription) {
            Node node;
            synchronized (innerSubscription) {
                if (innerSubscription.f16413j) {
                    innerSubscription.f16414k = true;
                    return;
                }
                innerSubscription.f16413j = true;
                while (!innerSubscription.isDisposed()) {
                    long j = innerSubscription.get();
                    boolean z = j == Long.MAX_VALUE;
                    Node node2 = (Node) innerSubscription.m4104a();
                    Node node3 = node2;
                    if (node2 == null) {
                        node3 = mo4095e();
                        innerSubscription.f16411h = node3;
                        BackpressureHelper.m3454a(innerSubscription.f16412i, node3.f16419g);
                    }
                    long j2 = 0;
                    while (j != 0 && (node = node3.get()) != null) {
                        Object h = mo4094h(node.f16418f);
                        try {
                            if (NotificationLite.accept(h, innerSubscription.f16410g)) {
                                innerSubscription.f16411h = null;
                                return;
                            }
                            j2++;
                            j--;
                            if (innerSubscription.isDisposed()) {
                                innerSubscription.f16411h = null;
                                return;
                            }
                            node3 = node;
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            innerSubscription.f16411h = null;
                            innerSubscription.dispose();
                            if (!NotificationLite.isError(h) && !NotificationLite.isComplete(h)) {
                                innerSubscription.f16410g.onError(th);
                                return;
                            }
                            return;
                        }
                    }
                    if (j2 != 0) {
                        innerSubscription.f16411h = node3;
                        if (!z) {
                            innerSubscription.m4103b(j2);
                        }
                    }
                    synchronized (innerSubscription) {
                        if (!innerSubscription.f16414k) {
                            innerSubscription.f16413j = false;
                            return;
                        }
                        innerSubscription.f16414k = false;
                    }
                }
                innerSubscription.f16411h = null;
            }
        }

        /* renamed from: h */
        Object mo4094h(Object obj) {
            return obj;
        }

        /* renamed from: i */
        final void m4108i() {
            Node node = get().get();
            if (node != null) {
                this.f16405g--;
                m4107j(node);
                return;
            }
            throw new IllegalStateException("Empty list!");
        }

        /* renamed from: j */
        final void m4107j(Node node) {
            set(node);
        }

        /* renamed from: k */
        final void m4106k() {
            Node node = get();
            if (node.f16418f != null) {
                Node node2 = new Node(null, 0L);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        /* renamed from: l */
        void mo4092l() {
        }

        /* renamed from: m */
        void mo4093m() {
            m4106k();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay.class */
    static final class ConnectableFlowableReplay<T> extends ConnectableFlowable<T> {

        /* renamed from: g */
        private final ConnectableFlowable<T> f16407g;

        /* renamed from: h */
        private final Flowable<T> f16408h;

        @Override // io.reactivex.flowables.ConnectableFlowable
        /* renamed from: C */
        public void mo4105C(Consumer<? super Disposable> consumer) {
            this.f16407g.mo4105C(consumer);
        }

        @Override // io.reactivex.Flowable
        /* renamed from: w */
        protected void mo3305w(Subscriber<? super T> subscriber) {
            this.f16408h.mo5c(subscriber);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$DefaultUnboundedFactory.class */
    static final class DefaultUnboundedFactory implements Callable<Object> {
        DefaultUnboundedFactory() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription.class */
    public static final class InnerSubscription<T> extends AtomicLong implements Subscription, Disposable {
        private static final long serialVersionUID = -4453897557930727610L;

        /* renamed from: f */
        final ReplaySubscriber<T> f16409f;

        /* renamed from: g */
        final Subscriber<? super T> f16410g;

        /* renamed from: h */
        Object f16411h;

        /* renamed from: i */
        final AtomicLong f16412i = new AtomicLong();

        /* renamed from: j */
        boolean f16413j;

        /* renamed from: k */
        boolean f16414k;

        InnerSubscription(ReplaySubscriber<T> replaySubscriber, Subscriber<? super T> subscriber) {
            this.f16409f = replaySubscriber;
            this.f16410g = subscriber;
        }

        /* renamed from: a */
        <U> U m4104a() {
            return (U) this.f16411h;
        }

        /* renamed from: b */
        public long m4103b(long j) {
            return BackpressureHelper.m3449f(this, j);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f16409f.m4098c(this);
                this.f16409f.m4099b();
                this.f16411h = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j) && BackpressureHelper.m3453b(this, j) != Long.MIN_VALUE) {
                BackpressureHelper.m3454a(this.f16412i, j);
                this.f16409f.m4099b();
                this.f16409f.f16425f.mo4088g(this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable.class */
    static final class MulticastFlowable<R, U> extends Flowable<R> {

        /* renamed from: g */
        private final Callable<? extends ConnectableFlowable<U>> f16415g;

        /* renamed from: h */
        private final Function<? super Flowable<U>, ? extends Publisher<R>> f16416h;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$MulticastFlowable$DisposableConsumer.class */
        final class DisposableConsumer implements Consumer<Disposable> {

            /* renamed from: f */
            private final SubscriberResourceWrapper<R> f16417f;

            DisposableConsumer(MulticastFlowable multicastFlowable, SubscriberResourceWrapper<R> subscriberResourceWrapper) {
                this.f16417f = subscriberResourceWrapper;
            }

            /* renamed from: a */
            public void accept(Disposable disposable) {
                this.f16417f.m3471a(disposable);
            }
        }

        @Override // io.reactivex.Flowable
        /* renamed from: w */
        protected void mo3305w(Subscriber<? super R> subscriber) {
            try {
                Object call = this.f16415g.call();
                ObjectHelper.m4363e(call, "The connectableFactory returned null");
                ConnectableFlowable connectableFlowable = (ConnectableFlowable) call;
                try {
                    Object apply = this.f16416h.apply(connectableFlowable);
                    ObjectHelper.m4363e(apply, "The selector returned a null Publisher");
                    Publisher publisher = (Publisher) apply;
                    SubscriberResourceWrapper subscriberResourceWrapper = new SubscriberResourceWrapper(subscriber);
                    publisher.mo5c(subscriberResourceWrapper);
                    connectableFlowable.mo4105C(new DisposableConsumer(this, subscriberResourceWrapper));
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    EmptySubscription.error(th, subscriber);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                EmptySubscription.error(th2, subscriber);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$Node.class */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;

        /* renamed from: f */
        final Object f16418f;

        /* renamed from: g */
        final long f16419g;

        Node(Object obj, long j) {
            this.f16418f = obj;
            this.f16419g = j;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer.class */
    interface ReplayBuffer<T> {
        /* renamed from: c */
        void mo4091c();

        /* renamed from: d */
        void mo4090d(T t);

        /* renamed from: f */
        void mo4089f(Throwable th);

        /* renamed from: g */
        void mo4088g(InnerSubscription<T> innerSubscription);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ReplayBufferTask.class */
    public static final class ReplayBufferTask<T> implements Callable<ReplayBuffer<T>> {

        /* renamed from: f */
        private final int f16420f;

        ReplayBufferTask(int i) {
            this.f16420f = i;
        }

        /* renamed from: a */
        public ReplayBuffer<T> call() {
            return new SizeBoundReplayBuffer(this.f16420f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ReplayPublisher.class */
    public static final class ReplayPublisher<T> implements Publisher<T> {

        /* renamed from: f */
        private final AtomicReference<ReplaySubscriber<T>> f16421f;

        /* renamed from: g */
        private final Callable<? extends ReplayBuffer<T>> f16422g;

        ReplayPublisher(AtomicReference<ReplaySubscriber<T>> atomicReference, Callable<? extends ReplayBuffer<T>> callable) {
            this.f16421f = atomicReference;
            this.f16422g = callable;
        }

        @Override // org.reactivestreams.Publisher
        /* renamed from: c */
        public void mo5c(Subscriber<? super T> subscriber) {
            ReplaySubscriber<T> replaySubscriber;
            do {
                ReplaySubscriber<T> replaySubscriber2 = this.f16421f.get();
                replaySubscriber = replaySubscriber2;
                if (replaySubscriber2 != null) {
                    break;
                }
                try {
                    replaySubscriber = new ReplaySubscriber<>((ReplayBuffer) this.f16422g.call());
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    EmptySubscription.error(th, subscriber);
                    return;
                }
            } while (!this.f16421f.compareAndSet(null, replaySubscriber));
            InnerSubscription<T> innerSubscription = new InnerSubscription<>(replaySubscriber, subscriber);
            subscriber.onSubscribe(innerSubscription);
            replaySubscriber.m4100a(innerSubscription);
            if (innerSubscription.isDisposed()) {
                replaySubscriber.m4098c(innerSubscription);
                return;
            }
            replaySubscriber.m4099b();
            replaySubscriber.f16425f.mo4088g(innerSubscription);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber.class */
    public static final class ReplaySubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: m */
        static final InnerSubscription[] f16423m = new InnerSubscription[0];

        /* renamed from: n */
        static final InnerSubscription[] f16424n = new InnerSubscription[0];
        private static final long serialVersionUID = 7224554242710036740L;

        /* renamed from: f */
        final ReplayBuffer<T> f16425f;

        /* renamed from: g */
        boolean f16426g;

        /* renamed from: k */
        long f16430k;

        /* renamed from: l */
        long f16431l;

        /* renamed from: j */
        final AtomicInteger f16429j = new AtomicInteger();

        /* renamed from: h */
        final AtomicReference<InnerSubscription<T>[]> f16427h = new AtomicReference<>(f16423m);

        /* renamed from: i */
        final AtomicBoolean f16428i = new AtomicBoolean();

        ReplaySubscriber(ReplayBuffer<T> replayBuffer) {
            this.f16425f = replayBuffer;
        }

        /* renamed from: a */
        boolean m4100a(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription<T>[] innerSubscriptionArr2;
            if (innerSubscription != null) {
                do {
                    innerSubscriptionArr = this.f16427h.get();
                    if (innerSubscriptionArr == f16424n) {
                        return false;
                    }
                    int length = innerSubscriptionArr.length;
                    innerSubscriptionArr2 = new InnerSubscription[length + 1];
                    System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                    innerSubscriptionArr2[length] = innerSubscription;
                } while (!this.f16427h.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
                return true;
            }
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3, types: [long] */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Unknown variable types count: 4 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4099b() {
            /*
                Method dump skipped, instructions count: 219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableReplay.ReplaySubscriber.m4099b():void");
        }

        /* renamed from: c */
        void m4098c(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription<T>[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.f16427h.get();
                int length = innerSubscriptionArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriptionArr[i2].equals(innerSubscription)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriptionArr2 = f16423m;
                        } else {
                            innerSubscriptionArr2 = new InnerSubscription[length - 1];
                            System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, i);
                            System.arraycopy(innerSubscriptionArr, i + 1, innerSubscriptionArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.f16427h.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16427h.set(f16424n);
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16427h.get() == f16424n;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16426g) {
                this.f16426g = true;
                this.f16425f.mo4091c();
                for (InnerSubscription<T> innerSubscription : this.f16427h.getAndSet(f16424n)) {
                    this.f16425f.mo4088g(innerSubscription);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f16426g) {
                this.f16426g = true;
                this.f16425f.mo4089f(th);
                for (InnerSubscription<T> innerSubscription : this.f16427h.getAndSet(f16424n)) {
                    this.f16425f.mo4088g(innerSubscription);
                }
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16426g) {
                this.f16425f.mo4090d(t);
                for (InnerSubscription<T> innerSubscription : this.f16427h.get()) {
                    this.f16425f.mo4088g(innerSubscription);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                m4099b();
                for (InnerSubscription<T> innerSubscription : this.f16427h.get()) {
                    this.f16425f.mo4088g(innerSubscription);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ScheduledReplayBufferTask.class */
    public static final class ScheduledReplayBufferTask<T> implements Callable<ReplayBuffer<T>> {

        /* renamed from: f */
        private final int f16432f;

        /* renamed from: g */
        private final long f16433g;

        /* renamed from: h */
        private final TimeUnit f16434h;

        /* renamed from: i */
        private final Scheduler f16435i;

        ScheduledReplayBufferTask(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f16432f = i;
            this.f16433g = j;
            this.f16434h = timeUnit;
            this.f16435i = scheduler;
        }

        /* renamed from: a */
        public ReplayBuffer<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.f16432f, this.f16433g, this.f16434h, this.f16435i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer.class */
    public static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* renamed from: i */
        final Scheduler f16436i;

        /* renamed from: j */
        final long f16437j;

        /* renamed from: k */
        final TimeUnit f16438k;

        /* renamed from: l */
        final int f16439l;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f16436i = scheduler;
            this.f16439l = i;
            this.f16437j = j;
            this.f16438k = timeUnit;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: b */
        Object mo4096b(Object obj) {
            return new Timed(obj, this.f16436i.mo3231c(this.f16438k), this.f16438k);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: e */
        Node mo4095e() {
            long c = this.f16436i.mo3231c(this.f16438k);
            long j = this.f16437j;
            Node node = get();
            Node node2 = node.get();
            while (node2 != null) {
                Timed timed = (Timed) node2.f16418f;
                if (NotificationLite.isComplete(timed.m3225b()) || NotificationLite.isError(timed.m3225b()) || timed.m3226a() > c - j) {
                    break;
                }
                node2 = node2.get();
                node = node2;
            }
            return node;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: h */
        Object mo4094h(Object obj) {
            return ((Timed) obj).m3225b();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: l */
        void mo4092l() {
            long c = this.f16436i.mo3231c(this.f16438k);
            long j = this.f16437j;
            Node node = get();
            Node node2 = node.get();
            int i = 0;
            while (node2 != null) {
                int i2 = this.f16405g;
                if (i2 <= this.f16439l || i2 <= 1) {
                    if (((Timed) node2.f16418f).m3226a() > c - j) {
                        break;
                    }
                    i++;
                    this.f16405g--;
                    node2 = node2.get();
                    node = node2;
                } else {
                    i++;
                    this.f16405g = i2 - 1;
                    node2 = node2.get();
                    node = node2;
                }
            }
            if (i != 0) {
                m4107j(node);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: m */
        void mo4093m() {
            long c = this.f16436i.mo3231c(this.f16438k);
            long j = this.f16437j;
            Node node = get();
            Node node2 = node.get();
            int i = 0;
            while (node2 != null && this.f16405g > 1 && ((Timed) node2.f16418f).m3226a() <= c - j) {
                i++;
                this.f16405g--;
                node2 = node2.get();
                node = node2;
            }
            if (i != 0) {
                m4107j(node);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer.class */
    public static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* renamed from: i */
        final int f16440i;

        SizeBoundReplayBuffer(int i) {
            this.f16440i = i;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /* renamed from: l */
        void mo4092l() {
            if (this.f16405g > this.f16440i) {
                m4108i();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: f */
        volatile int f16441f;

        UnboundedReplayBuffer(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: c */
        public void mo4091c() {
            add(NotificationLite.complete());
            this.f16441f++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: d */
        public void mo4090d(T t) {
            add(NotificationLite.next(t));
            this.f16441f++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: f */
        public void mo4089f(Throwable th) {
            add(NotificationLite.error(th));
            this.f16441f++;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo4088g(io.reactivex.internal.operators.flowable.FlowableReplay.InnerSubscription<T> r6) {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableReplay.UnboundedReplayBuffer.mo4088g(io.reactivex.internal.operators.flowable.FlowableReplay$InnerSubscription):void");
        }
    }

    private FlowableReplay(Publisher<T> publisher, Flowable<T> flowable, AtomicReference<ReplaySubscriber<T>> atomicReference, Callable<? extends ReplayBuffer<T>> callable) {
        this.f16403j = publisher;
        this.f16400g = flowable;
        this.f16401h = atomicReference;
        this.f16402i = callable;
    }

    /* renamed from: D */
    public static <T> ConnectableFlowable<T> m4114D(Flowable<T> flowable, int i) {
        return i == Integer.MAX_VALUE ? m4110H(flowable) : m4111G(flowable, new ReplayBufferTask(i));
    }

    /* renamed from: E */
    public static <T> ConnectableFlowable<T> m4113E(Flowable<T> flowable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return m4112F(flowable, j, timeUnit, scheduler, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: F */
    public static <T> ConnectableFlowable<T> m4112F(Flowable<T> flowable, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        return m4111G(flowable, new ScheduledReplayBufferTask(i, j, timeUnit, scheduler));
    }

    /* renamed from: G */
    static <T> ConnectableFlowable<T> m4111G(Flowable<T> flowable, Callable<? extends ReplayBuffer<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.m3358p(new FlowableReplay(new ReplayPublisher(atomicReference, callable), flowable, atomicReference, callable));
    }

    /* renamed from: H */
    public static <T> ConnectableFlowable<T> m4110H(Flowable<? extends T> flowable) {
        return m4111G(flowable, f16399k);
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    /* renamed from: C */
    public void mo4105C(Consumer<? super Disposable> consumer) {
        ReplaySubscriber<T> replaySubscriber;
        ReplaySubscriber<T> replaySubscriber2;
        do {
            replaySubscriber = this.f16401h.get();
            if (replaySubscriber != null) {
                replaySubscriber2 = replaySubscriber;
                if (!replaySubscriber.isDisposed()) {
                    break;
                }
            }
            try {
                replaySubscriber2 = new ReplaySubscriber<>((ReplayBuffer) this.f16402i.call());
            } finally {
                Exceptions.m4428b(th);
                RuntimeException e = ExceptionHelper.m3434e(th);
            }
        } while (!this.f16401h.compareAndSet(replaySubscriber, replaySubscriber2));
        boolean z = !replaySubscriber2.f16428i.get() && replaySubscriber2.f16428i.compareAndSet(false, true);
        try {
            consumer.accept(replaySubscriber2);
            if (z) {
                this.f16400g.m4493v(replaySubscriber2);
            }
        } catch (Throwable th) {
            if (z) {
                replaySubscriber2.f16428i.compareAndSet(true, false);
            }
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    /* renamed from: b */
    public void mo3733b(Disposable disposable) {
        this.f16401h.compareAndSet((ReplaySubscriber) disposable, null);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f16403j.mo5c(subscriber);
    }
}
