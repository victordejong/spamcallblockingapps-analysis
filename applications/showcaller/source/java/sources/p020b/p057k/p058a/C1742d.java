package p020b.p057k.p058a;

import p020b.p057k.p058a.AbstractC1722b;
/* renamed from: b.k.a.d */
/* loaded from: classes-dex2jar.jar:b/k/a/d.class */
public final class C1742d extends AbstractC1722b<C1742d> {

    /* renamed from: A */
    private C1743e f6466A = null;

    /* renamed from: B */
    private float f6467B = Float.MAX_VALUE;

    /* renamed from: C */
    private boolean f6468C = false;

    public <K> C1742d(K k, AbstractC1741c<K> abstractC1741c) {
        super(k, abstractC1741c);
    }

    /* renamed from: o */
    private void m29038o() {
        C1743e c1743e = this.f6466A;
        if (c1743e != null) {
            double m29036a = c1743e.m29036a();
            if (m29036a > this.f6457u) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            }
            if (m29036a < this.f6458v) {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
            return;
        }
        throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
    }

    @Override // p020b.p057k.p058a.AbstractC1722b
    /* renamed from: j */
    public void mo29042j() {
        m29038o();
        this.f6466A.m29030g(m29078e());
        super.mo29042j();
    }

    @Override // p020b.p057k.p058a.AbstractC1722b
    /* renamed from: l */
    boolean mo29041l(long j) {
        if (this.f6468C) {
            float f = this.f6467B;
            if (f != Float.MAX_VALUE) {
                this.f6466A.m29032e(f);
                this.f6467B = Float.MAX_VALUE;
            }
            this.f6452p = this.f6466A.m29036a();
            this.f6451o = 0.0f;
            this.f6468C = false;
            return true;
        }
        if (this.f6467B != Float.MAX_VALUE) {
            this.f6466A.m29036a();
            long j2 = j / 2;
            AbstractC1722b.C1737o m29029h = this.f6466A.m29029h(this.f6452p, this.f6451o, j2);
            this.f6466A.m29032e(this.f6467B);
            this.f6467B = Float.MAX_VALUE;
            AbstractC1722b.C1737o m29029h2 = this.f6466A.m29029h(m29029h.f6463a, m29029h.f6464b, j2);
            this.f6452p = m29029h2.f6463a;
            this.f6451o = m29029h2.f6464b;
        } else {
            AbstractC1722b.C1737o m29029h3 = this.f6466A.m29029h(this.f6452p, this.f6451o, j);
            this.f6452p = m29029h3.f6463a;
            this.f6451o = m29029h3.f6464b;
        }
        float max = Math.max(this.f6452p, this.f6458v);
        this.f6452p = max;
        float min = Math.min(max, this.f6457u);
        this.f6452p = min;
        if (!m29039n(min, this.f6451o)) {
            return false;
        }
        this.f6452p = this.f6466A.m29036a();
        this.f6451o = 0.0f;
        return true;
    }

    /* renamed from: m */
    public void m29040m(float f) {
        if (m29077f()) {
            this.f6467B = f;
            return;
        }
        if (this.f6466A == null) {
            this.f6466A = new C1743e(f);
        }
        this.f6466A.m29032e(f);
        mo29042j();
    }

    /* renamed from: n */
    boolean m29039n(float f, float f2) {
        return this.f6466A.m29034c(f, f2);
    }

    /* renamed from: p */
    public C1742d m29037p(C1743e c1743e) {
        this.f6466A = c1743e;
        return this;
    }
}
