package p573f.p576c0;

import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
/* renamed from: f.c0.e */
/* loaded from: classes2-dex2jar.jar:f/c0/e.class */
public final class C9913e {

    /* renamed from: a */
    public final String f37122a;

    /* renamed from: b */
    public final C10080c f37123b;

    public C9913e(String str, C10080c cVar) {
        C10059q.m1637b(str, "value");
        C10059q.m1637b(cVar, "range");
        this.f37122a = str;
        this.f37123b = cVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9913e)) {
            return false;
        }
        C9913e eVar = (C9913e) obj;
        return C10059q.m1643a((Object) this.f37122a, (Object) eVar.f37122a) && C10059q.m1643a(this.f37123b, eVar.f37123b);
    }

    public int hashCode() {
        String str = this.f37122a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C10080c cVar = this.f37123b;
        if (cVar != null) {
            i = cVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "MatchGroup(value=" + this.f37122a + ", range=" + this.f37123b + ")";
    }
}
