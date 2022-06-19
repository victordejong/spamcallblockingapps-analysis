package p007a6;

import android.support.p012v4.media.C0082b;
import p237t.C4350g;
/* renamed from: a6.a */
/* loaded from: classes-dex2jar.jar:a6/a.class */
public final class C0022a extends AbstractC0029e {

    /* renamed from: a */
    public final String f26a;

    /* renamed from: b */
    public final String f27b;

    /* renamed from: c */
    public final String f28c;

    /* renamed from: d */
    public final AbstractC0031g f29d;

    /* renamed from: e */
    public final int f30e;

    public C0022a(String str, String str2, String str3, AbstractC0031g abstractC0031g, int i, C0023a c0023a) {
        this.f26a = str;
        this.f27b = str2;
        this.f28c = str3;
        this.f29d = abstractC0031g;
        this.f30e = i;
    }

    @Override // p007a6.AbstractC0029e
    /* renamed from: a */
    public AbstractC0031g mo8909a() {
        return this.f29d;
    }

    @Override // p007a6.AbstractC0029e
    /* renamed from: b */
    public String mo8908b() {
        return this.f27b;
    }

    @Override // p007a6.AbstractC0029e
    /* renamed from: c */
    public String mo8907c() {
        return this.f28c;
    }

    @Override // p007a6.AbstractC0029e
    /* renamed from: d */
    public int mo8906d() {
        return this.f30e;
    }

    @Override // p007a6.AbstractC0029e
    /* renamed from: e */
    public String mo8905e() {
        return this.f26a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0029e)) {
            return false;
        }
        AbstractC0029e abstractC0029e = (AbstractC0029e) obj;
        String str = this.f26a;
        if (str != null ? str.equals(abstractC0029e.mo8905e()) : abstractC0029e.mo8905e() == null) {
            String str2 = this.f27b;
            if (str2 != null ? str2.equals(abstractC0029e.mo8908b()) : abstractC0029e.mo8908b() == null) {
                String str3 = this.f28c;
                if (str3 != null ? str3.equals(abstractC0029e.mo8907c()) : abstractC0029e.mo8907c() == null) {
                    AbstractC0031g abstractC0031g = this.f29d;
                    if (abstractC0031g != null ? abstractC0031g.equals(abstractC0029e.mo8909a()) : abstractC0029e.mo8909a() == null) {
                        int i = this.f30e;
                        if (i != 0) {
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f26a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f27b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f28c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        AbstractC0031g abstractC0031g = this.f29d;
        int hashCode4 = abstractC0031g == null ? 0 : abstractC0031g.hashCode();
        int i2 = this.f30e;
        if (i2 != 0) {
            i = C4350g.m1021c(i2);
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("InstallationResponse{uri=");
        m8752j.append(this.f26a);
        m8752j.append(", fid=");
        m8752j.append(this.f27b);
        m8752j.append(", refreshToken=");
        m8752j.append(this.f28c);
        m8752j.append(", authToken=");
        m8752j.append(this.f29d);
        m8752j.append(", responseCode=");
        m8752j.append(C0028d.m8910j(this.f30e));
        m8752j.append("}");
        return m8752j.toString();
    }
}
