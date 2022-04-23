package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/s.class */
public final class C5375s extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d {

    /* renamed from: a */
    public final String f18285a;

    /* renamed from: c.d.e.l.d.j.s$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/s$b.class */
    public static final class C5377b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a {

        /* renamed from: a */
        public String f18286a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a mo7428a(String str) {
            if (str != null) {
                this.f18286a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d mo7429a() {
            String str = "";
            if (this.f18286a == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new C5375s(this.f18286a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C5375s(String str) {
        this.f18285a = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d
    /* renamed from: a */
    public String mo7431a() {
        return this.f18285a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d) {
            return this.f18285a.equals(((CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d) obj).mo7431a());
        }
        return false;
    }

    public int hashCode() {
        return this.f18285a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f18285a + "}";
    }
}
