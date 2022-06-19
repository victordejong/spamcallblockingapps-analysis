package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.j */
/* loaded from: classes-dex2jar.jar:g5/j.class */
public final class C2851j extends AbstractC2878v.AbstractC2883d.AbstractC2889d {

    /* renamed from: a */
    public final long f9729a;

    /* renamed from: b */
    public final String f9730b;

    /* renamed from: c */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a f9731c;

    /* renamed from: d */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b f9732d;

    /* renamed from: e */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c f9733e;

    public C2851j(long j, String str, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a abstractC2890a, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b abstractC2899b, AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c abstractC2901c, C2852a c2852a) {
        this.f9729a = j;
        this.f9730b = str;
        this.f9731c = abstractC2890a;
        this.f9732d = abstractC2899b;
        this.f9733e = abstractC2901c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d
    /* renamed from: a */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a mo2915a() {
        return this.f9731c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d
    /* renamed from: b */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b mo2914b() {
        return this.f9732d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d
    /* renamed from: c */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c mo2913c() {
        return this.f9733e;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d
    /* renamed from: d */
    public long mo2912d() {
        return this.f9729a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d
    /* renamed from: e */
    public String mo2911e() {
        return this.f9730b;
    }

    public boolean equals(Object obj) {
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c abstractC2901c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d abstractC2889d = (AbstractC2878v.AbstractC2883d.AbstractC2889d) obj;
        if (this.f9729a != abstractC2889d.mo2912d() || !this.f9730b.equals(abstractC2889d.mo2911e()) || !this.f9731c.equals(abstractC2889d.mo2915a()) || !this.f9732d.equals(abstractC2889d.mo2914b()) || ((abstractC2901c = this.f9733e) != null ? !abstractC2901c.equals(abstractC2889d.mo2913c()) : abstractC2889d.mo2913c() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9729a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f9730b.hashCode();
        int hashCode2 = this.f9731c.hashCode();
        int hashCode3 = this.f9732d.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c abstractC2901c = this.f9733e;
        return (abstractC2901c == null ? 0 : abstractC2901c.hashCode()) ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Event{timestamp=");
        m8752j.append(this.f9729a);
        m8752j.append(", type=");
        m8752j.append(this.f9730b);
        m8752j.append(", app=");
        m8752j.append(this.f9731c);
        m8752j.append(", device=");
        m8752j.append(this.f9732d);
        m8752j.append(", log=");
        m8752j.append(this.f9733e);
        m8752j.append("}");
        return m8752j.toString();
    }
}
