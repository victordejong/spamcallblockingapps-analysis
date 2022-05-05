package p459j.p460a.p568u;

import gogolook.callgogolook2.gson.AdsSettingsKt;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.u.d */
/* loaded from: classes2-dex2jar.jar:j/a/u/d.class */
public final class C13646d {
    @AbstractC10120c(AdsSettingsKt.KEY_ENABLE)

    /* renamed from: a */
    public final boolean f30595a;
    @AbstractC10120c("extreme_mode")

    /* renamed from: b */
    public final boolean f30596b;
    @AbstractC10120c("installed_days")

    /* renamed from: c */
    public final int f30597c;
    @AbstractC10120c("recurring_days")

    /* renamed from: d */
    public final int f30598d;

    public C13646d() {
        this(false, false, 0, 0, 15, null);
    }

    public C13646d(boolean z, boolean z2, int i, int i2) {
        this.f30595a = z;
        this.f30596b = z2;
        this.f30597c = i;
        this.f30598d = i2;
    }

    public /* synthetic */ C13646d(boolean z, boolean z2, int i, int i2, int i3, C15145g gVar) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? false : z2, (i3 & 4) != 0 ? 14 : i, (i3 & 8) != 0 ? 2 : i2);
    }

    /* renamed from: a */
    public final boolean m3740a() {
        return this.f30595a;
    }

    /* renamed from: b */
    public final boolean m3739b() {
        return this.f30596b;
    }

    /* renamed from: c */
    public final int m3738c() {
        return this.f30597c;
    }

    /* renamed from: d */
    public final int m3737d() {
        return this.f30598d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13646d)) {
            return false;
        }
        C13646d dVar = (C13646d) obj;
        if (!(this.f30595a == dVar.f30595a)) {
            return false;
        }
        if (!(this.f30596b == dVar.f30596b)) {
            return false;
        }
        if (!(this.f30597c == dVar.f30597c)) {
            return false;
        }
        return this.f30598d == dVar.f30598d;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        boolean z = this.f30595a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f30596b;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        int i2 = z2 ? 1 : 0;
        int i3 = z2 ? 1 : 0;
        hashCode = Integer.valueOf(this.f30597c).hashCode();
        hashCode2 = Integer.valueOf(this.f30598d).hashCode();
        return (((((i2 * 31) + i) * 31) + hashCode) * 31) + hashCode2;
    }

    public String toString() {
        return "IapPostCallEndConfig(enable=" + this.f30595a + ", extremeMode=" + this.f30596b + ", installedDays=" + this.f30597c + ", recurringDays=" + this.f30598d + ")";
    }
}
