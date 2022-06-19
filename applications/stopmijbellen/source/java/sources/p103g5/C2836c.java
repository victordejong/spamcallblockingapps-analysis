package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.c */
/* loaded from: classes-dex2jar.jar:g5/c.class */
public final class C2836c extends AbstractC2878v.AbstractC2880b {

    /* renamed from: a */
    public final String f9676a;

    /* renamed from: b */
    public final String f9677b;

    public C2836c(String str, String str2, C2837a c2837a) {
        this.f9676a = str;
        this.f9677b = str2;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2880b
    /* renamed from: a */
    public String mo2951a() {
        return this.f9676a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2880b
    /* renamed from: b */
    public String mo2950b() {
        return this.f9677b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2880b)) {
            return false;
        }
        AbstractC2878v.AbstractC2880b abstractC2880b = (AbstractC2878v.AbstractC2880b) obj;
        if (!this.f9676a.equals(abstractC2880b.mo2951a()) || !this.f9677b.equals(abstractC2880b.mo2950b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f9676a.hashCode() ^ 1000003) * 1000003) ^ this.f9677b.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CustomAttribute{key=");
        m8752j.append(this.f9676a);
        m8752j.append(", value=");
        return C0082b.m8754h(m8752j, this.f9677b, "}");
    }
}
