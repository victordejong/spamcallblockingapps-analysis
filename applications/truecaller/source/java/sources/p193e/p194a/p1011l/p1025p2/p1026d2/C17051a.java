package p193e.p194a.p1011l.p1025p2.p1026d2;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Le/a/l/p2/d2/a;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "id", C22021b.f61237c, "Z", "isFree", "()Z", "<init>", "(Ljava/lang/String;Z)V", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.d2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/a.class */
public final class C17051a {
    @b("id")

    /* renamed from: a */
    private final String f47815a;
    @b("isFree")

    /* renamed from: b */
    private final boolean f47816b;

    public C17051a(String str, boolean z) {
        l.e(str, "id");
        this.f47815a = str;
        this.f47816b = z;
    }

    /* renamed from: a */
    public final String m16604a() {
        return this.f47815a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17051a)) {
                return false;
            }
            C17051a c17051a = (C17051a) obj;
            return l.a(this.f47815a, c17051a.f47815a) && this.f47816b == c17051a.f47816b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47815a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f47816b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumFeatureDto(id=");
        m8728C.append(this.f47815a);
        m8728C.append(", isFree=");
        return C22128a.m8590o(m8728C, this.f47816b, ")");
    }
}
