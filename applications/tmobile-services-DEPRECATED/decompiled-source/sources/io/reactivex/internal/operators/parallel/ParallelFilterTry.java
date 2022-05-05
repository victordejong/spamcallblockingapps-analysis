package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilterTry.class */
public final class ParallelFilterTry<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    final ParallelFlowable<T> f18827a;

    /* renamed from: b */
    final Predicate<? super T> f18828b;

    /* renamed from: c */
    final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18829c;

    /* renamed from: io.reactivex.internal.operators.parallel.ParallelFilterTry$1 */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilterTry$1.class */
    static /* synthetic */ class C21211 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18830a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f18830a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18830a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18830a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber.class */
    public static abstract class BaseFilterSubscriber<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final Predicate<? super T> f18831f;

        /* renamed from: g */
        final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18832g;

        /* renamed from: h */
        Subscription f18833h;

        /* renamed from: i */
        boolean f18834i;

        BaseFilterSubscriber(Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            this.f18831f = predicate;
            this.f18832g = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f18833h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (!mo3605p(t) && !this.f18834i) {
                this.f18833h.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            this.f18833h.request(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber.class */
    static final class ParallelFilterConditionalSubscriber<T> extends BaseFilterSubscriber<T> {

        /* renamed from: j */
        final ConditionalSubscriber<? super T> f18835j;

        ParallelFilterConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            super(predicate, biFunction);
            this.f18835j = conditionalSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18834i) {
                this.f18834i = true;
                this.f18835j.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18834i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18834i = true;
            this.f18835j.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18833h, subscription)) {
                this.f18833h = subscription;
                this.f18835j.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo3605p(T r9) {
            /*
                r8 = this;
                r0 = r8
                boolean r0 = r0.f18834i
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r10
                if (r0 != 0) goto L_0x00ba
                r0 = 0
                r12 = r0
            L_0x000e:
                r0 = r8
                io.reactivex.functions.Predicate<? super T> r0 = r0.f18831f     // Catch: all -> 0x0034
                r1 = r9
                boolean r0 = r0.mo3191a(r1)     // Catch: all -> 0x0034
                r14 = r0
                r0 = r11
                r10 = r0
                r0 = r14
                if (r0 == 0) goto L_0x0032
                r0 = r11
                r10 = r0
                r0 = r8
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r0 = r0.f18835j
                r1 = r9
                boolean r0 = r0.mo3605p(r1)
                if (r0 == 0) goto L_0x0032
                r0 = 1
                r10 = r0
            L_0x0032:
                r0 = r10
                return r0
            L_0x0034:
                r15 = move-exception
                r0 = r15
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18832g     // Catch: all -> 0x0099
                r16 = r0
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r12 = r0
                r0 = r16
                r1 = r12
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x0099
                r2 = r15
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x0099
                r16 = r0
                r0 = r16
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x0099
                r0 = r16
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x0099
                r16 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelFilterTry.C21211.f18830a     // Catch: all -> 0x0099
                r1 = r16
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r17 = r0
                r0 = r17
                r1 = 1
                if (r0 == r1) goto L_0x000e
                r0 = r17
                r1 = 2
                if (r0 == r1) goto L_0x0097
                r0 = r17
                r1 = 3
                if (r0 == r1) goto L_0x008f
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r15
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x008f:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x0097:
                r0 = 0
                return r0
            L_0x0099:
                r9 = move-exception
                r0 = r9
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                r0.cancel()
                r0 = r8
                io.reactivex.exceptions.CompositeException r1 = new io.reactivex.exceptions.CompositeException
                r2 = r1
                r3 = 2
                java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
                r4 = r3
                r5 = 0
                r6 = r15
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
            L_0x00ba:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelFilterTry.ParallelFilterConditionalSubscriber.mo3605p(java.lang.Object):boolean");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber.class */
    static final class ParallelFilterSubscriber<T> extends BaseFilterSubscriber<T> {

        /* renamed from: j */
        final Subscriber<? super T> f18836j;

        ParallelFilterSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            super(predicate, biFunction);
            this.f18836j = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18834i) {
                this.f18834i = true;
                this.f18836j.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18834i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18834i = true;
            this.f18836j.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18833h, subscription)) {
                this.f18833h = subscription;
                this.f18836j.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo3605p(T r9) {
            /*
                r8 = this;
                r0 = r8
                boolean r0 = r0.f18834i
                if (r0 != 0) goto L_0x00ab
                r0 = 0
                r10 = r0
            L_0x0009:
                r0 = r8
                io.reactivex.functions.Predicate<? super T> r0 = r0.f18831f     // Catch: all -> 0x0028
                r1 = r9
                boolean r0 = r0.mo3191a(r1)     // Catch: all -> 0x0028
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L_0x0026
                r0 = r8
                org.reactivestreams.Subscriber<? super T> r0 = r0.f18836j
                r1 = r9
                r0.onNext(r1)
                r0 = 1
                return r0
            L_0x0026:
                r0 = 0
                return r0
            L_0x0028:
                r13 = move-exception
                r0 = r13
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18832g     // Catch: all -> 0x008a
                r14 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r14
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x008a
                r2 = r13
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x008a
                r14 = r0
                r0 = r14
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x008a
                r0 = r14
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x008a
                r14 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelFilterTry.C21211.f18830a     // Catch: all -> 0x008a
                r1 = r14
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r15 = r0
                r0 = r15
                r1 = 1
                if (r0 == r1) goto L_0x0009
                r0 = r15
                r1 = 2
                if (r0 == r1) goto L_0x0088
                r0 = r15
                r1 = 3
                if (r0 == r1) goto L_0x0080
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r13
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x0080:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x0088:
                r0 = 0
                return r0
            L_0x008a:
                r9 = move-exception
                r0 = r9
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                r0.cancel()
                r0 = r8
                io.reactivex.exceptions.CompositeException r1 = new io.reactivex.exceptions.CompositeException
                r2 = r1
                r3 = 2
                java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
                r4 = r3
                r5 = 0
                r6 = r13
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
            L_0x00ab:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelFilterTry.ParallelFilterSubscriber.mo3605p(java.lang.Object):boolean");
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18827a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new ParallelFilterConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18828b, this.f18829c);
                } else {
                    subscriberArr2[i] = new ParallelFilterSubscriber(subscriber, this.f18828b, this.f18829c);
                }
            }
            this.f18827a.mo3378b(subscriberArr2);
        }
    }
}
