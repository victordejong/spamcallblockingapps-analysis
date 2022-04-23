package p660rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorTake */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorTake.class */
public final class OperatorTake<T> implements Observable.Operator<T, T> {
    public final int limit;

    /* renamed from: rx.internal.operators.OperatorTake$1 */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorTake$1.class */
    public class C154041 extends Subscriber<T> {
        public boolean completed;
        public int count;
        public final /* synthetic */ Subscriber val$child;

        public C154041(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (!this.completed) {
                this.completed = true;
                this.val$child.onCompleted();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (!this.completed) {
                this.completed = true;
                try {
                    this.val$child.onError(th);
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            if (!isUnsubscribed()) {
                int i = this.count;
                this.count = i + 1;
                int i2 = OperatorTake.this.limit;
                if (i < i2) {
                    boolean z = this.count == i2;
                    this.val$child.onNext(t);
                    if (z && !this.completed) {
                        this.completed = true;
                        try {
                            this.val$child.onCompleted();
                        } finally {
                            unsubscribe();
                        }
                    }
                }
            }
        }

        @Override // p660rx.Subscriber
        public void setProducer(final Producer producer) {
            this.val$child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorTake.1.1
                public final AtomicLong requested = new AtomicLong(0);

                @Override // p660rx.Producer
                public void request(long j) {
                    long j2;
                    long min;
                    if (j > 0 && !C154041.this.completed) {
                        do {
                            j2 = this.requested.get();
                            min = Math.min(j, OperatorTake.this.limit - j2);
                            if (min == 0) {
                                return;
                            }
                        } while (!this.requested.compareAndSet(j2, j2 + min));
                        producer.request(min);
                    }
                }
            });
        }
    }

    public OperatorTake(int i) {
        if (i >= 0) {
            this.limit = i;
            return;
        }
        throw new IllegalArgumentException("limit >= 0 required but it was " + i);
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        C154041 r0 = new C154041(subscriber);
        if (this.limit == 0) {
            subscriber.onCompleted();
            r0.unsubscribe();
        }
        subscriber.add(r0);
        return r0;
    }
}
