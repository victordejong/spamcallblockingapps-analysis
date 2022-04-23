package io.reactivex.processors;

import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/MulticastProcessor.class */
public final class MulticastProcessor<T> extends AbstractC9817a<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/MulticastProcessor$MulticastSubscription.class */
    public static final class MulticastSubscription<T> extends AtomicLong implements AbstractC10434d {
        public static final long serialVersionUID = -363282618957264509L;
        public final AbstractC10433c<? super T> actual;
        public long emitted;
        public final MulticastProcessor<T> parent;

        public MulticastSubscription(AbstractC10433c<? super T> cVar, MulticastProcessor<T> multicastProcessor) {
            this.actual = cVar;
            this.parent = multicastProcessor;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m219a((MulticastSubscription) this);
                throw null;
            }
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.actual.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.actual.onError(th);
            }
        }

        public void onNext(T t) {
            if (get() != Long.MIN_VALUE) {
                this.emitted++;
                this.actual.onNext(t);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p611j.p612a.AbstractC10434d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void request(long r7) {
            /*
                r6 = this;
                r0 = r7
                boolean r0 = io.reactivex.internal.subscriptions.SubscriptionHelper.validate(r0)
                if (r0 == 0) goto L_0x004d
            L_0x0007:
                r0 = r6
                long r0 = r0.get()
                r9 = r0
                r0 = r9
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x004d
                r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r11 = r0
                r0 = r9
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0024
                goto L_0x004d
            L_0x0024:
                r0 = r9
                r1 = r7
                long r0 = r0 + r1
                r13 = r0
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0033
                goto L_0x0037
            L_0x0033:
                r0 = r13
                r11 = r0
            L_0x0037:
                r0 = r6
                r1 = r9
                r2 = r11
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 != 0) goto L_0x0044
                goto L_0x0007
            L_0x0044:
                r0 = r6
                io.reactivex.processors.MulticastProcessor<T> r0 = r0.parent
                r0.m218i()
                r0 = 0
                throw r0
            L_0x004d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.MulticastProcessor.MulticastSubscription.request(long):void");
        }
    }

    /* renamed from: a */
    public void m219a(MulticastSubscription<T> multicastSubscription) {
        throw null;
    }

    /* renamed from: i */
    public void m218i() {
        throw null;
    }
}
