package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/c.class */
public final class C5329c extends CrashlyticsReport.AbstractC7779b {

    /* renamed from: a */
    public final String f18140a;

    /* renamed from: b */
    public final String f18141b;

    /* renamed from: c.d.e.l.d.j.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/c$b.class */
    public static final class C5331b extends CrashlyticsReport.AbstractC7779b.AbstractC7780a {

        /* renamed from: a */
        public String f18142a;

        /* renamed from: b */
        public String f18143b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7779b.AbstractC7780a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7779b.AbstractC7780a mo7610a(String str) {
            if (str != null) {
                this.f18142a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7779b.AbstractC7780a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7779b mo7611a() {
            String str = "";
            if (this.f18142a == null) {
                str = " key";
            }
            String str2 = str;
            if (this.f18143b == null) {
                str2 = str + " value";
            }
            if (str2.isEmpty()) {
                return new C5329c(this.f18142a, this.f18143b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7779b.AbstractC7780a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7779b.AbstractC7780a mo7609b(String str) {
            if (str != null) {
                this.f18143b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    public C5329c(String str, String str2) {
        this.f18140a = str;
        this.f18141b = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7779b
    /* renamed from: a */
    public String mo7614a() {
        return this.f18140a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7779b
    /* renamed from: b */
    public String mo7613b() {
        return this.f18141b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7779b)) {
            return false;
        }
        CrashlyticsReport.AbstractC7779b bVar = (CrashlyticsReport.AbstractC7779b) obj;
        if (!this.f18140a.equals(bVar.mo7614a()) || !this.f18141b.equals(bVar.mo7613b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f18140a.hashCode() ^ 1000003) * 1000003) ^ this.f18141b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f18140a + ", value=" + this.f18141b + "}";
    }
}
