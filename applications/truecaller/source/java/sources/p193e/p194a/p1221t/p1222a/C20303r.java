package p193e.p194a.p1221t.p1222a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.r */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/r.class */
public final class C20303r {

    /* renamed from: a */
    public final String f57110a;

    public C20303r(String str) {
        l.e(str, "emoticon");
        this.f57110a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20303r) && l.a(this.f57110a, ((C20303r) obj).f57110a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f57110a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ReplaceWithEmoticonSpan(emoticon="), this.f57110a, ")");
    }
}
