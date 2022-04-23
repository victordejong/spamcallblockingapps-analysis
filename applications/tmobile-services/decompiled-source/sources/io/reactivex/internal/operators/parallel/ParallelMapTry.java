package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMapTry.class */
public final class ParallelMapTry<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    final ParallelFlowable<T> f18887a;

    /* renamed from: b */
    final Function<? super T, ? extends R> f18888b;

    /* renamed from: c */
    final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18889c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.reactivex.internal.operators.parallel.ParallelMapTry$1 */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMapTry$1.class */
    public static /* synthetic */ class C21221 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18890a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f18890a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18890a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18890a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTryConditionalSubscriber.class */
    static final class ParallelMapTryConditionalSubscriber<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final ConditionalSubscriber<? super R> f18891f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f18892g;

        /* renamed from: h */
        final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18893h;

        /* renamed from: i */
        Subscription f18894i;

        /* renamed from: j */
        boolean f18895j;

        ParallelMapTryConditionalSubscriber(ConditionalSubscriber<? super R> conditionalSubscriber, Function<? super T, ? extends R> function, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            this.f18891f = conditionalSubscriber;
            this.f18892g = function;
            this.f18893h = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18894i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18895j) {
                this.f18895j = true;
                this.f18891f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18895j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18895j = true;
            this.f18891f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t) && !this.f18895j) {
                this.f18894i.request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18894i, subscription)) {
                this.f18894i = subscription;
                this.f18891f.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
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
                boolean r0 = r0.f18895j
                if (r0 == 0) goto L_0x0009
                r0 = 0
                return r0
            L_0x0009:
                r0 = 0
                r10 = r0
            L_0x000b:
                r0 = r8
                io.reactivex.functions.Function<? super T, ? extends R> r0 = r0.f18892g     // Catch: all -> 0x002b
                r1 = r9
                java.lang.Object r0 = r0.apply(r1)     // Catch: all -> 0x002b
                r12 = r0
                r0 = r12
                java.lang.String r1 = "The mapper returned a null value"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x002b
                r0 = r8
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super R> r0 = r0.f18891f
                r1 = r12
                boolean r0 = r0.mo3605p(r1)
                return r0
            L_0x002b:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18893h     // Catch: all -> 0x008d
                r13 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r13
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x008d
                r2 = r12
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x008d
                r13 = r0
                r0 = r13
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x008d
                r0 = r13
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x008d
                r13 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelMapTry.C21221.f18890a     // Catch: all -> 0x008d
                r1 = r13
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                r1 = 1
                if (r0 == r1) goto L_0x000b
                r0 = r14
                r1 = 2
                if (r0 == r1) goto L_0x008b
                r0 = r14
                r1 = 3
                if (r0 == r1) goto L_0x0083
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r12
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x0083:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x008b:
                r0 = 0
                return r0
            L_0x008d:
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
                r6 = r12
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelMapTry.ParallelMapTryConditionalSubscriber.mo3605p(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18894i.request(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber.class */
    static final class ParallelMapTrySubscriber<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super R> f18896f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f18897g;

        /* renamed from: h */
        final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18898h;

        /* renamed from: i */
        Subscription f18899i;

        /* renamed from: j */
        boolean f18900j;

        ParallelMapTrySubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            this.f18896f = subscriber;
            this.f18897g = function;
            this.f18898h = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18899i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18900j) {
                this.f18900j = true;
                this.f18896f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18900j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18900j = true;
            this.f18896f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t) && !this.f18900j) {
                this.f18899i.request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18899i, subscription)) {
                this.f18899i = subscription;
                this.f18896f.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
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
                boolean r0 = r0.f18900j
                if (r0 == 0) goto L_0x0009
                r0 = 0
                return r0
            L_0x0009:
                r0 = 0
                r10 = r0
            L_0x000b:
                r0 = r8
                io.reactivex.functions.Function<? super T, ? extends R> r0 = r0.f18897g     // Catch: all -> 0x002c
                r1 = r9
                java.lang.Object r0 = r0.apply(r1)     // Catch: all -> 0x002c
                r12 = r0
                r0 = r12
                java.lang.String r1 = "The mapper returned a null value"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x002c
                r0 = r8
                org.reactivestreams.Subscriber<? super R> r0 = r0.f18896f
                r1 = r12
                r0.onNext(r1)
                r0 = 1
                return r0
            L_0x002c:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18898h     // Catch: all -> 0x008e
                r13 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r13
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x008e
                r2 = r12
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x008e
                r13 = r0
                r0 = r13
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x008e
                r0 = r13
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x008e
                r13 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelMapTry.C21221.f18890a     // Catch: all -> 0x008e
                r1 = r13
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                r1 = 1
                if (r0 == r1) goto L_0x000b
                r0 = r14
                r1 = 2
                if (r0 == r1) goto L_0x008c
                r0 = r14
                r1 = 3
                if (r0 == r1) goto L_0x0084
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r12
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x0084:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x008c:
                r0 = 0
                return r0
            L_0x008e:
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
                r6 = r12
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelMapTry.ParallelMapTrySubscriber.mo3605p(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18899i.request(j);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18887a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super R>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new ParallelMapTryConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18888b, this.f18889c);
                } else {
                    subscriberArr2[i] = new ParallelMapTrySubscriber(subscriber, this.f18888b, this.f18889c);
                }
            }
            this.f18887a.mo3378b(subscriberArr2);
        }
    }
}
