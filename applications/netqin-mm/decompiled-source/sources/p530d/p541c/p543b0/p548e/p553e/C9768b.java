package p530d.p541c.p543b0.p548e.p553e;

import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.e.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/b.class */
public final class C9768b<T> extends AbstractC9850t<T> {

    /* renamed from: a */
    public final AbstractC9852v<T> f36907a;

    /* renamed from: b */
    public final AbstractC9644g<? super T> f36908b;

    /* renamed from: d.c.b0.e.e.b$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/b$a.class */
    public final class C9769a implements AbstractC9851u<T> {

        /* renamed from: a */
        public final AbstractC9851u<? super T> f36909a;

        public C9769a(AbstractC9851u<? super T> uVar) {
            this.f36909a = uVar;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.f36909a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36909a.onSubscribe(bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            try {
                C9768b.this.f36908b.accept(t);
                this.f36909a.onSuccess(t);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f36909a.onError(th);
            }
        }
    }

    public C9768b(AbstractC9852v<T> vVar, AbstractC9644g<? super T> gVar) {
        this.f36907a = vVar;
        this.f36908b = gVar;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super T> uVar) {
        this.f36907a.mo1841a(new C9769a(uVar));
    }
}
