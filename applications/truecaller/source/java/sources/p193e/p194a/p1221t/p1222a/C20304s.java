package p193e.p194a.p1221t.p1222a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.s */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/s.class */
public final class C20304s {

    /* renamed from: a */
    public final String f57111a;

    public C20304s(String str) {
        l.e(str, "originalEmoticon");
        this.f57111a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20304s) && l.a(this.f57111a, ((C20304s) obj).f57111a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f57111a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ReplacedEmoticonSpan(originalEmoticon="), this.f57111a, ")");
    }
}
