package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzkl;
/* renamed from: c.d.b.d.i.a.l7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/l7.class */
public abstract class AbstractC4750l7 extends C4759m7 {

    /* renamed from: c */
    public boolean f17257c;

    public AbstractC4750l7(zzkl zzklVar) {
        super(zzklVar);
        this.f17274b.m8839a(this);
    }

    /* renamed from: m */
    public final boolean m24904m() {
        return this.f17257c;
    }

    /* renamed from: n */
    public final void m24903n() {
        if (!m24904m()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: o */
    public final void m24902o() {
        if (!this.f17257c) {
            mo8746q();
            this.f17274b.m8784u();
            this.f17257c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: q */
    public abstract boolean mo8746q();
}
