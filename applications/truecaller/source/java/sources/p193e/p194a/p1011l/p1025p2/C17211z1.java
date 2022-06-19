package p193e.p194a.p1011l.p1025p2;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"Le/a/l/p2/z1;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Le/a/l/p2/y1;", "a", "Le/a/l/p2/y1;", "()Le/a/l/p2/y1;", "response", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.z1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/z1.class */
public final class C17211z1 {
    @b("response")

    /* renamed from: a */
    private final C17208y1 f48330a;

    /* renamed from: a */
    public final C17208y1 m16369a() {
        return this.f48330a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C17211z1) && l.a(this.f48330a, ((C17211z1) obj).f48330a);
        }
        return true;
    }

    public int hashCode() {
        C17208y1 c17208y1 = this.f48330a;
        return c17208y1 != null ? c17208y1.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WebPurchaseOrderResponse(response=");
        m8728C.append(this.f48330a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
