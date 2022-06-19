package p193e.p194a.p1064m5;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.m5.b */
/* loaded from: classes15-dex2jar.jar:e/a/m5/b.class */
public final class C18239b {

    /* renamed from: a */
    public final boolean f51544a;

    public C18239b(boolean z) {
        this.f51544a = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C18239b) && this.f51544a == ((C18239b) obj).f51544a;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f51544a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return z2 ? 1 : 0;
    }

    public String toString() {
        return C22128a.m8590o(C22128a.m8728C("TrueContextAdCampaignStyle(hasDarkStyle="), this.f51544a, ")");
    }
}
