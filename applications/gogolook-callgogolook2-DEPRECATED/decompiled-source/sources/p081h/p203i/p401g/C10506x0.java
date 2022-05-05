package p081h.p203i.p401g;

import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.AbstractC10219a.AbstractC10220a;
import p081h.p203i.p401g.AbstractC10444n0;
/* renamed from: h.i.g.x0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/x0.class */
public class C10506x0<MType extends AbstractC10219a, BType extends AbstractC10219a.AbstractC10220a, IType extends AbstractC10444n0> implements AbstractC10219a.AbstractC10221b {

    /* renamed from: a */
    public AbstractC10219a.AbstractC10221b f23880a;

    /* renamed from: b */
    public BType f23881b;

    /* renamed from: c */
    public MType f23882c;

    /* renamed from: d */
    public boolean f23883d;

    public C10506x0(MType mtype, AbstractC10219a.AbstractC10221b bVar, boolean z) {
        C10516z.m11545a(mtype);
        this.f23882c = mtype;
        this.f23880a = bVar;
        this.f23883d = z;
    }

    /* renamed from: a */
    public C10506x0<MType, BType, IType> m11584a(MType mtype) {
        MType mtype2;
        if (this.f23881b == null && (mtype2 = this.f23882c) == mtype2.mo11818b()) {
            this.f23882c = mtype;
        } else {
            m11582c().mo11824a(mtype);
        }
        m11580e();
        return this;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10221b
    /* renamed from: a */
    public void mo11585a() {
        m11580e();
    }

    /* renamed from: b */
    public MType m11583b() {
        this.f23883d = true;
        return m11581d();
    }

    /* renamed from: c */
    public BType m11582c() {
        if (this.f23881b == null) {
            this.f23881b = (BType) ((AbstractC10219a.AbstractC10220a) this.f23882c.mo11693a(this));
            this.f23881b.mo11824a(this.f23882c);
            this.f23881b.mo11663e();
        }
        return this.f23881b;
    }

    /* renamed from: d */
    public MType m11581d() {
        if (this.f23882c == null) {
            this.f23882c = (MType) ((AbstractC10219a) this.f23881b.mo11825E());
        }
        return this.f23882c;
    }

    /* renamed from: e */
    public final void m11580e() {
        AbstractC10219a.AbstractC10221b bVar;
        if (this.f23881b != null) {
            this.f23882c = null;
        }
        if (this.f23883d && (bVar = this.f23880a) != null) {
            bVar.mo11585a();
            this.f23883d = false;
        }
    }
}
