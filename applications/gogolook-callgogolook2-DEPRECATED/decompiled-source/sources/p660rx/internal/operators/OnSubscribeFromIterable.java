package p660rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.OnSubscribeFromIterable */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeFromIterable.class */
public final class OnSubscribeFromIterable<T> implements Observable.OnSubscribe<T> {

    /* renamed from: is */
    public final Iterable<? extends T> f33464is;

    /* renamed from: rx.internal.operators.OnSubscribeFromIterable$IterableProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeFromIterable$IterableProducer.class */
    public static final class IterableProducer<T> extends AtomicLong implements Producer {

        /* renamed from: it */
        public final Iterator<? extends T> f33465it;

        /* renamed from: o */
        public final Subscriber<? super T> f33466o;

        public IterableProducer(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            this.f33466o = subscriber;
            this.f33465it = it;
        }

        public void fastPath() {
            Subscriber<? super T> subscriber = this.f33466o;
            Iterator<? extends T> it = this.f33465it;
            while (!subscriber.isUnsubscribed()) {
                try {
                    subscriber.onNext((Object) it.next());
                    if (!subscriber.isUnsubscribed()) {
                        try {
                            if (!it.hasNext()) {
                                if (!subscriber.isUnsubscribed()) {
                                    subscriber.onCompleted();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, subscriber);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, subscriber);
                    return;
                }
            }
        }

        @Override // p660rx.Producer
        public void request(long j) {
            if (get() != Long.MAX_VALUE) {
                if (j == Long.MAX_VALUE && compareAndSet(0L, Long.MAX_VALUE)) {
                    fastPath();
                } else if (j > 0 && BackpressureUtils.getAndAddRequest(this, j) == 0) {
                    slowPath(j);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                rx.Subscriber<? super T> r0 = r0.f33466o
                r8 = r0
                r0 = r5
                java.util.Iterator<? extends T> r0 = r0.f33465it
                r9 = r0
            L_0x000b:
                r0 = 0
                r10 = r0
            L_0x000e:
                r0 = r10
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x006d
                r0 = r8
                boolean r0 = r0.isUnsubscribed()
                if (r0 == 0) goto L_0x001d
                return
            L_0x001d:
                r0 = r9
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x0064
                r12 = r0
                r0 = r8
                r1 = r12
                r0.onNext(r1)
                r0 = r8
                boolean r0 = r0.isUnsubscribed()
                if (r0 == 0) goto L_0x0036
                return
            L_0x0036:
                r0 = r9
                boolean r0 = r0.hasNext()     // Catch: all -> 0x005b
                r13 = r0
                r0 = r13
                if (r0 != 0) goto L_0x0052
                r0 = r8
                boolean r0 = r0.isUnsubscribed()
                if (r0 != 0) goto L_0x0051
                r0 = r8
                r0.onCompleted()
            L_0x0051:
                return
            L_0x0052:
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                goto L_0x000e
            L_0x005b:
                r9 = move-exception
                r0 = r9
                r1 = r8
                p660rx.exceptions.Exceptions.throwOrReport(r0, r1)
                return
            L_0x0064:
                r9 = move-exception
                r0 = r9
                r1 = r8
                p660rx.exceptions.Exceptions.throwOrReport(r0, r1)
                return
            L_0x006d:
                r0 = r5
                long r0 = r0.get()
                r14 = r0
                r0 = r14
                r6 = r0
                r0 = r10
                r1 = r14
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000e
                r0 = r5
                r1 = r10
                long r0 = p660rx.internal.operators.BackpressureUtils.produced(r0, r1)
                r10 = r0
                r0 = r10
                r6 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x000b
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OnSubscribeFromIterable.IterableProducer.slowPath(long):void");
        }
    }

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable != null) {
            this.f33464is = iterable;
            return;
        }
        throw new NullPointerException("iterable must not be null");
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super T> subscriber) {
        try {
            Iterator<? extends T> it = this.f33464is.iterator();
            boolean hasNext = it.hasNext();
            if (subscriber.isUnsubscribed()) {
                return;
            }
            if (!hasNext) {
                subscriber.onCompleted();
            } else {
                subscriber.setProducer(new IterableProducer(subscriber, it));
            }
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, subscriber);
        }
    }
}
