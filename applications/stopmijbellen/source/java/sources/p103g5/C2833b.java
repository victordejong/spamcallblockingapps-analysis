package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p103g5.AbstractC2878v;
/* renamed from: g5.b */
/* loaded from: classes-dex2jar.jar:g5/b.class */
public final class C2833b extends AbstractC2878v {

    /* renamed from: b */
    public final String f9660b;

    /* renamed from: c */
    public final String f9661c;

    /* renamed from: d */
    public final int f9662d;

    /* renamed from: e */
    public final String f9663e;

    /* renamed from: f */
    public final String f9664f;

    /* renamed from: g */
    public final String f9665g;

    /* renamed from: h */
    public final AbstractC2878v.AbstractC2883d f9666h;

    /* renamed from: i */
    public final AbstractC2878v.AbstractC2881c f9667i;

    /* renamed from: g5.b$b */
    /* loaded from: classes-dex2jar.jar:g5/b$b.class */
    public static final class C2835b extends AbstractC2878v.AbstractC2879a {

        /* renamed from: a */
        public String f9668a;

        /* renamed from: b */
        public String f9669b;

        /* renamed from: c */
        public Integer f9670c;

        /* renamed from: d */
        public String f9671d;

        /* renamed from: e */
        public String f9672e;

        /* renamed from: f */
        public String f9673f;

        /* renamed from: g */
        public AbstractC2878v.AbstractC2883d f9674g;

        /* renamed from: h */
        public AbstractC2878v.AbstractC2881c f9675h;

        public C2835b() {
        }

        public C2835b(AbstractC2878v abstractC2878v, C2834a c2834a) {
            C2833b c2833b = (C2833b) abstractC2878v;
            this.f9668a = c2833b.f9660b;
            this.f9669b = c2833b.f9661c;
            this.f9670c = Integer.valueOf(c2833b.f9662d);
            this.f9671d = c2833b.f9663e;
            this.f9672e = c2833b.f9664f;
            this.f9673f = c2833b.f9665g;
            this.f9674g = c2833b.f9666h;
            this.f9675h = c2833b.f9667i;
        }

        @Override // p103g5.AbstractC2878v.AbstractC2879a
        /* renamed from: a */
        public AbstractC2878v mo2952a() {
            String str = this.f9668a == null ? " sdkVersion" : "";
            String str2 = str;
            if (this.f9669b == null) {
                str2 = C1676a.m4789h(str, " gmpAppId");
            }
            String str3 = str2;
            if (this.f9670c == null) {
                str3 = C1676a.m4789h(str2, " platform");
            }
            String str4 = str3;
            if (this.f9671d == null) {
                str4 = C1676a.m4789h(str3, " installationUuid");
            }
            String str5 = str4;
            if (this.f9672e == null) {
                str5 = C1676a.m4789h(str4, " buildVersion");
            }
            String str6 = str5;
            if (this.f9673f == null) {
                str6 = C1676a.m4789h(str5, " displayVersion");
            }
            if (str6.isEmpty()) {
                return new C2833b(this.f9668a, this.f9669b, this.f9670c.intValue(), this.f9671d, this.f9672e, this.f9673f, this.f9674g, this.f9675h, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str6));
        }
    }

    public C2833b(String str, String str2, int i, String str3, String str4, String str5, AbstractC2878v.AbstractC2883d abstractC2883d, AbstractC2878v.AbstractC2881c abstractC2881c, C2834a c2834a) {
        this.f9660b = str;
        this.f9661c = str2;
        this.f9662d = i;
        this.f9663e = str3;
        this.f9664f = str4;
        this.f9665g = str5;
        this.f9666h = abstractC2883d;
        this.f9667i = abstractC2881c;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: a */
    public String mo2962a() {
        return this.f9664f;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: b */
    public String mo2961b() {
        return this.f9665g;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: c */
    public String mo2960c() {
        return this.f9661c;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: d */
    public String mo2959d() {
        return this.f9663e;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: e */
    public AbstractC2878v.AbstractC2881c mo2958e() {
        return this.f9667i;
    }

    public boolean equals(Object obj) {
        AbstractC2878v.AbstractC2883d abstractC2883d;
        AbstractC2878v.AbstractC2881c abstractC2881c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v)) {
            return false;
        }
        AbstractC2878v abstractC2878v = (AbstractC2878v) obj;
        if (!this.f9660b.equals(abstractC2878v.mo2956g()) || !this.f9661c.equals(abstractC2878v.mo2960c()) || this.f9662d != abstractC2878v.mo2957f() || !this.f9663e.equals(abstractC2878v.mo2959d()) || !this.f9664f.equals(abstractC2878v.mo2962a()) || !this.f9665g.equals(abstractC2878v.mo2961b()) || ((abstractC2883d = this.f9666h) != null ? !abstractC2883d.equals(abstractC2878v.mo2955h()) : abstractC2878v.mo2955h() != null) || ((abstractC2881c = this.f9667i) != null ? !abstractC2881c.equals(abstractC2878v.mo2958e()) : abstractC2878v.mo2958e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: f */
    public int mo2957f() {
        return this.f9662d;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: g */
    public String mo2956g() {
        return this.f9660b;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: h */
    public AbstractC2878v.AbstractC2883d mo2955h() {
        return this.f9666h;
    }

    public int hashCode() {
        int hashCode = this.f9660b.hashCode();
        int hashCode2 = this.f9661c.hashCode();
        int i = this.f9662d;
        int hashCode3 = this.f9663e.hashCode();
        int hashCode4 = this.f9664f.hashCode();
        int hashCode5 = this.f9665g.hashCode();
        AbstractC2878v.AbstractC2883d abstractC2883d = this.f9666h;
        int i2 = 0;
        int hashCode6 = abstractC2883d == null ? 0 : abstractC2883d.hashCode();
        AbstractC2878v.AbstractC2881c abstractC2881c = this.f9667i;
        if (abstractC2881c != null) {
            i2 = abstractC2881c.hashCode();
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i2;
    }

    @Override // p103g5.AbstractC2878v
    /* renamed from: i */
    public AbstractC2878v.AbstractC2879a mo2954i() {
        return new C2835b(this, null);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CrashlyticsReport{sdkVersion=");
        m8752j.append(this.f9660b);
        m8752j.append(", gmpAppId=");
        m8752j.append(this.f9661c);
        m8752j.append(", platform=");
        m8752j.append(this.f9662d);
        m8752j.append(", installationUuid=");
        m8752j.append(this.f9663e);
        m8752j.append(", buildVersion=");
        m8752j.append(this.f9664f);
        m8752j.append(", displayVersion=");
        m8752j.append(this.f9665g);
        m8752j.append(", session=");
        m8752j.append(this.f9666h);
        m8752j.append(", ndkPayload=");
        m8752j.append(this.f9667i);
        m8752j.append("}");
        return m8752j.toString();
    }
}
