package p103g5;

import android.support.p012v4.media.C0082b;
import p007a6.C0033h;
import p103g5.AbstractC2878v;
/* renamed from: g5.n */
/* loaded from: classes-dex2jar.jar:g5/n.class */
public final class C2860n extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b {

    /* renamed from: a */
    public final String f9750a;

    /* renamed from: b */
    public final String f9751b;

    /* renamed from: c */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a> f9752c;

    /* renamed from: d */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b f9753d;

    /* renamed from: e */
    public final int f9754e;

    public C2860n(String str, String str2, C2904w c2904w, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b, int i, C2861a c2861a) {
        this.f9750a = str;
        this.f9751b = str2;
        this.f9752c = c2904w;
        this.f9753d = abstractC2894b;
        this.f9754e = i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b
    /* renamed from: a */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b mo2898a() {
        return this.f9753d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b
    /* renamed from: b */
    public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a> mo2897b() {
        return this.f9752c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b
    /* renamed from: c */
    public int mo2896c() {
        return this.f9754e;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b
    /* renamed from: d */
    public String mo2895d() {
        return this.f9751b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b
    /* renamed from: e */
    public String mo2894e() {
        return this.f9750a;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b2 = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b) obj;
        if (!this.f9750a.equals(abstractC2894b2.mo2894e()) || ((str = this.f9751b) != null ? !str.equals(abstractC2894b2.mo2895d()) : abstractC2894b2.mo2895d() != null) || !this.f9752c.equals(abstractC2894b2.mo2897b()) || ((abstractC2894b = this.f9753d) != null ? !abstractC2894b.equals(abstractC2894b2.mo2898a()) : abstractC2894b2.mo2898a() != null) || this.f9754e != abstractC2894b2.mo2896c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f9750a.hashCode();
        String str = this.f9751b;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int hashCode3 = this.f9752c.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b = this.f9753d;
        if (abstractC2894b != null) {
            i = abstractC2894b.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f9754e;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Exception{type=");
        m8752j.append(this.f9750a);
        m8752j.append(", reason=");
        m8752j.append(this.f9751b);
        m8752j.append(", frames=");
        m8752j.append(this.f9752c);
        m8752j.append(", causedBy=");
        m8752j.append(this.f9753d);
        m8752j.append(", overflowCount=");
        return C0033h.m8885l(m8752j, this.f9754e, "}");
    }
}
