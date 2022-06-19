package p193e.p194a.p195a.p200c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.g3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g3.class */
public final class C5312g3 {

    /* renamed from: a */
    public final int f18171a;

    /* renamed from: b */
    public final String f18172b;

    /* renamed from: c */
    public final Object f18173c;

    public C5312g3(int i, String str, Object obj) {
        this.f18171a = i;
        this.f18172b = str;
        this.f18173c = obj;
    }

    public C5312g3(int i, String str, Object obj, int i2) {
        obj = (i2 & 4) != 0 ? null : obj;
        this.f18171a = i;
        this.f18172b = null;
        this.f18173c = obj;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5312g3)) {
                return false;
            }
            C5312g3 c5312g3 = (C5312g3) obj;
            return this.f18171a == c5312g3.f18171a && l.a(this.f18172b, c5312g3.f18172b) && l.a(this.f18173c, c5312g3.f18173c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f18171a;
        String str = this.f18172b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Object obj = this.f18173c;
        if (obj != null) {
            i2 = obj.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContextualAction(type=");
        m8728C.append(this.f18171a);
        m8728C.append(", text=");
        m8728C.append(this.f18172b);
        m8728C.append(", value=");
        return C22128a.m8634d(m8728C, this.f18173c, ")");
    }
}
