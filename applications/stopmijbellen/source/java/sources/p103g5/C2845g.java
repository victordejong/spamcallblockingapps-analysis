package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.g */
/* loaded from: classes-dex2jar.jar:g5/g.class */
public final class C2845g extends AbstractC2878v.AbstractC2883d.AbstractC2884a {

    /* renamed from: a */
    public final String f9704a;

    /* renamed from: b */
    public final String f9705b;

    /* renamed from: c */
    public final String f9706c;

    /* renamed from: d */
    public final AbstractC2878v.AbstractC2883d.AbstractC2884a.AbstractC2885a f9707d = null;

    /* renamed from: e */
    public final String f9708e;

    /* renamed from: f */
    public final String f9709f;

    /* renamed from: g */
    public final String f9710g;

    public C2845g(String str, String str2, String str3, AbstractC2878v.AbstractC2883d.AbstractC2884a.AbstractC2885a abstractC2885a, String str4, String str5, String str6, C2846a c2846a) {
        this.f9704a = str;
        this.f9705b = str2;
        this.f9706c = str3;
        this.f9708e = str4;
        this.f9709f = str5;
        this.f9710g = str6;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: a */
    public String mo2933a() {
        return this.f9709f;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: b */
    public String mo2932b() {
        return this.f9710g;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: c */
    public String mo2931c() {
        return this.f9706c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: d */
    public String mo2930d() {
        return this.f9704a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: e */
    public String mo2929e() {
        return this.f9708e;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC2878v.AbstractC2883d.AbstractC2884a.AbstractC2885a abstractC2885a;
        String str2;
        String str3;
        String str4;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2884a)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2884a abstractC2884a = (AbstractC2878v.AbstractC2883d.AbstractC2884a) obj;
        if (!this.f9704a.equals(abstractC2884a.mo2930d()) || !this.f9705b.equals(abstractC2884a.mo2927g()) || ((str = this.f9706c) != null ? !str.equals(abstractC2884a.mo2931c()) : abstractC2884a.mo2931c() != null) || ((abstractC2885a = this.f9707d) != null ? !abstractC2885a.equals(abstractC2884a.mo2928f()) : abstractC2884a.mo2928f() != null) || ((str2 = this.f9708e) != null ? !str2.equals(abstractC2884a.mo2929e()) : abstractC2884a.mo2929e() != null) || ((str3 = this.f9709f) != null ? !str3.equals(abstractC2884a.mo2933a()) : abstractC2884a.mo2933a() != null) || ((str4 = this.f9710g) != null ? !str4.equals(abstractC2884a.mo2932b()) : abstractC2884a.mo2932b() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: f */
    public AbstractC2878v.AbstractC2883d.AbstractC2884a.AbstractC2885a mo2928f() {
        return this.f9707d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2884a
    /* renamed from: g */
    public String mo2927g() {
        return this.f9705b;
    }

    public int hashCode() {
        int hashCode = this.f9704a.hashCode();
        int hashCode2 = this.f9705b.hashCode();
        String str = this.f9706c;
        int i = 0;
        int hashCode3 = str == null ? 0 : str.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2884a.AbstractC2885a abstractC2885a = this.f9707d;
        int hashCode4 = abstractC2885a == null ? 0 : abstractC2885a.hashCode();
        String str2 = this.f9708e;
        int hashCode5 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f9709f;
        int hashCode6 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f9710g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Application{identifier=");
        m8752j.append(this.f9704a);
        m8752j.append(", version=");
        m8752j.append(this.f9705b);
        m8752j.append(", displayVersion=");
        m8752j.append(this.f9706c);
        m8752j.append(", organization=");
        m8752j.append(this.f9707d);
        m8752j.append(", installationUuid=");
        m8752j.append(this.f9708e);
        m8752j.append(", developmentPlatform=");
        m8752j.append(this.f9709f);
        m8752j.append(", developmentPlatformVersion=");
        return C0082b.m8754h(m8752j, this.f9710g, "}");
    }
}
