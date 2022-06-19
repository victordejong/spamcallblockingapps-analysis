package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.p */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/p.class */
public final class C16717p {

    /* renamed from: a */
    public final C16723q f46879a;

    /* renamed from: b */
    public final AbstractC16736t f46880b;

    /* renamed from: c */
    public final C17288a f46881c;

    public C16717p(C16723q c16723q, AbstractC16736t abstractC16736t, C17288a c17288a) {
        l.e(abstractC16736t, "payload");
        this.f46879a = c16723q;
        this.f46880b = abstractC16736t;
        this.f46881c = c17288a;
    }

    public /* synthetic */ C16717p(C16723q c16723q, AbstractC16736t abstractC16736t, C17288a c17288a, int i) {
        this((i & 1) != 0 ? null : c16723q, abstractC16736t, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16717p)) {
                return false;
            }
            C16717p c16717p = (C16717p) obj;
            return l.a(this.f46879a, c16717p.f46879a) && l.a(this.f46880b, c16717p.f46880b) && l.a(this.f46881c, c16717p.f46881c);
        }
        return true;
    }

    public int hashCode() {
        C16723q c16723q = this.f46879a;
        int i = 0;
        int hashCode = c16723q != null ? c16723q.hashCode() : 0;
        AbstractC16736t abstractC16736t = this.f46880b;
        int hashCode2 = abstractC16736t != null ? abstractC16736t.hashCode() : 0;
        C17288a c17288a = this.f46881c;
        if (c17288a != null) {
            i = c17288a.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardItem(label=");
        m8728C.append(this.f46879a);
        m8728C.append(", payload=");
        m8728C.append(this.f46880b);
        m8728C.append(", cardNewFeatureLabel=");
        m8728C.append(this.f46881c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
