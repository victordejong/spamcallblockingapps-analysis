package p530d.p541c.p543b0.p547d;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.d.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/d/a.class */
public abstract class AbstractC9662a<T, R> implements AbstractC9844r<T>, AbstractC9656e<R> {

    /* renamed from: a */
    public final AbstractC9844r<? super R> f36723a;

    /* renamed from: b */
    public AbstractC9861b f36724b;

    /* renamed from: c */
    public AbstractC9656e<T> f36725c;

    /* renamed from: d */
    public boolean f36726d;

    /* renamed from: e */
    public int f36727e;

    public AbstractC9662a(AbstractC9844r<? super R> rVar) {
        this.f36723a = rVar;
    }

    /* renamed from: a */
    public final int m2091a(int i) {
        AbstractC9656e<T> eVar = this.f36725c;
        if (eVar == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = eVar.requestFusion(i);
        if (requestFusion != 0) {
            this.f36727e = requestFusion;
        }
        return requestFusion;
    }

    /* renamed from: a */
    public void m2092a() {
    }

    /* renamed from: a */
    public final void m2090a(Throwable th) {
        C9863a.m1822b(th);
        this.f36724b.dispose();
        onError(th);
    }

    /* renamed from: b */
    public boolean m2089b() {
        return true;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f36725c.clear();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f36724b.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f36724b.isDisposed();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f36725c.isEmpty();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.f36726d) {
            this.f36726d = true;
            this.f36723a.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.f36726d) {
            C9815a.m1923b(th);
            return;
        }
        this.f36726d = true;
        this.f36723a.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public final void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f36724b, bVar)) {
            this.f36724b = bVar;
            if (bVar instanceof AbstractC9656e) {
                this.f36725c = (AbstractC9656e) bVar;
            }
            if (m2089b()) {
                this.f36723a.onSubscribe(this);
                m2092a();
            }
        }
    }
}
