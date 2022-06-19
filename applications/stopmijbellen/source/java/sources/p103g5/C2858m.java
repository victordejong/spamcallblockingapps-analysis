package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.m */
/* loaded from: classes-dex2jar.jar:g5/m.class */
public final class C2858m extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a {

    /* renamed from: a */
    public final long f9746a;

    /* renamed from: b */
    public final long f9747b;

    /* renamed from: c */
    public final String f9748c;

    /* renamed from: d */
    public final String f9749d;

    public C2858m(long j, long j2, String str, String str2, C2859a c2859a) {
        this.f9746a = j;
        this.f9747b = j2;
        this.f9748c = str;
        this.f9749d = str2;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a
    /* renamed from: a */
    public long mo2902a() {
        return this.f9746a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a
    /* renamed from: b */
    public String mo2901b() {
        return this.f9748c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a
    /* renamed from: c */
    public long mo2900c() {
        return this.f9747b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a
    /* renamed from: d */
    public String mo2899d() {
        return this.f9749d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a abstractC2893a = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2893a) obj;
        if (this.f9746a != abstractC2893a.mo2902a() || this.f9747b != abstractC2893a.mo2900c() || !this.f9748c.equals(abstractC2893a.mo2901b()) || ((str = this.f9749d) != null ? !str.equals(abstractC2893a.mo2899d()) : abstractC2893a.mo2899d() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9746a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f9747b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        int hashCode = this.f9748c.hashCode();
        String str = this.f9749d;
        return (str == null ? 0 : str.hashCode()) ^ ((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("BinaryImage{baseAddress=");
        m8752j.append(this.f9746a);
        m8752j.append(", size=");
        m8752j.append(this.f9747b);
        m8752j.append(", name=");
        m8752j.append(this.f9748c);
        m8752j.append(", uuid=");
        return C0082b.m8754h(m8752j, this.f9749d, "}");
    }
}
