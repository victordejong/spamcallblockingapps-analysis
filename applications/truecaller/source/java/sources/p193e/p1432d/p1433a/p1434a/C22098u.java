package p193e.p1432d.p1433a.p1434a;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.d.a.a.u */
/* loaded from: classes-dex2jar.jar:e/d/a/a/u.class */
public final class C22098u {

    /* renamed from: a */
    public final C22080k f61407a;

    /* renamed from: b */
    public final List<C22095r> f61408b;

    /* JADX WARN: Multi-variable type inference failed */
    public C22098u(@RecentlyNonNull C22080k c22080k, List<? extends C22095r> list) {
        l.e(c22080k, "billingResult");
        this.f61407a = c22080k;
        this.f61408b = list;
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (this != obj) {
            if (!(obj instanceof C22098u)) {
                return false;
            }
            C22098u c22098u = (C22098u) obj;
            return l.a(this.f61407a, c22098u.f61407a) && l.a(this.f61408b, c22098u.f61408b);
        }
        return true;
    }

    public int hashCode() {
        C22080k c22080k = this.f61407a;
        int i = 0;
        int hashCode = c22080k != null ? c22080k.hashCode() : 0;
        List<C22095r> list = this.f61408b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SkuDetailsResult(billingResult=");
        m8728C.append(this.f61407a);
        m8728C.append(", skuDetailsList=");
        return C22128a.m8602l(m8728C, this.f61408b, ")");
    }
}
