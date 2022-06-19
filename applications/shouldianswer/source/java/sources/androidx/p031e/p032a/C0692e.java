package androidx.p031e.p032a;

import androidx.p031e.p032a.AbstractC0670b;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.e.a.e */
/* loaded from: classes-dex2jar.jar:androidx/e/a/e.class */
public final class C0692e extends AbstractC0670b<C0692e> {

    /* renamed from: w */
    private C0693f f2238w;

    /* renamed from: x */
    private float f2239x = Float.MAX_VALUE;

    /* renamed from: y */
    private boolean f2240y = false;

    public <K> C0692e(K k, AbstractC0691d<K> abstractC0691d, float f) {
        super(k, abstractC0691d);
        this.f2238w = null;
        this.f2238w = new C0693f(f);
    }

    /* renamed from: c */
    private void m5711c() {
        C0693f c0693f = this.f2238w;
        if (c0693f != null) {
            double m5710a = c0693f.m5710a();
            if (m5710a > this.f2225u) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            }
            if (m5710a < this.f2226v) {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
            return;
        }
        throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
    }

    @Override // androidx.p031e.p032a.AbstractC0670b
    /* renamed from: a */
    public void mo5714a() {
        m5711c();
        this.f2238w.m5709a(m5761b());
        super.mo5714a();
    }

    @Override // androidx.p031e.p032a.AbstractC0670b
    /* renamed from: a */
    boolean mo5713a(float f, float f2) {
        return this.f2238w.m5706a(f, f2);
    }

    @Override // androidx.p031e.p032a.AbstractC0670b
    /* renamed from: b */
    boolean mo5712b(long j) {
        if (this.f2240y) {
            float f = this.f2239x;
            if (f != Float.MAX_VALUE) {
                this.f2238w.m5707a(f);
                this.f2239x = Float.MAX_VALUE;
            }
            this.f2220p = this.f2238w.m5710a();
            this.f2219o = FlexItem.FLEX_GROW_DEFAULT;
            this.f2240y = false;
            return true;
        }
        if (this.f2239x != Float.MAX_VALUE) {
            this.f2238w.m5710a();
            long j2 = j / 2;
            AbstractC0670b.C0685a m5708a = this.f2238w.m5708a(this.f2220p, this.f2219o, j2);
            this.f2238w.m5707a(this.f2239x);
            this.f2239x = Float.MAX_VALUE;
            AbstractC0670b.C0685a m5708a2 = this.f2238w.m5708a(m5708a.f2231a, m5708a.f2232b, j2);
            this.f2220p = m5708a2.f2231a;
            this.f2219o = m5708a2.f2232b;
        } else {
            AbstractC0670b.C0685a m5708a3 = this.f2238w.m5708a(this.f2220p, this.f2219o, j);
            this.f2220p = m5708a3.f2231a;
            this.f2219o = m5708a3.f2232b;
        }
        this.f2220p = Math.max(this.f2220p, this.f2226v);
        this.f2220p = Math.min(this.f2220p, this.f2225u);
        if (!mo5713a(this.f2220p, this.f2219o)) {
            return false;
        }
        this.f2220p = this.f2238w.m5710a();
        this.f2219o = FlexItem.FLEX_GROW_DEFAULT;
        return true;
    }
}
