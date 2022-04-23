package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.h.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/c.class */
public final class C5214c extends AbstractC5276o {

    /* renamed from: a */
    public final CrashlyticsReport f17896a;

    /* renamed from: b */
    public final String f17897b;

    public C5214c(CrashlyticsReport crashlyticsReport, String str) {
        if (crashlyticsReport != null) {
            this.f17896a = crashlyticsReport;
            if (str != null) {
                this.f17897b = str;
                return;
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5276o
    /* renamed from: a */
    public CrashlyticsReport mo24081a() {
        return this.f17896a;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5276o
    /* renamed from: b */
    public String mo24079b() {
        return this.f17897b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5276o)) {
            return false;
        }
        AbstractC5276o oVar = (AbstractC5276o) obj;
        if (!this.f17896a.equals(oVar.mo24081a()) || !this.f17897b.equals(oVar.mo24079b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f17896a.hashCode() ^ 1000003) * 1000003) ^ this.f17897b.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f17896a + ", sessionId=" + this.f17897b + "}";
    }
}
