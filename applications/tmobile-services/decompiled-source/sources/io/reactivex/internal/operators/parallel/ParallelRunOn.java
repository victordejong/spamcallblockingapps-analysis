package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn.class */
public final class ParallelRunOn<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    final ParallelFlowable<? extends T> f18934a;

    /* renamed from: b */
    final Scheduler f18935b;

    /* renamed from: c */
    final int f18936c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber.class */
    static abstract class BaseRunOnSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;

        /* renamed from: f */
        final int f18937f;

        /* renamed from: g */
        final int f18938g;

        /* renamed from: h */
        final SpscArrayQueue<T> f18939h;

        /* renamed from: i */
        final Scheduler.Worker f18940i;

        /* renamed from: j */
        Subscription f18941j;

        /* renamed from: k */
        volatile boolean f18942k;

        /* renamed from: l */
        Throwable f18943l;

        /* renamed from: m */
        final AtomicLong f18944m = new AtomicLong();

        /* renamed from: n */
        volatile boolean f18945n;

        /* renamed from: o */
        int f18946o;

        BaseRunOnSubscriber(int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            this.f18937f = i;
            this.f18939h = spscArrayQueue;
            this.f18938g = i - (i >> 2);
            this.f18940i = worker;
        }

        /* renamed from: a */
        final void m3596a() {
            if (getAndIncrement() == 0) {
                this.f18940i.mo3229b(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (!this.f18945n) {
                this.f18945n = true;
                this.f18941j.cancel();
                this.f18940i.dispose();
                if (getAndIncrement() == 0) {
                    this.f18939h.clear();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (!this.f18942k) {
                this.f18942k = true;
                m3596a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.f18942k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18943l = th;
            this.f18942k = true;
            m3596a();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (!this.f18942k) {
                if (!this.f18939h.offer(t)) {
                    this.f18941j.cancel();
                    onError(new MissingBackpressureException("Queue is full?!"));
                    return;
                }
                m3596a();
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f18944m, j);
                m3596a();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback.class */
    final class MultiWorkerCallback implements SchedulerMultiWorkerSupport.WorkerCallback {

        /* renamed from: a */
        final Subscriber<? super T>[] f18947a;

        /* renamed from: b */
        final Subscriber<T>[] f18948b;

        MultiWorkerCallback(Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2) {
            this.f18947a = subscriberArr;
            this.f18948b = subscriberArr2;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport.WorkerCallback
        /* renamed from: a */
        public void mo3512a(int i, Scheduler.Worker worker) {
            ParallelRunOn.this.m3597d(i, this.f18947a, this.f18948b, worker);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber.class */
    public static final class RunOnConditionalSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;

        /* renamed from: p */
        final ConditionalSubscriber<? super T> f18950p;

        RunOnConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.f18950p = conditionalSubscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18941j, subscription)) {
                this.f18941j = subscription;
                this.f18950p.onSubscribe(this);
                subscription.request(this.f18937f);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00dd, code lost:
            if (r0 != 0) goto L_0x012b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00e4, code lost:
            if (r5.f18945n == false) goto L_0x00ec;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e7, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00eb, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00f0, code lost:
            if (r5.f18942k == false) goto L_0x012b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00f3, code lost:
            r0 = r5.f18943l;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
            if (r0 == null) goto L_0x0114;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00fe, code lost:
            r0.clear();
            r0.onError(r0);
            r5.f18940i.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0113, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0118, code lost:
            if (r0.isEmpty() == false) goto L_0x012b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x011b, code lost:
            r0.onComplete();
            r5.f18940i.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x012a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x012f, code lost:
            if (r13 == 0) goto L_0x0146;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0138, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x0146;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x013b, code lost:
            r5.f18944m.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0146, code lost:
            r0 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0150, code lost:
            if (r0 != r10) goto L_0x016b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0153, code lost:
            r5.f18946o = r6;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0167, code lost:
            if (r0 != 0) goto L_0x0018;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x016a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x016b, code lost:
            r10 = r0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 370
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelRunOn.RunOnConditionalSubscriber.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber.class */
    public static final class RunOnSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;

        /* renamed from: p */
        final Subscriber<? super T> f18951p;

        RunOnSubscriber(Subscriber<? super T> subscriber, int i, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i, spscArrayQueue, worker);
            this.f18951p = subscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18941j, subscription)) {
                this.f18941j = subscription;
                this.f18951p.onSubscribe(this);
                subscription.request(this.f18937f);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00d6, code lost:
            if (r0 != 0) goto L_0x0124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00dd, code lost:
            if (r5.f18945n == false) goto L_0x00e5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00e0, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e4, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e9, code lost:
            if (r5.f18942k == false) goto L_0x0124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ec, code lost:
            r0 = r5.f18943l;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00f4, code lost:
            if (r0 == null) goto L_0x010d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00f7, code lost:
            r0.clear();
            r0.onError(r0);
            r5.f18940i.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x010c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0111, code lost:
            if (r0.isEmpty() == false) goto L_0x0124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0114, code lost:
            r0.onComplete();
            r5.f18940i.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0123, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0128, code lost:
            if (r13 == 0) goto L_0x013f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0131, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x013f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0134, code lost:
            r5.f18944m.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x013f, code lost:
            r0 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0149, code lost:
            if (r0 != r10) goto L_0x0164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x014c, code lost:
            r5.f18946o = r6;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0160, code lost:
            if (r0 != 0) goto L_0x0018;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0163, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0164, code lost:
            r10 = r0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 363
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelRunOn.RunOnSubscriber.run():void");
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18934a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<T>[] subscriberArr2 = new Subscriber[length];
            Scheduler scheduler = this.f18935b;
            if (scheduler instanceof SchedulerMultiWorkerSupport) {
                ((SchedulerMultiWorkerSupport) scheduler).mo3513a(length, new MultiWorkerCallback(subscriberArr, subscriberArr2));
            } else {
                for (int i = 0; i < length; i++) {
                    m3597d(i, subscriberArr, subscriberArr2, this.f18935b.mo3232b());
                }
            }
            this.f18934a.mo3378b(subscriberArr2);
        }
    }

    /* renamed from: d */
    void m3597d(int i, Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2, Scheduler.Worker worker) {
        Subscriber<? super T> subscriber = subscriberArr[i];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f18936c);
        if (subscriber instanceof ConditionalSubscriber) {
            subscriberArr2[i] = new RunOnConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18936c, spscArrayQueue, worker);
        } else {
            subscriberArr2[i] = new RunOnSubscriber(subscriber, this.f18936c, spscArrayQueue, worker);
        }
    }
}
