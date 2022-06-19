package p193e.p194a.p1011l.p1025p2;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.m1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/m1.class */
public final class C17134m1 {

    /* renamed from: a */
    public final List<String> f48100a;

    /* renamed from: b */
    public final List<String> f48101b;

    public C17134m1(List<String> list, List<String> list2) {
        l.e(list, "subsSkuList");
        l.e(list2, "inAppSkuList");
        this.f48100a = list;
        this.f48101b = list2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17134m1)) {
                return false;
            }
            C17134m1 c17134m1 = (C17134m1) obj;
            return l.a(this.f48100a, c17134m1.f48100a) && l.a(this.f48101b, c17134m1.f48101b);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f48100a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f48101b;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProductSkuList(subsSkuList=");
        m8728C.append(this.f48100a);
        m8728C.append(", inAppSkuList=");
        return C22128a.m8602l(m8728C, this.f48101b, ")");
    }
}
