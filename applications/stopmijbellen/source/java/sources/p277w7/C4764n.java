package p277w7;

import java.util.Objects;
import p148k7.AbstractC3360m;
import p148k7.AbstractC3363p;
import p148k7.C3367r;
import p170m7.C3661g;
import p234s7.AbstractC4321a;
import p277w7.AbstractC4768q;
import p277w7.C4766p;
/* renamed from: w7.n */
/* loaded from: classes2-dex2jar.jar:w7/n.class */
public class C4764n extends C4766p.C4767a<Object> {

    /* renamed from: n */
    public C4766p.C4767a<Object> f14661n = this;

    /* renamed from: o */
    public final /* synthetic */ AbstractC4321a f14662o;

    /* renamed from: p */
    public final /* synthetic */ C4766p f14663p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4764n(C4766p c4766p, Runnable runnable, AbstractC4321a abstractC4321a) {
        super(runnable);
        this.f14663p = c4766p;
        this.f14662o = abstractC4321a;
    }

    @Override // p170m7.AbstractC3666j
    /* renamed from: u */
    public void mo496u(AbstractC4768q.C4769a c4769a) throws Exception {
        C3367r c3367r;
        AbstractC4768q.C4769a c4769a2 = c4769a;
        this.f14677l = c4769a2.f14679a;
        Objects.requireNonNull(C4766p.this);
        long j = c4769a2.f14680b;
        AbstractC3360m abstractC3360m = this.f14677l;
        if (!(abstractC3360m instanceof AbstractC3363p)) {
            C3367r c3367r2 = new C3367r();
            c3367r2.mo1827o(abstractC3360m);
            c3367r = c3367r2;
        } else {
            c3367r = (AbstractC3363p) abstractC3360m;
        }
        this.f14677l = c3367r;
        c3367r.mo2336l(new C4765o(this, j));
        ((C3661g) this.f14662o.mo1100a(this.f14677l)).m1919k(new C4763m(this));
    }
}
