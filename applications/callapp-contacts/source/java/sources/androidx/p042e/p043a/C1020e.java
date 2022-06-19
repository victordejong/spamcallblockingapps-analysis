package androidx.p042e.p043a;

import androidx.p042e.p043a.AbstractC1000b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.e.a.e */
/* loaded from: classes-dex2jar.jar:androidx/e/a/e.class */
public final class C1020e extends AbstractC1000b<C1020e> {

    /* renamed from: w */
    public C1021f f4036w;

    /* renamed from: x */
    private float f4037x;

    /* renamed from: y */
    private boolean f4038y;

    public C1020e(C1019d c1019d) {
        super(c1019d);
        this.f4036w = null;
        this.f4037x = Float.MAX_VALUE;
        this.f4038y = false;
    }

    public <K> C1020e(K k, AbstractC1018c<K> abstractC1018c) {
        super(k, abstractC1018c);
        this.f4036w = null;
        this.f4037x = Float.MAX_VALUE;
        this.f4038y = false;
    }

    public <K> C1020e(K k, AbstractC1018c<K> abstractC1018c, float f) {
        super(k, abstractC1018c);
        this.f4036w = null;
        this.f4037x = Float.MAX_VALUE;
        this.f4038y = false;
        this.f4036w = new C1021f(f);
    }

    @Override // androidx.p042e.p043a.AbstractC1000b
    /* renamed from: a */
    public final void mo43827a() {
        C1021f c1021f = this.f4036w;
        if (c1021f != null) {
            double d = (float) c1021f.f4044f;
            if (d > this.f4024u) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            }
            if (d < this.f4025v) {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
            C1021f c1021f2 = this.f4036w;
            c1021f2.f4042d = Math.abs(m43829c());
            c1021f2.f4043e = c1021f2.f4042d * 62.5d;
            super.mo43827a();
            return;
        }
        throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
    }

    /* renamed from: a */
    public final void m43826a(float f) {
        if (this.f4023t) {
            this.f4037x = f;
            return;
        }
        if (this.f4036w == null) {
            this.f4036w = new C1021f(f);
        }
        this.f4036w.f4044f = f;
        mo43827a();
    }

    @Override // androidx.p042e.p043a.AbstractC1000b
    /* renamed from: b */
    final boolean mo43825b(long j) {
        if (this.f4038y) {
            float f = this.f4037x;
            if (f != Float.MAX_VALUE) {
                this.f4036w.f4044f = f;
                this.f4037x = Float.MAX_VALUE;
            }
            this.f4019p = (float) this.f4036w.f4044f;
            this.f4018o = BitmapDescriptorFactory.HUE_RED;
            this.f4038y = false;
            return true;
        }
        if (this.f4037x != Float.MAX_VALUE) {
            long j2 = j / 2;
            AbstractC1000b.C1016a m43823a = this.f4036w.m43823a(this.f4019p, this.f4018o, j2);
            this.f4036w.f4044f = this.f4037x;
            this.f4037x = Float.MAX_VALUE;
            AbstractC1000b.C1016a m43823a2 = this.f4036w.m43823a(m43823a.f4032a, m43823a.f4033b, j2);
            this.f4019p = m43823a2.f4032a;
            this.f4018o = m43823a2.f4033b;
        } else {
            AbstractC1000b.C1016a m43823a3 = this.f4036w.m43823a(this.f4019p, this.f4018o, j);
            this.f4019p = m43823a3.f4032a;
            this.f4018o = m43823a3.f4033b;
        }
        this.f4019p = Math.max(this.f4019p, this.f4025v);
        this.f4019p = Math.min(this.f4019p, this.f4024u);
        float f2 = this.f4019p;
        float f3 = this.f4018o;
        C1021f c1021f = this.f4036w;
        if (!(((double) Math.abs(f3)) < c1021f.f4043e && ((double) Math.abs(f2 - ((float) c1021f.f4044f))) < c1021f.f4042d)) {
            return false;
        }
        this.f4019p = (float) this.f4036w.f4044f;
        this.f4018o = BitmapDescriptorFactory.HUE_RED;
        return true;
    }
}
