package p193e.p194a.p1011l.p1025p2;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018��2\u00020\u0001B%\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\f\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\f\u0010\rR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u000f\u0010\u0012R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0007¨\u0006\u001b"}, d2 = {"Le/a/l/p2/n1;", "", "", "d", "()Z", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Lw3/b/a/b;", C22021b.f61237c, "Lw3/b/a/b;", "getStartDate", "()Lw3/b/a/b;", "startDate", AbstractC2405c.f7629a, "endDate", "a", "Ljava/lang/String;", "theme", "<init>", "(Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;)V", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.n1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/n1.class */
public final class C17138n1 {
    @b("theme")

    /* renamed from: a */
    private final String f48112a;
    @b("start_date")

    /* renamed from: b */
    private final w3.b.a.b f48113b;
    @b("end_date")

    /* renamed from: c */
    private final w3.b.a.b f48114c;

    public C17138n1(String str, w3.b.a.b bVar, w3.b.a.b bVar2) {
        this.f48112a = str;
        this.f48113b = bVar;
        this.f48114c = bVar2;
    }

    /* renamed from: a */
    public static C17138n1 m16485a(C17138n1 c17138n1, String str, w3.b.a.b bVar, w3.b.a.b bVar2, int i) {
        if ((i & 1) != 0) {
            str = c17138n1.f48112a;
        }
        w3.b.a.b bVar3 = null;
        w3.b.a.b bVar4 = (i & 2) != 0 ? c17138n1.f48113b : null;
        if ((i & 4) != 0) {
            bVar3 = c17138n1.f48114c;
        }
        return new C17138n1(str, bVar4, bVar3);
    }

    /* renamed from: b */
    public final w3.b.a.b m16484b() {
        return this.f48114c;
    }

    /* renamed from: c */
    public final String m16483c() {
        return this.f48112a;
    }

    /* renamed from: d */
    public final boolean m16482d() {
        w3.b.a.b bVar;
        w3.b.a.b bVar2 = this.f48113b;
        return (bVar2 == null || bVar2.j()) && ((bVar = this.f48114c) == null || bVar.g());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17138n1)) {
                return false;
            }
            C17138n1 c17138n1 = (C17138n1) obj;
            return l.a(this.f48112a, c17138n1.f48112a) && l.a(this.f48113b, c17138n1.f48113b) && l.a(this.f48114c, c17138n1.f48114c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48112a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        w3.b.a.b bVar = this.f48113b;
        int hashCode2 = bVar != null ? bVar.hashCode() : 0;
        w3.b.a.b bVar2 = this.f48114c;
        if (bVar2 != null) {
            i = bVar2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Promotion(theme=");
        m8728C.append(this.f48112a);
        m8728C.append(", startDate=");
        m8728C.append(this.f48113b);
        m8728C.append(", endDate=");
        m8728C.append(this.f48114c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
