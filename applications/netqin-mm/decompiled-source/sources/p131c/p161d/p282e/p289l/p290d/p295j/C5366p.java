package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/p.class */
public final class C5366p extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e {

    /* renamed from: a */
    public final String f18257a;

    /* renamed from: b */
    public final int f18258b;

    /* renamed from: c */
    public final C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> f18259c;

    /* renamed from: c.d.e.l.d.j.p$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/p$b.class */
    public static final class C5368b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a {

        /* renamed from: a */
        public String f18260a;

        /* renamed from: b */
        public Integer f18261b;

        /* renamed from: c */
        public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> f18262c;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a mo7466a(int i) {
            this.f18261b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a mo7465a(C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> vVar) {
            if (vVar != null) {
                this.f18262c = vVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a mo7464a(String str) {
            if (str != null) {
                this.f18260a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e mo7467a() {
            String str = "";
            if (this.f18260a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f18261b == null) {
                str2 = str + " importance";
            }
            String str3 = str2;
            if (this.f18262c == null) {
                str3 = str2 + " frames";
            }
            if (str3.isEmpty()) {
                return new C5366p(this.f18260a, this.f18261b.intValue(), this.f18262c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }
    }

    public C5366p(String str, int i, C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> vVar) {
        this.f18257a = str;
        this.f18258b = i;
        this.f18259c = vVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e
    /* renamed from: a */
    public C5384v<CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b> mo7471a() {
        return this.f18259c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e
    /* renamed from: b */
    public int mo7470b() {
        return this.f18258b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e
    /* renamed from: c */
    public String mo7469c() {
        return this.f18257a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e eVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e) obj;
        if (!this.f18257a.equals(eVar.mo7469c()) || this.f18258b != eVar.mo7470b() || !this.f18259c.equals(eVar.mo7471a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f18257a.hashCode() ^ 1000003) * 1000003) ^ this.f18258b) * 1000003) ^ this.f18259c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f18257a + ", importance=" + this.f18258b + ", frames=" + this.f18259c + "}";
    }
}
