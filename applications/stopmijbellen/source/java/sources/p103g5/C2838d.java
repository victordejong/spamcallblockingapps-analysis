package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.d */
/* loaded from: classes-dex2jar.jar:g5/d.class */
public final class C2838d extends AbstractC2878v.AbstractC2881c {

    /* renamed from: a */
    public final C2904w<AbstractC2878v.AbstractC2881c.AbstractC2882a> f9678a;

    /* renamed from: b */
    public final String f9679b;

    public C2838d(C2904w c2904w, String str, C2839a c2839a) {
        this.f9678a = c2904w;
        this.f9679b = str;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2881c
    /* renamed from: a */
    public C2904w<AbstractC2878v.AbstractC2881c.AbstractC2882a> mo2949a() {
        return this.f9678a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2881c
    /* renamed from: b */
    public String mo2948b() {
        return this.f9679b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2881c)) {
            return false;
        }
        AbstractC2878v.AbstractC2881c abstractC2881c = (AbstractC2878v.AbstractC2881c) obj;
        if (!this.f9678a.equals(abstractC2881c.mo2949a()) || ((str = this.f9679b) != null ? !str.equals(abstractC2881c.mo2948b()) : abstractC2881c.mo2948b() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f9678a.hashCode();
        String str = this.f9679b;
        return ((hashCode ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("FilesPayload{files=");
        m8752j.append(this.f9678a);
        m8752j.append(", orgId=");
        return C0082b.m8754h(m8752j, this.f9679b, "}");
    }
}
