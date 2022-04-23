package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/SinglePostCompleteSubscriber.class */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d {
    public static final long COMPLETE_MASK = Long.MIN_VALUE;
    public static final long REQUEST_MASK = Long.MAX_VALUE;
    public static final long serialVersionUID = 7917814472626990048L;
    public final AbstractC10433c<? super R> actual;
    public long produced;

    /* renamed from: s */
    public AbstractC10434d f38568s;
    public R value;

    public SinglePostCompleteSubscriber(AbstractC10433c<? super R> cVar) {
        this.actual = cVar;
    }

    public void cancel() {
        this.f38568s.cancel();
    }

    public final void complete(R r) {
        long j = this.produced;
        if (j != 0) {
            C9800b.m2009c(this, j);
        }
        while (true) {
            long j2 = get();
            if ((j2 & Long.MIN_VALUE) != 0) {
                onDrop(r);
                return;
            } else if ((j2 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.actual.onNext(r);
                this.actual.onComplete();
                return;
            } else {
                this.value = r;
                if (!compareAndSet(0L, Long.MIN_VALUE)) {
                    this.value = null;
                } else {
                    return;
                }
            }
        }
    }

    public void onDrop(R r) {
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38568s, dVar)) {
            this.f38568s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        long j2;
        if (SubscriptionHelper.validate(j)) {
            do {
                j2 = get();
                if ((j2 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                        this.actual.onNext((R) this.value);
                        this.actual.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j2, C9800b.m2013a(j2, j)));
            this.f38568s.request(j);
        }
    }
}
