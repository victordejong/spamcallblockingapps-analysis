package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/h.class */
public final class C5344h extends CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b {

    /* renamed from: a */
    public final String f18188a;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b
    /* renamed from: a */
    public String mo7565a() {
        return this.f18188a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b) {
            return this.f18188a.equals(((CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b) obj).mo7565a());
        }
        return false;
    }

    public int hashCode() {
        return this.f18188a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f18188a + "}";
    }
}
