package p193e.p194a.p1011l.p1025p2;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0011\u001a\u0004\b\f\u0010\u0012¨\u0006\u0014"}, d2 = {"Le/a/l/p2/o1;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", C22021b.f61237c, "purchaseStatus", "Le/a/l/p2/x0;", "Le/a/l/p2/x0;", "()Le/a/l/p2/x0;", "proStatus", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.o1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/o1.class */
public final class C17145o1 {
    @b("purchaseStatus")

    /* renamed from: a */
    private final String f48123a;
    @b("proStatus")

    /* renamed from: b */
    private final C17204x0 f48124b;

    /* renamed from: a */
    public final C17204x0 m16480a() {
        return this.f48124b;
    }

    /* renamed from: b */
    public final String m16479b() {
        return this.f48123a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17145o1)) {
                return false;
            }
            C17145o1 c17145o1 = (C17145o1) obj;
            return l.a(this.f48123a, c17145o1.f48123a) && l.a(this.f48124b, c17145o1.f48124b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48123a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C17204x0 c17204x0 = this.f48124b;
        if (c17204x0 != null) {
            i = c17204x0.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PurchaseDto(purchaseStatus=");
        m8728C.append(this.f48123a);
        m8728C.append(", proStatus=");
        m8728C.append(this.f48124b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
