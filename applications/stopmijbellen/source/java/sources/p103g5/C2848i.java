package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p103g5.AbstractC2878v;
/* renamed from: g5.i */
/* loaded from: classes-dex2jar.jar:g5/i.class */
public final class C2848i extends AbstractC2878v.AbstractC2883d.AbstractC2887c {

    /* renamed from: a */
    public final int f9711a;

    /* renamed from: b */
    public final String f9712b;

    /* renamed from: c */
    public final int f9713c;

    /* renamed from: d */
    public final long f9714d;

    /* renamed from: e */
    public final long f9715e;

    /* renamed from: f */
    public final boolean f9716f;

    /* renamed from: g */
    public final int f9717g;

    /* renamed from: h */
    public final String f9718h;

    /* renamed from: i */
    public final String f9719i;

    /* renamed from: g5.i$b */
    /* loaded from: classes-dex2jar.jar:g5/i$b.class */
    public static final class C2850b extends AbstractC2878v.AbstractC2883d.AbstractC2887c.AbstractC2888a {

        /* renamed from: a */
        public Integer f9720a;

        /* renamed from: b */
        public String f9721b;

        /* renamed from: c */
        public Integer f9722c;

        /* renamed from: d */
        public Long f9723d;

        /* renamed from: e */
        public Long f9724e;

        /* renamed from: f */
        public Boolean f9725f;

        /* renamed from: g */
        public Integer f9726g;

        /* renamed from: h */
        public String f9727h;

        /* renamed from: i */
        public String f9728i;

        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d.AbstractC2887c m2967a() {
            String str = this.f9720a == null ? " arch" : "";
            String str2 = str;
            if (this.f9721b == null) {
                str2 = C1676a.m4789h(str, " model");
            }
            String str3 = str2;
            if (this.f9722c == null) {
                str3 = C1676a.m4789h(str2, " cores");
            }
            String str4 = str3;
            if (this.f9723d == null) {
                str4 = C1676a.m4789h(str3, " ram");
            }
            String str5 = str4;
            if (this.f9724e == null) {
                str5 = C1676a.m4789h(str4, " diskSpace");
            }
            String str6 = str5;
            if (this.f9725f == null) {
                str6 = C1676a.m4789h(str5, " simulator");
            }
            String str7 = str6;
            if (this.f9726g == null) {
                str7 = C1676a.m4789h(str6, " state");
            }
            String str8 = str7;
            if (this.f9727h == null) {
                str8 = C1676a.m4789h(str7, " manufacturer");
            }
            String str9 = str8;
            if (this.f9728i == null) {
                str9 = C1676a.m4789h(str8, " modelClass");
            }
            if (str9.isEmpty()) {
                return new C2848i(this.f9720a.intValue(), this.f9721b, this.f9722c.intValue(), this.f9723d.longValue(), this.f9724e.longValue(), this.f9725f.booleanValue(), this.f9726g.intValue(), this.f9727h, this.f9728i, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str9));
        }
    }

    public C2848i(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3, C2849a c2849a) {
        this.f9711a = i;
        this.f9712b = str;
        this.f9713c = i2;
        this.f9714d = j;
        this.f9715e = j2;
        this.f9716f = z;
        this.f9717g = i3;
        this.f9718h = str2;
        this.f9719i = str3;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: a */
    public int mo2924a() {
        return this.f9711a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: b */
    public int mo2923b() {
        return this.f9713c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: c */
    public long mo2922c() {
        return this.f9715e;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: d */
    public String mo2921d() {
        return this.f9718h;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: e */
    public String mo2920e() {
        return this.f9712b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2887c)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2887c abstractC2887c = (AbstractC2878v.AbstractC2883d.AbstractC2887c) obj;
        if (this.f9711a != abstractC2887c.mo2924a() || !this.f9712b.equals(abstractC2887c.mo2920e()) || this.f9713c != abstractC2887c.mo2923b() || this.f9714d != abstractC2887c.mo2918g() || this.f9715e != abstractC2887c.mo2922c() || this.f9716f != abstractC2887c.mo2916i() || this.f9717g != abstractC2887c.mo2917h() || !this.f9718h.equals(abstractC2887c.mo2921d()) || !this.f9719i.equals(abstractC2887c.mo2919f())) {
            z = false;
        }
        return z;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: f */
    public String mo2919f() {
        return this.f9719i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: g */
    public long mo2918g() {
        return this.f9714d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: h */
    public int mo2917h() {
        return this.f9717g;
    }

    public int hashCode() {
        int i = this.f9711a;
        int hashCode = this.f9712b.hashCode();
        int i2 = this.f9713c;
        long j = this.f9714d;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.f9715e;
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f9716f ? 1231 : 1237)) * 1000003) ^ this.f9717g) * 1000003) ^ this.f9718h.hashCode()) * 1000003) ^ this.f9719i.hashCode();
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2887c
    /* renamed from: i */
    public boolean mo2916i() {
        return this.f9716f;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Device{arch=");
        m8752j.append(this.f9711a);
        m8752j.append(", model=");
        m8752j.append(this.f9712b);
        m8752j.append(", cores=");
        m8752j.append(this.f9713c);
        m8752j.append(", ram=");
        m8752j.append(this.f9714d);
        m8752j.append(", diskSpace=");
        m8752j.append(this.f9715e);
        m8752j.append(", simulator=");
        m8752j.append(this.f9716f);
        m8752j.append(", state=");
        m8752j.append(this.f9717g);
        m8752j.append(", manufacturer=");
        m8752j.append(this.f9718h);
        m8752j.append(", modelClass=");
        return C0082b.m8754h(m8752j, this.f9719i, "}");
    }
}
