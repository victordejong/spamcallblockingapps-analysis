package p193e.p194a.p1221t.p1222a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.q */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/q.class */
public final class C20302q {

    /* renamed from: a */
    public final String f57109a;

    public C20302q(String str) {
        l.e(str, "emoji");
        this.f57109a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20302q) && l.a(this.f57109a, ((C20302q) obj).f57109a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f57109a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ReplaceWithEmojiSpan(emoji="), this.f57109a, ")");
    }
}
