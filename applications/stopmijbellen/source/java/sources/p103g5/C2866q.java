package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p007a6.C0033h;
import p103g5.AbstractC2878v;
/* renamed from: g5.q */
/* loaded from: classes-dex2jar.jar:g5/q.class */
public final class C2866q extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a {

    /* renamed from: a */
    public final long f9761a;

    /* renamed from: b */
    public final String f9762b;

    /* renamed from: c */
    public final String f9763c;

    /* renamed from: d */
    public final long f9764d;

    /* renamed from: e */
    public final int f9765e;

    /* renamed from: g5.q$b */
    /* loaded from: classes-dex2jar.jar:g5/q$b.class */
    public static final class C2868b extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a.AbstractC2898a {

        /* renamed from: a */
        public Long f9766a;

        /* renamed from: b */
        public String f9767b;

        /* renamed from: c */
        public String f9768c;

        /* renamed from: d */
        public Long f9769d;

        /* renamed from: e */
        public Integer f9770e;

        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a m2964a() {
            String str = this.f9766a == null ? " pc" : "";
            String str2 = str;
            if (this.f9767b == null) {
                str2 = C1676a.m4789h(str, " symbol");
            }
            String str3 = str2;
            if (this.f9769d == null) {
                str3 = C1676a.m4789h(str2, " offset");
            }
            String str4 = str3;
            if (this.f9770e == null) {
                str4 = C1676a.m4789h(str3, " importance");
            }
            if (str4.isEmpty()) {
                return new C2866q(this.f9766a.longValue(), this.f9767b, this.f9768c, this.f9769d.longValue(), this.f9770e.intValue(), null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str4));
        }
    }

    public C2866q(long j, String str, String str2, long j2, int i, C2867a c2867a) {
        this.f9761a = j;
        this.f9762b = str;
        this.f9763c = str2;
        this.f9764d = j2;
        this.f9765e = i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a
    /* renamed from: a */
    public String mo2887a() {
        return this.f9763c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a
    /* renamed from: b */
    public int mo2886b() {
        return this.f9765e;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a
    /* renamed from: c */
    public long mo2885c() {
        return this.f9764d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a
    /* renamed from: d */
    public long mo2884d() {
        return this.f9761a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a
    /* renamed from: e */
    public String mo2883e() {
        return this.f9762b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a abstractC2897a = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a) obj;
        if (this.f9761a != abstractC2897a.mo2884d() || !this.f9762b.equals(abstractC2897a.mo2883e()) || ((str = this.f9763c) != null ? !str.equals(abstractC2897a.mo2887a()) : abstractC2897a.mo2887a() != null) || this.f9764d != abstractC2897a.mo2885c() || this.f9765e != abstractC2897a.mo2886b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9761a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f9762b.hashCode();
        String str = this.f9763c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.f9764d;
        return this.f9765e ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Frame{pc=");
        m8752j.append(this.f9761a);
        m8752j.append(", symbol=");
        m8752j.append(this.f9762b);
        m8752j.append(", file=");
        m8752j.append(this.f9763c);
        m8752j.append(", offset=");
        m8752j.append(this.f9764d);
        m8752j.append(", importance=");
        return C0033h.m8885l(m8752j, this.f9765e, "}");
    }
}
