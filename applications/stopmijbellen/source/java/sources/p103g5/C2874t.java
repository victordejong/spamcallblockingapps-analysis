package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.t */
/* loaded from: classes-dex2jar.jar:g5/t.class */
public final class C2874t extends AbstractC2878v.AbstractC2883d.AbstractC2902e {

    /* renamed from: a */
    public final int f9784a;

    /* renamed from: b */
    public final String f9785b;

    /* renamed from: c */
    public final String f9786c;

    /* renamed from: d */
    public final boolean f9787d;

    public C2874t(int i, String str, String str2, boolean z, C2875a c2875a) {
        this.f9784a = i;
        this.f9785b = str;
        this.f9786c = str2;
        this.f9787d = z;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2902e
    /* renamed from: a */
    public String mo2875a() {
        return this.f9786c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2902e
    /* renamed from: b */
    public int mo2874b() {
        return this.f9784a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2902e
    /* renamed from: c */
    public String mo2873c() {
        return this.f9785b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2902e
    /* renamed from: d */
    public boolean mo2872d() {
        return this.f9787d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2902e)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2902e abstractC2902e = (AbstractC2878v.AbstractC2883d.AbstractC2902e) obj;
        if (this.f9784a != abstractC2902e.mo2874b() || !this.f9785b.equals(abstractC2902e.mo2873c()) || !this.f9786c.equals(abstractC2902e.mo2875a()) || this.f9787d != abstractC2902e.mo2872d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f9784a;
        int hashCode = this.f9785b.hashCode();
        return ((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ this.f9786c.hashCode()) * 1000003) ^ (this.f9787d ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("OperatingSystem{platform=");
        m8752j.append(this.f9784a);
        m8752j.append(", version=");
        m8752j.append(this.f9785b);
        m8752j.append(", buildVersion=");
        m8752j.append(this.f9786c);
        m8752j.append(", jailbroken=");
        m8752j.append(this.f9787d);
        m8752j.append("}");
        return m8752j.toString();
    }
}
