package p131c.p161d.p282e.p335s;

import p131c.p161d.p282e.p335s.AbstractC5902k;
/* renamed from: c.d.e.s.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/a.class */
public final class C5888a extends AbstractC5902k {

    /* renamed from: a */
    public final String f19189a;

    /* renamed from: b */
    public final long f19190b;

    /* renamed from: c */
    public final long f19191c;

    /* renamed from: c.d.e.s.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/a$b.class */
    public static final class C5890b extends AbstractC5902k.AbstractC5903a {

        /* renamed from: a */
        public String f19192a;

        /* renamed from: b */
        public Long f19193b;

        /* renamed from: c */
        public Long f19194c;

        @Override // p131c.p161d.p282e.p335s.AbstractC5902k.AbstractC5903a
        /* renamed from: a */
        public AbstractC5902k.AbstractC5903a mo22776a(long j) {
            this.f19194c = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.AbstractC5902k.AbstractC5903a
        /* renamed from: a */
        public AbstractC5902k.AbstractC5903a mo22775a(String str) {
            if (str != null) {
                this.f19192a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }

        @Override // p131c.p161d.p282e.p335s.AbstractC5902k.AbstractC5903a
        /* renamed from: a */
        public AbstractC5902k mo22777a() {
            String str = "";
            if (this.f19192a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f19193b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f19194c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (str3.isEmpty()) {
                return new C5888a(this.f19192a, this.f19193b.longValue(), this.f19194c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p131c.p161d.p282e.p335s.AbstractC5902k.AbstractC5903a
        /* renamed from: b */
        public AbstractC5902k.AbstractC5903a mo22774b(long j) {
            this.f19193b = Long.valueOf(j);
            return this;
        }
    }

    public C5888a(String str, long j, long j2) {
        this.f19189a = str;
        this.f19190b = j;
        this.f19191c = j2;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5902k
    /* renamed from: a */
    public String mo22781a() {
        return this.f19189a;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5902k
    /* renamed from: b */
    public long mo22780b() {
        return this.f19191c;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5902k
    /* renamed from: c */
    public long mo22779c() {
        return this.f19190b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5902k)) {
            return false;
        }
        AbstractC5902k kVar = (AbstractC5902k) obj;
        if (!(this.f19189a.equals(kVar.mo22781a()) && this.f19190b == kVar.mo22779c() && this.f19191c == kVar.mo22780b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f19189a.hashCode();
        long j = this.f19190b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f19191c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f19189a + ", tokenExpirationTimestamp=" + this.f19190b + ", tokenCreationTimestamp=" + this.f19191c + "}";
    }
}
