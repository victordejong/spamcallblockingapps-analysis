package p278w8;

import java.util.List;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p267v8.AbstractC4654a;
import p289x8.AbstractC4932a;
/* renamed from: w8.e */
/* loaded from: classes2-dex2jar.jar:w8/e.class */
public abstract class AbstractC4774e<TModel> extends AbstractC4771b<TModel> {
    public AbstractC4774e(Class<TModel> cls) {
        super(cls);
    }

    @Override // p278w8.AbstractC4773d
    /* renamed from: i */
    public C0860g mo458i() {
        return new C4791r(this, new AbstractC4787n[0]).mo458i();
    }

    @Override // p278w8.AbstractC4773d
    /* renamed from: j */
    public C0860g mo457j(AbstractC0859f abstractC0859f) {
        return new C4791r(this, new AbstractC4787n[0]).mo457j(abstractC0859f);
    }

    @Override // p278w8.AbstractC4771b
    /* renamed from: l */
    public List<TModel> mo456l() {
        if (((C4776g) this).f14691c instanceof C4788o) {
            return super.mo456l();
        }
        throw new IllegalArgumentException("Please use query(). The beginning is not a Select");
    }

    /* renamed from: m */
    public abstract AbstractC4654a mo461m();

    /* renamed from: n */
    public C4791r<TModel> m477n(AbstractC4932a abstractC4932a, boolean z) {
        C4791r<TModel> c4791r = new C4791r<>(this, new AbstractC4787n[0]);
        c4791r.f14722f.add(new C4786m(abstractC4932a.mo235f(), z));
        return c4791r;
    }
}
