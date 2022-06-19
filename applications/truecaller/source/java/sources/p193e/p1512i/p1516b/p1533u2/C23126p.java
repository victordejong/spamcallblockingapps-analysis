package p193e.p1512i.p1516b.p1533u2;

import com.criteo.publisher.model.AdSize;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import s1.z.c.l;
/* renamed from: e.i.b.u2.p */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/p.class */
public class C23126p {

    /* renamed from: a */
    public final AdSize f64050a;

    /* renamed from: b */
    public final String f64051b;

    /* renamed from: c */
    public final EnumC23072a f64052c;

    public C23126p(AdSize adSize, String str, EnumC23072a enumC23072a) {
        l.f(adSize, "size");
        l.f(str, "placementId");
        l.f(enumC23072a, "adUnitType");
        this.f64050a = adSize;
        this.f64051b = str;
        this.f64052c = enumC23072a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C23126p)) {
                return false;
            }
            C23126p c23126p = (C23126p) obj;
            return l.a(this.f64050a, c23126p.f64050a) && l.a(this.f64051b, c23126p.f64051b) && l.a(this.f64052c, c23126p.f64052c);
        }
        return true;
    }

    public int hashCode() {
        AdSize adSize = this.f64050a;
        int i = 0;
        int hashCode = adSize != null ? adSize.hashCode() : 0;
        String str = this.f64051b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        EnumC23072a enumC23072a = this.f64052c;
        if (enumC23072a != null) {
            i = enumC23072a.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CacheAdUnit(size=");
        m8728C.append(this.f64050a);
        m8728C.append(", placementId=");
        m8728C.append(this.f64051b);
        m8728C.append(", adUnitType=");
        m8728C.append(this.f64052c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
