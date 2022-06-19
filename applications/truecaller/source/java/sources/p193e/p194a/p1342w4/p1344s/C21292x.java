package p193e.p194a.p1342w4.p1344s;

import com.truecaller.log.AssertionUtil;
import com.truecaller.search.global.CompositeAdapterDelegate;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
/* renamed from: e.a.w4.s.x */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/x.class */
public class C21292x implements CompositeAdapterDelegate {

    /* renamed from: a */
    public final C21294z f59634a;

    /* renamed from: b */
    public final C21270m0 f59635b;

    /* renamed from: c */
    public final C21274o0 f59636c;

    /* renamed from: d */
    public final C21288t0 f59637d;

    /* renamed from: e */
    public final C21278q f59638e;

    /* renamed from: f */
    public final C21287t f59639f;

    /* renamed from: g */
    public final C21290v f59640g;

    /* renamed from: h */
    public CompositeAdapterDelegate.SearchResultOrder f59641h;

    /* renamed from: i */
    public AbstractC21284s f59642i = m9950n();

    /* renamed from: j */
    public final AbstractC19022f0 f59643j;

    /* renamed from: k */
    public final AbstractC18977k f59644k;

    public C21292x(C21294z c21294z, C21270m0 c21270m0, C21274o0 c21274o0, C21288t0 c21288t0, C21278q c21278q, C21287t c21287t, C21290v c21290v, CompositeAdapterDelegate.SearchResultOrder searchResultOrder, AbstractC19022f0 abstractC19022f0, AbstractC18977k abstractC18977k) {
        this.f59634a = c21294z;
        this.f59635b = c21270m0;
        this.f59636c = c21274o0;
        this.f59637d = c21288t0;
        this.f59638e = c21278q;
        this.f59639f = c21287t;
        this.f59640g = c21290v;
        this.f59641h = searchResultOrder;
        this.f59643j = abstractC19022f0;
        this.f59644k = abstractC18977k;
        m9948p();
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: a */
    public AbstractC21284s mo9963a() {
        return this.f59635b;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: b */
    public void mo9962b(int i) {
        C21294z c21294z = this.f59634a;
        c21294z.f59626a = i;
        c21294z.f59628c = Math.min(i, c21294z.f59627b);
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: c */
    public void mo9961c(int i) {
        C21274o0 c21274o0 = this.f59636c;
        c21274o0.f59626a = i;
        c21274o0.f59628c = Math.min(i, c21274o0.f59627b);
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: d */
    public AbstractC21284s mo9960d() {
        return this.f59636c;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: e */
    public AbstractC21284s mo9959e() {
        return this.f59634a;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: f */
    public AbstractC21284s mo9958f() {
        return this.f59642i;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: g */
    public void mo9957g(CompositeAdapterDelegate.SearchResultOrder searchResultOrder) {
        this.f59641h = searchResultOrder;
        AbstractC21291w m9950n = m9950n();
        this.f59642i = m9950n;
        this.f59634a.f59631f = null;
        this.f59636c.f59631f = null;
        this.f59635b.f59631f = null;
        this.f59637d.f59631f = null;
        this.f59639f.f59631f = null;
        this.f59638e.f59631f = null;
        this.f59640g.f59631f = null;
        AssertionUtil.isNotNull(m9950n, "Main Adapter is not assigned.");
        ((AbstractC21291w) this.f59642i).f59631f = null;
        m9948p();
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: h */
    public void mo9956h(AbstractC21242e0 abstractC21242e0) {
        this.f59634a.f59629d = abstractC21242e0;
        this.f59636c.f59629d = abstractC21242e0;
        this.f59635b.f59629d = abstractC21242e0;
        this.f59637d.f59629d = abstractC21242e0;
        this.f59639f.f59629d = abstractC21242e0;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: i */
    public void mo9955i(int i) {
        C21288t0 c21288t0 = this.f59637d;
        c21288t0.f59626a = i;
        c21288t0.f59628c = Math.min(i, c21288t0.f59627b);
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: j */
    public AbstractC21284s mo9954j() {
        return this.f59639f;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: k */
    public CompositeAdapterDelegate.SearchResultOrder mo9953k() {
        return this.f59641h;
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: l */
    public void mo9952l(int i) {
        C21270m0 c21270m0 = this.f59635b;
        c21270m0.f59626a = i;
        c21270m0.f59628c = Math.min(i, c21270m0.f59627b);
    }

    @Override // com.truecaller.search.global.CompositeAdapterDelegate
    /* renamed from: m */
    public AbstractC21284s mo9951m() {
        return m9949o();
    }

    /* renamed from: n */
    public final AbstractC21291w m9950n() {
        int ordinal = this.f59641h.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return m9949o();
            }
            if (ordinal != 2) {
                return this.f59634a;
            }
        }
        return this.f59634a;
    }

    /* renamed from: o */
    public final AbstractC21291w m9949o() {
        return !this.f59644k.mo14267e() ? this.f59640g : this.f59643j.mo14245a() ? this.f59637d : this.f59638e;
    }

    /* renamed from: p */
    public final void m9948p() {
        C21294z c21294z;
        AssertionUtil.isNotNull(this.f59642i, "Main Adapter is not assigned.");
        int ordinal = this.f59641h.ordinal();
        if (ordinal == 0) {
            this.f59636c.m9965p(m9949o());
            this.f59635b.m9965p(this.f59636c);
            c21294z = this.f59635b;
        } else if (ordinal == 1) {
            this.f59635b.m9965p(this.f59636c);
            this.f59634a.m9965p(this.f59635b);
            c21294z = this.f59634a;
        } else if (ordinal != 2) {
            c21294z = null;
        } else {
            this.f59635b.m9965p(this.f59636c);
            m9949o().m9965p(this.f59635b);
            c21294z = m9949o();
        }
        this.f59639f.m9965p(c21294z);
        ((AbstractC21291w) this.f59642i).m9965p(this.f59639f);
    }
}
