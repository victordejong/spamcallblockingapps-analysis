package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.h.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/c.class */
public final class C9536c extends AbstractC9609q {

    /* renamed from: a */
    public final AbstractC9715v f21715a;

    /* renamed from: b */
    public final String f21716b;

    public C9536c(AbstractC9715v vVar, String str) {
        if (vVar != null) {
            this.f21715a = vVar;
            if (str != null) {
                this.f21716b = str;
                return;
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9609q
    /* renamed from: a */
    public AbstractC9715v mo14716a() {
        return this.f21715a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9609q
    /* renamed from: b */
    public String mo14714b() {
        return this.f21716b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9609q)) {
            return false;
        }
        AbstractC9609q qVar = (AbstractC9609q) obj;
        if (!this.f21715a.equals(qVar.mo14716a()) || !this.f21716b.equals(qVar.mo14714b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f21715a.hashCode() ^ 1000003) * 1000003) ^ this.f21716b.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f21715a + ", sessionId=" + this.f21716b + CssParser.BLOCK_END;
    }
}
