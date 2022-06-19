package p000;

import p000.AbstractC1429fh;
/* renamed from: ag$a */
/* loaded from: classes-dex2jar.jar:ag$a.class */
public final class ag$a {

    /* renamed from: a */
    public final AbstractC1429fh.AbstractC1430b f290a;

    /* renamed from: b */
    public boolean f291b;

    public ag$a(AbstractC1429fh.AbstractC1430b abstractC1430b) {
        this.f290a = abstractC1430b;
    }

    /* renamed from: a */
    public void m7216a(ag$b ag_b) {
        if (!this.f291b) {
            ag_b.m7215a(this.f290a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ag$a.class == obj.getClass()) {
            return this.f290a.equals(((ag$a) obj).f290a);
        }
        return false;
    }

    public int hashCode() {
        return this.f290a.hashCode();
    }
}
