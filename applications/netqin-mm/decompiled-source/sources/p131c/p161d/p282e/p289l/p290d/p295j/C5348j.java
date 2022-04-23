package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/j.class */
public final class C5348j extends CrashlyticsReport.AbstractC7785d.AbstractC7792d {

    /* renamed from: a */
    public final long f18207a;

    /* renamed from: b */
    public final String f18208b;

    /* renamed from: c */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a f18209c;

    /* renamed from: d */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c f18210d;

    /* renamed from: e */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d f18211e;

    /* renamed from: c.d.e.l.d.j.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/j$b.class */
    public static final class C5350b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b {

        /* renamed from: a */
        public Long f18212a;

        /* renamed from: b */
        public String f18213b;

        /* renamed from: c */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a f18214c;

        /* renamed from: d */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c f18215d;

        /* renamed from: e */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d f18216e;

        public C5350b() {
        }

        public C5350b(CrashlyticsReport.AbstractC7785d.AbstractC7792d dVar) {
            this.f18212a = Long.valueOf(dVar.mo7528d());
            this.f18213b = dVar.mo7527e();
            this.f18214c = dVar.mo7531a();
            this.f18215d = dVar.mo7530b();
            this.f18216e = dVar.mo7529c();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7450a(long j) {
            this.f18212a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7449a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a aVar) {
            if (aVar != null) {
                this.f18214c = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7448a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c cVar) {
            if (cVar != null) {
                this.f18215d = cVar;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7447a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d dVar) {
            this.f18216e = dVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7446a(String str) {
            if (str != null) {
                this.f18213b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d mo7451a() {
            String str = "";
            if (this.f18212a == null) {
                str = " timestamp";
            }
            String str2 = str;
            if (this.f18213b == null) {
                str2 = str + " type";
            }
            String str3 = str2;
            if (this.f18214c == null) {
                str3 = str2 + " app";
            }
            String str4 = str3;
            if (this.f18215d == null) {
                str4 = str3 + " device";
            }
            if (str4.isEmpty()) {
                return new C5348j(this.f18212a.longValue(), this.f18213b, this.f18214c, this.f18215d, this.f18216e);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }
    }

    public C5348j(long j, String str, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a aVar, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c cVar, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d dVar) {
        this.f18207a = j;
        this.f18208b = str;
        this.f18209c = aVar;
        this.f18210d = cVar;
        this.f18211e = dVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: a */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a mo7531a() {
        return this.f18209c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: b */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c mo7530b() {
        return this.f18210d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: c */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d mo7529c() {
        return this.f18211e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: d */
    public long mo7528d() {
        return this.f18207a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: e */
    public String mo7527e() {
        return this.f18208b;
    }

    public boolean equals(Object obj) {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d dVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d dVar2 = (CrashlyticsReport.AbstractC7785d.AbstractC7792d) obj;
        if (this.f18207a != dVar2.mo7528d() || !this.f18208b.equals(dVar2.mo7527e()) || !this.f18209c.equals(dVar2.mo7531a()) || !this.f18210d.equals(dVar2.mo7530b()) || ((dVar = this.f18211e) != null ? !dVar.equals(dVar2.mo7529c()) : dVar2.mo7529c() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d
    /* renamed from: f */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b mo7526f() {
        return new C5350b(this);
    }

    public int hashCode() {
        long j = this.f18207a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f18208b.hashCode();
        int hashCode2 = this.f18209c.hashCode();
        int hashCode3 = this.f18210d.hashCode();
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d dVar = this.f18211e;
        return (dVar == null ? 0 : dVar.hashCode()) ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003);
    }

    public String toString() {
        return "Event{timestamp=" + this.f18207a + ", type=" + this.f18208b + ", app=" + this.f18209c + ", device=" + this.f18210d + ", log=" + this.f18211e + "}";
    }
}
