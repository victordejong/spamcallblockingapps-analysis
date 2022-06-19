package p193e.p1432d.p1433a.p1434a;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.d.a.a.p */
/* loaded from: classes-dex2jar.jar:e/d/a/a/p.class */
public final class C22091p {

    /* renamed from: a */
    public final C22080k f61393a;

    /* renamed from: b */
    public final List<C22086n> f61394b;

    /* JADX WARN: Multi-variable type inference failed */
    public C22091p(@RecentlyNonNull C22080k c22080k, @RecentlyNonNull List<? extends C22086n> list) {
        l.e(c22080k, "billingResult");
        l.e(list, "purchasesList");
        this.f61393a = c22080k;
        this.f61394b = list;
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (this != obj) {
            if (!(obj instanceof C22091p)) {
                return false;
            }
            C22091p c22091p = (C22091p) obj;
            return l.a(this.f61393a, c22091p.f61393a) && l.a(this.f61394b, c22091p.f61394b);
        }
        return true;
    }

    public int hashCode() {
        C22080k c22080k = this.f61393a;
        int i = 0;
        int hashCode = c22080k != null ? c22080k.hashCode() : 0;
        List<C22086n> list = this.f61394b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PurchasesResult(billingResult=");
        m8728C.append(this.f61393a);
        m8728C.append(", purchasesList=");
        return C22128a.m8602l(m8728C, this.f61394b, ")");
    }
}
