package p660rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
/* renamed from: rx.internal.producers.SingleProducer */
/* loaded from: classes3-dex2jar.jar:rx/internal/producers/SingleProducer.class */
public final class SingleProducer<T> extends AtomicBoolean implements Producer {
    public final Subscriber<? super T> child;
    public final T value;

    public SingleProducer(Subscriber<? super T> subscriber, T t) {
        this.child = subscriber;
        this.value = t;
    }

    @Override // p660rx.Producer
    public void request(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (i != 0 && compareAndSet(false, true)) {
            Subscriber<? super T> subscriber = this.child;
            if (!subscriber.isUnsubscribed()) {
                Object obj = (T) this.value;
                try {
                    subscriber.onNext(obj);
                    if (!subscriber.isUnsubscribed()) {
                        subscriber.onCompleted();
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, subscriber, obj);
                }
            }
        }
    }
}
