package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/l.class */
public final class C5354l extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b {

    /* renamed from: a */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> f18225a;

    /* renamed from: b */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c f18226b;

    /* renamed from: c */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d f18227c;

    /* renamed from: d */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> f18228d;

    /* renamed from: c.d.e.l.d.j.l$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/l$b.class */
    public static final class C5356b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b {

        /* renamed from: a */
        public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> f18229a;

        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c f18230b;

        /* renamed from: c */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d f18231c;

        /* renamed from: d */
        public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> f18232d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b mo7495a(C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> vVar) {
            if (vVar != null) {
                this.f18232d = vVar;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b mo7494a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar) {
            if (cVar != null) {
                this.f18230b = cVar;
                return this;
            }
            throw new NullPointerException("Null exception");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b mo7493a(CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d dVar) {
            if (dVar != null) {
                this.f18231c = dVar;
                return this;
            }
            throw new NullPointerException("Null signal");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b mo7496a() {
            String str = "";
            if (this.f18229a == null) {
                str = " threads";
            }
            String str2 = str;
            if (this.f18230b == null) {
                str2 = str + " exception";
            }
            String str3 = str2;
            if (this.f18231c == null) {
                str3 = str2 + " signal";
            }
            String str4 = str3;
            if (this.f18232d == null) {
                str4 = str3 + " binaries";
            }
            if (str4.isEmpty()) {
                return new C5354l(this.f18229a, this.f18230b, this.f18231c, this.f18232d);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b mo7492b(C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> vVar) {
            if (vVar != null) {
                this.f18229a = vVar;
                return this;
            }
            throw new NullPointerException("Null threads");
        }
    }

    public C5354l(C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> vVar, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c cVar, CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d dVar, C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> vVar2) {
        this.f18225a = vVar;
        this.f18226b = cVar;
        this.f18227c = dVar;
        this.f18228d = vVar2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b
    /* renamed from: a */
    public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a> mo7513a() {
        return this.f18228d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b
    /* renamed from: b */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c mo7512b() {
        return this.f18226b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b
    /* renamed from: c */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d mo7511c() {
        return this.f18227c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b
    /* renamed from: d */
    public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e> mo7510d() {
        return this.f18225a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b bVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b) obj;
        if (!this.f18225a.equals(bVar.mo7510d()) || !this.f18226b.equals(bVar.mo7512b()) || !this.f18227c.equals(bVar.mo7511c()) || !this.f18228d.equals(bVar.mo7513a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f18225a.hashCode() ^ 1000003) * 1000003) ^ this.f18226b.hashCode()) * 1000003) ^ this.f18227c.hashCode()) * 1000003) ^ this.f18228d.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f18225a + ", exception=" + this.f18226b + ", signal=" + this.f18227c + ", binaries=" + this.f18228d + "}";
    }
}
