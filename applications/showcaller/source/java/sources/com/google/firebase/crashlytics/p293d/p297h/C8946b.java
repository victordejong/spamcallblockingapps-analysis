package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/b.class */
final class C8946b extends AbstractC9004v {

    /* renamed from: b */
    private final String f39020b;

    /* renamed from: c */
    private final String f39021c;

    /* renamed from: d */
    private final int f39022d;

    /* renamed from: e */
    private final String f39023e;

    /* renamed from: f */
    private final String f39024f;

    /* renamed from: g */
    private final String f39025g;

    /* renamed from: h */
    private final AbstractC9004v.AbstractC9012d f39026h;

    /* renamed from: i */
    private final AbstractC9004v.AbstractC9008c f39027i;

    /* renamed from: com.google.firebase.crashlytics.d.h.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/b$b.class */
    public static final class C8948b extends AbstractC9004v.AbstractC9005a {

        /* renamed from: a */
        private String f39028a;

        /* renamed from: b */
        private String f39029b;

        /* renamed from: c */
        private Integer f39030c;

        /* renamed from: d */
        private String f39031d;

        /* renamed from: e */
        private String f39032e;

        /* renamed from: f */
        private String f39033f;

        /* renamed from: g */
        private AbstractC9004v.AbstractC9012d f39034g;

        /* renamed from: h */
        private AbstractC9004v.AbstractC9008c f39035h;

        public C8948b() {
        }

        private C8948b(AbstractC9004v abstractC9004v) {
            this.f39028a = abstractC9004v.mo2302i();
            this.f39029b = abstractC9004v.mo2306e();
            this.f39030c = Integer.valueOf(abstractC9004v.mo2303h());
            this.f39031d = abstractC9004v.mo2305f();
            this.f39032e = abstractC9004v.mo2308c();
            this.f39033f = abstractC9004v.mo2307d();
            this.f39034g = abstractC9004v.mo2301j();
            this.f39035h = abstractC9004v.mo2304g();
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: a */
        public AbstractC9004v mo2296a() {
            String str = "";
            if (this.f39028a == null) {
                str = " sdkVersion";
            }
            String str2 = str;
            if (this.f39029b == null) {
                str2 = str + " gmpAppId";
            }
            String str3 = str2;
            if (this.f39030c == null) {
                str3 = str2 + " platform";
            }
            String str4 = str3;
            if (this.f39031d == null) {
                str4 = str3 + " installationUuid";
            }
            String str5 = str4;
            if (this.f39032e == null) {
                str5 = str4 + " buildVersion";
            }
            String str6 = str5;
            if (this.f39033f == null) {
                str6 = str5 + " displayVersion";
            }
            if (str6.isEmpty()) {
                return new C8946b(this.f39028a, this.f39029b, this.f39030c.intValue(), this.f39031d, this.f39032e, this.f39033f, this.f39034g, this.f39035h);
            }
            throw new IllegalStateException("Missing required properties:" + str6);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9005a mo2295b(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.f39032e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9005a mo2294c(String str) {
            Objects.requireNonNull(str, "Null displayVersion");
            this.f39033f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9005a mo2293d(String str) {
            Objects.requireNonNull(str, "Null gmpAppId");
            this.f39029b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9005a mo2292e(String str) {
            Objects.requireNonNull(str, "Null installationUuid");
            this.f39031d = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9005a mo2291f(AbstractC9004v.AbstractC9008c abstractC9008c) {
            this.f39035h = abstractC9008c;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: g */
        public AbstractC9004v.AbstractC9005a mo2290g(int i) {
            this.f39030c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: h */
        public AbstractC9004v.AbstractC9005a mo2289h(String str) {
            Objects.requireNonNull(str, "Null sdkVersion");
            this.f39028a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9005a
        /* renamed from: i */
        public AbstractC9004v.AbstractC9005a mo2288i(AbstractC9004v.AbstractC9012d abstractC9012d) {
            this.f39034g = abstractC9012d;
            return this;
        }
    }

    private C8946b(String str, String str2, int i, String str3, String str4, String str5, AbstractC9004v.AbstractC9012d abstractC9012d, AbstractC9004v.AbstractC9008c abstractC9008c) {
        this.f39020b = str;
        this.f39021c = str2;
        this.f39022d = i;
        this.f39023e = str3;
        this.f39024f = str4;
        this.f39025g = str5;
        this.f39026h = abstractC9012d;
        this.f39027i = abstractC9008c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: c */
    public String mo2308c() {
        return this.f39024f;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: d */
    public String mo2307d() {
        return this.f39025g;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: e */
    public String mo2306e() {
        return this.f39021c;
    }

    public boolean equals(Object obj) {
        AbstractC9004v.AbstractC9012d abstractC9012d;
        AbstractC9004v.AbstractC9008c abstractC9008c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v)) {
            return false;
        }
        AbstractC9004v abstractC9004v = (AbstractC9004v) obj;
        if (!this.f39020b.equals(abstractC9004v.mo2302i()) || !this.f39021c.equals(abstractC9004v.mo2306e()) || this.f39022d != abstractC9004v.mo2303h() || !this.f39023e.equals(abstractC9004v.mo2305f()) || !this.f39024f.equals(abstractC9004v.mo2308c()) || !this.f39025g.equals(abstractC9004v.mo2307d()) || ((abstractC9012d = this.f39026h) != null ? !abstractC9012d.equals(abstractC9004v.mo2301j()) : abstractC9004v.mo2301j() != null) || ((abstractC9008c = this.f39027i) != null ? !abstractC9008c.equals(abstractC9004v.mo2304g()) : abstractC9004v.mo2304g() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: f */
    public String mo2305f() {
        return this.f39023e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: g */
    public AbstractC9004v.AbstractC9008c mo2304g() {
        return this.f39027i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: h */
    public int mo2303h() {
        return this.f39022d;
    }

    public int hashCode() {
        int hashCode = this.f39020b.hashCode();
        int hashCode2 = this.f39021c.hashCode();
        int i = this.f39022d;
        int hashCode3 = this.f39023e.hashCode();
        int hashCode4 = this.f39024f.hashCode();
        int hashCode5 = this.f39025g.hashCode();
        AbstractC9004v.AbstractC9012d abstractC9012d = this.f39026h;
        int i2 = 0;
        int hashCode6 = abstractC9012d == null ? 0 : abstractC9012d.hashCode();
        AbstractC9004v.AbstractC9008c abstractC9008c = this.f39027i;
        if (abstractC9008c != null) {
            i2 = abstractC9008c.hashCode();
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i2;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: i */
    public String mo2302i() {
        return this.f39020b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: j */
    public AbstractC9004v.AbstractC9012d mo2301j() {
        return this.f39026h;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v
    /* renamed from: k */
    protected AbstractC9004v.AbstractC9005a mo2300k() {
        return new C8948b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f39020b + ", gmpAppId=" + this.f39021c + ", platform=" + this.f39022d + ", installationUuid=" + this.f39023e + ", buildVersion=" + this.f39024f + ", displayVersion=" + this.f39025g + ", session=" + this.f39026h + ", ndkPayload=" + this.f39027i + "}";
    }
}
