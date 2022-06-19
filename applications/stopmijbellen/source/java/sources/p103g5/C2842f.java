package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p007a6.C0033h;
import p103g5.AbstractC2878v;
/* renamed from: g5.f */
/* loaded from: classes-dex2jar.jar:g5/f.class */
public final class C2842f extends AbstractC2878v.AbstractC2883d {

    /* renamed from: a */
    public final String f9682a;

    /* renamed from: b */
    public final String f9683b;

    /* renamed from: c */
    public final long f9684c;

    /* renamed from: d */
    public final Long f9685d;

    /* renamed from: e */
    public final boolean f9686e;

    /* renamed from: f */
    public final AbstractC2878v.AbstractC2883d.AbstractC2884a f9687f;

    /* renamed from: g */
    public final AbstractC2878v.AbstractC2883d.AbstractC2903f f9688g;

    /* renamed from: h */
    public final AbstractC2878v.AbstractC2883d.AbstractC2902e f9689h;

    /* renamed from: i */
    public final AbstractC2878v.AbstractC2883d.AbstractC2887c f9690i;

    /* renamed from: j */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d> f9691j;

    /* renamed from: k */
    public final int f9692k;

    /* renamed from: g5.f$b */
    /* loaded from: classes-dex2jar.jar:g5/f$b.class */
    public static final class C2844b extends AbstractC2878v.AbstractC2883d.AbstractC2886b {

        /* renamed from: a */
        public String f9693a;

        /* renamed from: b */
        public String f9694b;

        /* renamed from: c */
        public Long f9695c;

        /* renamed from: d */
        public Long f9696d;

        /* renamed from: e */
        public Boolean f9697e;

        /* renamed from: f */
        public AbstractC2878v.AbstractC2883d.AbstractC2884a f9698f;

        /* renamed from: g */
        public AbstractC2878v.AbstractC2883d.AbstractC2903f f9699g;

        /* renamed from: h */
        public AbstractC2878v.AbstractC2883d.AbstractC2902e f9700h;

        /* renamed from: i */
        public AbstractC2878v.AbstractC2883d.AbstractC2887c f9701i;

        /* renamed from: j */
        public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d> f9702j;

        /* renamed from: k */
        public Integer f9703k;

        public C2844b() {
        }

        public C2844b(AbstractC2878v.AbstractC2883d abstractC2883d, C2843a c2843a) {
            C2842f c2842f = (C2842f) abstractC2883d;
            this.f9693a = c2842f.f9682a;
            this.f9694b = c2842f.f9683b;
            this.f9695c = Long.valueOf(c2842f.f9684c);
            this.f9696d = c2842f.f9685d;
            this.f9697e = Boolean.valueOf(c2842f.f9686e);
            this.f9698f = c2842f.f9687f;
            this.f9699g = c2842f.f9688g;
            this.f9700h = c2842f.f9689h;
            this.f9701i = c2842f.f9690i;
            this.f9702j = c2842f.f9691j;
            this.f9703k = Integer.valueOf(c2842f.f9692k);
        }

        @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2886b
        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d mo2925a() {
            String str = this.f9693a == null ? " generator" : "";
            String str2 = str;
            if (this.f9694b == null) {
                str2 = C1676a.m4789h(str, " identifier");
            }
            String str3 = str2;
            if (this.f9695c == null) {
                str3 = C1676a.m4789h(str2, " startedAt");
            }
            String str4 = str3;
            if (this.f9697e == null) {
                str4 = C1676a.m4789h(str3, " crashed");
            }
            String str5 = str4;
            if (this.f9698f == null) {
                str5 = C1676a.m4789h(str4, " app");
            }
            String str6 = str5;
            if (this.f9703k == null) {
                str6 = C1676a.m4789h(str5, " generatorType");
            }
            if (str6.isEmpty()) {
                return new C2842f(this.f9693a, this.f9694b, this.f9695c.longValue(), this.f9696d, this.f9697e.booleanValue(), this.f9698f, this.f9699g, this.f9700h, this.f9701i, this.f9702j, this.f9703k.intValue(), null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str6));
        }

        /* renamed from: b */
        public AbstractC2878v.AbstractC2883d.AbstractC2886b m2968b(boolean z) {
            this.f9697e = Boolean.valueOf(z);
            return this;
        }
    }

    public C2842f(String str, String str2, long j, Long l, boolean z, AbstractC2878v.AbstractC2883d.AbstractC2884a abstractC2884a, AbstractC2878v.AbstractC2883d.AbstractC2903f abstractC2903f, AbstractC2878v.AbstractC2883d.AbstractC2902e abstractC2902e, AbstractC2878v.AbstractC2883d.AbstractC2887c abstractC2887c, C2904w c2904w, int i, C2843a c2843a) {
        this.f9682a = str;
        this.f9683b = str2;
        this.f9684c = j;
        this.f9685d = l;
        this.f9686e = z;
        this.f9687f = abstractC2884a;
        this.f9688g = abstractC2903f;
        this.f9689h = abstractC2902e;
        this.f9690i = abstractC2887c;
        this.f9691j = c2904w;
        this.f9692k = i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: a */
    public AbstractC2878v.AbstractC2883d.AbstractC2884a mo2945a() {
        return this.f9687f;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: b */
    public AbstractC2878v.AbstractC2883d.AbstractC2887c mo2944b() {
        return this.f9690i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: c */
    public Long mo2943c() {
        return this.f9685d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: d */
    public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d> mo2942d() {
        return this.f9691j;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: e */
    public String mo2941e() {
        return this.f9682a;
    }

    public boolean equals(Object obj) {
        Long l;
        AbstractC2878v.AbstractC2883d.AbstractC2903f abstractC2903f;
        AbstractC2878v.AbstractC2883d.AbstractC2902e abstractC2902e;
        AbstractC2878v.AbstractC2883d.AbstractC2887c abstractC2887c;
        C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d> c2904w;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d abstractC2883d = (AbstractC2878v.AbstractC2883d) obj;
        if (!this.f9682a.equals(abstractC2883d.mo2941e()) || !this.f9683b.equals(abstractC2883d.mo2939g()) || this.f9684c != abstractC2883d.mo2937i() || ((l = this.f9685d) != null ? !l.equals(abstractC2883d.mo2943c()) : abstractC2883d.mo2943c() != null) || this.f9686e != abstractC2883d.mo2935k() || !this.f9687f.equals(abstractC2883d.mo2945a()) || ((abstractC2903f = this.f9688g) != null ? !abstractC2903f.equals(abstractC2883d.mo2936j()) : abstractC2883d.mo2936j() != null) || ((abstractC2902e = this.f9689h) != null ? !abstractC2902e.equals(abstractC2883d.mo2938h()) : abstractC2883d.mo2938h() != null) || ((abstractC2887c = this.f9690i) != null ? !abstractC2887c.equals(abstractC2883d.mo2944b()) : abstractC2883d.mo2944b() != null) || ((c2904w = this.f9691j) != null ? !c2904w.equals(abstractC2883d.mo2942d()) : abstractC2883d.mo2942d() != null) || this.f9692k != abstractC2883d.mo2940f()) {
            z = false;
        }
        return z;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: f */
    public int mo2940f() {
        return this.f9692k;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: g */
    public String mo2939g() {
        return this.f9683b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: h */
    public AbstractC2878v.AbstractC2883d.AbstractC2902e mo2938h() {
        return this.f9689h;
    }

    public int hashCode() {
        int hashCode = this.f9682a.hashCode();
        int hashCode2 = this.f9683b.hashCode();
        long j = this.f9684c;
        int i = (int) (j ^ (j >>> 32));
        Long l = this.f9685d;
        int i2 = 0;
        int hashCode3 = l == null ? 0 : l.hashCode();
        int i3 = this.f9686e ? 1231 : 1237;
        int hashCode4 = this.f9687f.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2903f abstractC2903f = this.f9688g;
        int hashCode5 = abstractC2903f == null ? 0 : abstractC2903f.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2902e abstractC2902e = this.f9689h;
        int hashCode6 = abstractC2902e == null ? 0 : abstractC2902e.hashCode();
        AbstractC2878v.AbstractC2883d.AbstractC2887c abstractC2887c = this.f9690i;
        int hashCode7 = abstractC2887c == null ? 0 : abstractC2887c.hashCode();
        C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d> c2904w = this.f9691j;
        if (c2904w != null) {
            i2 = c2904w.hashCode();
        }
        return ((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ i3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ i2) * 1000003) ^ this.f9692k;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: i */
    public long mo2937i() {
        return this.f9684c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: j */
    public AbstractC2878v.AbstractC2883d.AbstractC2903f mo2936j() {
        return this.f9688g;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: k */
    public boolean mo2935k() {
        return this.f9686e;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d
    /* renamed from: l */
    public AbstractC2878v.AbstractC2883d.AbstractC2886b mo2934l() {
        return new C2844b(this, null);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Session{generator=");
        m8752j.append(this.f9682a);
        m8752j.append(", identifier=");
        m8752j.append(this.f9683b);
        m8752j.append(", startedAt=");
        m8752j.append(this.f9684c);
        m8752j.append(", endedAt=");
        m8752j.append(this.f9685d);
        m8752j.append(", crashed=");
        m8752j.append(this.f9686e);
        m8752j.append(", app=");
        m8752j.append(this.f9687f);
        m8752j.append(", user=");
        m8752j.append(this.f9688g);
        m8752j.append(", os=");
        m8752j.append(this.f9689h);
        m8752j.append(", device=");
        m8752j.append(this.f9690i);
        m8752j.append(", events=");
        m8752j.append(this.f9691j);
        m8752j.append(", generatorType=");
        return C0033h.m8885l(m8752j, this.f9692k, "}");
    }
}
