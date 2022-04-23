package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.q */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/q.class */
public final class C5369q extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b {

    /* renamed from: a */
    public final long f18263a;

    /* renamed from: b */
    public final String f18264b;

    /* renamed from: c */
    public final String f18265c;

    /* renamed from: d */
    public final long f18266d;

    /* renamed from: e */
    public final int f18267e;

    /* renamed from: c.d.e.l.d.j.q$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/q$b.class */
    public static final class C5371b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a {

        /* renamed from: a */
        public Long f18268a;

        /* renamed from: b */
        public String f18269b;

        /* renamed from: c */
        public String f18270c;

        /* renamed from: d */
        public Long f18271d;

        /* renamed from: e */
        public Integer f18272e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a mo7456a(int i) {
            this.f18272e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a mo7455a(long j) {
            this.f18271d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a mo7454a(String str) {
            this.f18270c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b mo7457a() {
            String str = "";
            if (this.f18268a == null) {
                str = " pc";
            }
            String str2 = str;
            if (this.f18269b == null) {
                str2 = str + " symbol";
            }
            String str3 = str2;
            if (this.f18271d == null) {
                str3 = str2 + " offset";
            }
            String str4 = str3;
            if (this.f18272e == null) {
                str4 = str3 + " importance";
            }
            if (str4.isEmpty()) {
                return new C5369q(this.f18268a.longValue(), this.f18269b, this.f18270c, this.f18271d.longValue(), this.f18272e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a mo7453b(long j) {
            this.f18268a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a mo7452b(String str) {
            if (str != null) {
                this.f18269b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }
    }

    public C5369q(long j, String str, String str2, long j2, int i) {
        this.f18263a = j;
        this.f18264b = str;
        this.f18265c = str2;
        this.f18266d = j2;
        this.f18267e = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b
    /* renamed from: a */
    public String mo7463a() {
        return this.f18265c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b
    /* renamed from: b */
    public int mo7462b() {
        return this.f18267e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b
    /* renamed from: c */
    public long mo7461c() {
        return this.f18266d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b
    /* renamed from: d */
    public long mo7460d() {
        return this.f18263a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b
    /* renamed from: e */
    public String mo7459e() {
        return this.f18264b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b bVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b) obj;
        if (!(this.f18263a == bVar.mo7460d() && this.f18264b.equals(bVar.mo7459e()) && ((str = this.f18265c) != null ? str.equals(bVar.mo7463a()) : bVar.mo7463a() == null) && this.f18266d == bVar.mo7461c() && this.f18267e == bVar.mo7462b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f18263a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f18264b.hashCode();
        String str = this.f18265c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.f18266d;
        return this.f18267e ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "Frame{pc=" + this.f18263a + ", symbol=" + this.f18264b + ", file=" + this.f18265c + ", offset=" + this.f18266d + ", importance=" + this.f18267e + "}";
    }
}
