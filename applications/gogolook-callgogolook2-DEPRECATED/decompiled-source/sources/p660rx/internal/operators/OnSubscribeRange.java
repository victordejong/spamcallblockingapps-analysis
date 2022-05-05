package p660rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
/* renamed from: rx.internal.operators.OnSubscribeRange */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeRange.class */
public final class OnSubscribeRange implements Observable.OnSubscribe<Integer> {
    public final int endIndex;
    public final int startIndex;

    /* renamed from: rx.internal.operators.OnSubscribeRange$RangeProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeRange$RangeProducer.class */
    public static final class RangeProducer extends AtomicLong implements Producer {
        public final Subscriber<? super Integer> childSubscriber;
        public long currentIndex;
        public final int endOfRange;

        public RangeProducer(Subscriber<? super Integer> subscriber, int i, int i2) {
            this.childSubscriber = subscriber;
            this.currentIndex = i;
            this.endOfRange = i2;
        }

        public void fastPath() {
            long j = this.endOfRange;
            Subscriber<? super Integer> subscriber = this.childSubscriber;
            for (long j2 = this.currentIndex; j2 != j + 1; j2++) {
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onNext(Integer.valueOf((int) j2));
                } else {
                    return;
                }
            }
            if (!subscriber.isUnsubscribed()) {
                subscriber.onCompleted();
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
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
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
                int r0 = r0.endOfRange
                long r0 = (long) r0
                r1 = 1
                long r0 = r0 + r1
                r8 = r0
                r0 = r5
                long r0 = r0.currentIndex
                r10 = r0
                r0 = r5
                rx.Subscriber<? super java.lang.Integer> r0 = r0.childSubscriber
                r12 = r0
            L_0x0014:
                r0 = 0
                r13 = r0
            L_0x0017:
                r0 = r13
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004a
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004a
                r0 = r12
                boolean r0 = r0.isUnsubscribed()
                if (r0 == 0) goto L_0x002e
                return
            L_0x002e:
                r0 = r12
                r1 = r10
                int r1 = (int) r1
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r0.onNext(r1)
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r13
                r1 = 1
                long r0 = r0 + r1
                r13 = r0
                goto L_0x0017
            L_0x004a:
                r0 = r12
                boolean r0 = r0.isUnsubscribed()
                if (r0 == 0) goto L_0x0053
                return
            L_0x0053:
                r0 = r10
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0062
                r0 = r12
                r0.onCompleted()
                return
            L_0x0062:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r15
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0017
                r0 = r5
                r1 = r10
                r0.currentIndex = r1
                r0 = r5
                r1 = r13
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r13 = r0
                r0 = r13
                r6 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0014
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.OnSubscribeRange.RangeProducer.slowPath(long):void");
        }
    }

    public OnSubscribeRange(int i, int i2) {
        this.startIndex = i;
        this.endIndex = i2;
    }

    public void call(Subscriber<? super Integer> subscriber) {
        subscriber.setProducer(new RangeProducer(subscriber, this.startIndex, this.endIndex));
    }
}
