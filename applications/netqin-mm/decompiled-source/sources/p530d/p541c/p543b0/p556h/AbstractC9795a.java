package p530d.p541c.p543b0.p556h;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.h.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/h/a.class */
public abstract class AbstractC9795a<T, R> implements AbstractC9652a<T>, AbstractC9658g<R> {

    /* renamed from: a */
    public final AbstractC9652a<? super R> f36992a;

    /* renamed from: b */
    public AbstractC10434d f36993b;

    /* renamed from: c */
    public AbstractC9658g<T> f36994c;

    /* renamed from: d */
    public boolean f36995d;

    /* renamed from: e */
    public int f36996e;

    public AbstractC9795a(AbstractC9652a<? super R> aVar) {
        this.f36992a = aVar;
    }

    /* renamed from: a */
    public final int m2022a(int i) {
        AbstractC9658g<T> gVar = this.f36994c;
        if (gVar == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = gVar.requestFusion(i);
        if (requestFusion != 0) {
            this.f36996e = requestFusion;
        }
        return requestFusion;
    }

    /* renamed from: a */
    public void m2023a() {
    }

    /* renamed from: a */
    public final void m2021a(Throwable th) {
        C9863a.m1822b(th);
        this.f36993b.cancel();
        onError(th);
    }

    /* renamed from: b */
    public boolean m2020b() {
        return true;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f36993b.cancel();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f36994c.clear();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f36994c.isEmpty();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.f36995d) {
            this.f36995d = true;
            this.f36992a.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.f36995d) {
            C9815a.m1923b(th);
            return;
        }
        this.f36995d = true;
        this.f36992a.onError(th);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public final void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f36993b, dVar)) {
            this.f36993b = dVar;
            if (dVar instanceof AbstractC9658g) {
                this.f36994c = (AbstractC9658g) dVar;
            }
            if (m2020b()) {
                this.f36992a.onSubscribe(this);
                m2023a();
            }
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.f36993b.request(j);
    }
}
