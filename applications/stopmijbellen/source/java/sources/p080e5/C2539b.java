package p080e5;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
import p103g5.AbstractC2878v;
/* renamed from: e5.b */
/* loaded from: classes-dex2jar.jar:e5/b.class */
public final class C2539b extends AbstractC2580y {

    /* renamed from: a */
    public final AbstractC2878v f8895a;

    /* renamed from: b */
    public final String f8896b;

    public C2539b(AbstractC2878v abstractC2878v, String str) {
        Objects.requireNonNull(abstractC2878v, "Null report");
        this.f8895a = abstractC2878v;
        Objects.requireNonNull(str, "Null sessionId");
        this.f8896b = str;
    }

    @Override // p080e5.AbstractC2580y
    /* renamed from: a */
    public AbstractC2878v mo3418a() {
        return this.f8895a;
    }

    @Override // p080e5.AbstractC2580y
    /* renamed from: b */
    public String mo3417b() {
        return this.f8896b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2580y)) {
            return false;
        }
        AbstractC2580y abstractC2580y = (AbstractC2580y) obj;
        if (!this.f8895a.equals(abstractC2580y.mo3418a()) || !this.f8896b.equals(abstractC2580y.mo3417b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f8895a.hashCode() ^ 1000003) * 1000003) ^ this.f8896b.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CrashlyticsReportWithSessionId{report=");
        m8752j.append(this.f8895a);
        m8752j.append(", sessionId=");
        return C0082b.m8754h(m8752j, this.f8896b, "}");
    }
}
