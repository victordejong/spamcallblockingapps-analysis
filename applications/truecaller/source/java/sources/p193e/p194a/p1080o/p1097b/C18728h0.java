package p193e.p194a.p1080o.p1097b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.b.h0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/h0.class */
public final class C18728h0 {

    /* renamed from: a */
    public final String f52657a;

    /* renamed from: b */
    public final String f52658b;

    /* renamed from: c */
    public final String f52659c;

    public C18728h0(String str, String str2, String str3) {
        this.f52657a = str;
        this.f52658b = str2;
        this.f52659c = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18728h0)) {
                return false;
            }
            C18728h0 c18728h0 = (C18728h0) obj;
            return l.a(this.f52657a, c18728h0.f52657a) && l.a(this.f52658b, c18728h0.f52658b) && l.a(this.f52659c, c18728h0.f52659c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52657a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52658b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f52659c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MidCallReasonNotification(id=");
        m8728C.append(this.f52657a);
        m8728C.append(", message=");
        m8728C.append(this.f52658b);
        m8728C.append(", number=");
        return C22128a.m8618h(m8728C, this.f52659c, ")");
    }
}
