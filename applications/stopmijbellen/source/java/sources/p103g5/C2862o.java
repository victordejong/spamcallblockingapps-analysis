package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.o */
/* loaded from: classes-dex2jar.jar:g5/o.class */
public final class C2862o extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c {

    /* renamed from: a */
    public final String f9755a;

    /* renamed from: b */
    public final String f9756b;

    /* renamed from: c */
    public final long f9757c;

    public C2862o(String str, String str2, long j, C2863a c2863a) {
        this.f9755a = str;
        this.f9756b = str2;
        this.f9757c = j;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c
    /* renamed from: a */
    public long mo2893a() {
        return this.f9757c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c
    /* renamed from: b */
    public String mo2892b() {
        return this.f9756b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c
    /* renamed from: c */
    public String mo2891c() {
        return this.f9755a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c abstractC2895c = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2895c) obj;
        if (!this.f9755a.equals(abstractC2895c.mo2891c()) || !this.f9756b.equals(abstractC2895c.mo2892b()) || this.f9757c != abstractC2895c.mo2893a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f9755a.hashCode();
        int hashCode2 = this.f9756b.hashCode();
        long j = this.f9757c;
        return ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Signal{name=");
        m8752j.append(this.f9755a);
        m8752j.append(", code=");
        m8752j.append(this.f9756b);
        m8752j.append(", address=");
        m8752j.append(this.f9757c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
