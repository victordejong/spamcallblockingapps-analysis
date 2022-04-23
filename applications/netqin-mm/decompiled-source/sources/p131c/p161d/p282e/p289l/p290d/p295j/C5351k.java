package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/k.class */
public final class C5351k extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a {

    /* renamed from: a */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b f18217a;

    /* renamed from: b */
    public final C5384v<CrashlyticsReport.AbstractC7779b> f18218b;

    /* renamed from: c */
    public final Boolean f18219c;

    /* renamed from: d */
    public final int f18220d;

    /* renamed from: c.d.e.l.d.j.k$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/k$b.class */
    public static final class C5353b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a {

        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b f18221a;

        /* renamed from: b */
        public C5384v<CrashlyticsReport.AbstractC7779b> f18222b;

        /* renamed from: c */
        public Boolean f18223c;

        /* renamed from: d */
        public Integer f18224d;

        public C5353b() {
        }

        public C5353b(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a aVar) {
            this.f18221a = aVar.mo7522c();
            this.f18222b = aVar.mo7523b();
            this.f18223c = aVar.mo7524a();
            this.f18224d = Integer.valueOf(aVar.mo7521d());
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a mo7517a(int i) {
            this.f18224d = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a mo7516a(C5384v<CrashlyticsReport.AbstractC7779b> vVar) {
            this.f18222b = vVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a mo7515a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b bVar) {
            if (bVar != null) {
                this.f18221a = bVar;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a mo7514a(Boolean bool) {
            this.f18223c = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a mo7518a() {
            String str = "";
            if (this.f18221a == null) {
                str = " execution";
            }
            String str2 = str;
            if (this.f18224d == null) {
                str2 = str + " uiOrientation";
            }
            if (str2.isEmpty()) {
                return new C5351k(this.f18221a, this.f18222b, this.f18223c, this.f18224d.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C5351k(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b bVar, C5384v<CrashlyticsReport.AbstractC7779b> vVar, Boolean bool, int i) {
        this.f18217a = bVar;
        this.f18218b = vVar;
        this.f18219c = bool;
        this.f18220d = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a
    /* renamed from: a */
    public Boolean mo7524a() {
        return this.f18219c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a
    /* renamed from: b */
    public C5384v<CrashlyticsReport.AbstractC7779b> mo7523b() {
        return this.f18218b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a
    /* renamed from: c */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b mo7522c() {
        return this.f18217a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a
    /* renamed from: d */
    public int mo7521d() {
        return this.f18220d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a
    /* renamed from: e */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a mo7520e() {
        return new C5353b(this);
    }

    public boolean equals(Object obj) {
        C5384v<CrashlyticsReport.AbstractC7779b> vVar;
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a aVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a) obj;
        if (!this.f18217a.equals(aVar.mo7522c()) || ((vVar = this.f18218b) != null ? !vVar.equals(aVar.mo7523b()) : aVar.mo7523b() != null) || ((bool = this.f18219c) != null ? !bool.equals(aVar.mo7524a()) : aVar.mo7524a() != null) || this.f18220d != aVar.mo7521d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f18217a.hashCode();
        C5384v<CrashlyticsReport.AbstractC7779b> vVar = this.f18218b;
        int i = 0;
        int hashCode2 = vVar == null ? 0 : vVar.hashCode();
        Boolean bool = this.f18219c;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ this.f18220d;
    }

    public String toString() {
        return "Application{execution=" + this.f18217a + ", customAttributes=" + this.f18218b + ", background=" + this.f18219c + ", uiOrientation=" + this.f18220d + "}";
    }
}
