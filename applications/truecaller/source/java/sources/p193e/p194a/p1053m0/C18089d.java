package p193e.p194a.p1053m0;

import com.truecaller.messaging.data.types.Mention;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.m0.d */
/* loaded from: classes8-dex2jar.jar:e/a/m0/d.class */
public final class C18089d {

    /* renamed from: a */
    public final int f51011a;

    /* renamed from: b */
    public final Mention f51012b;

    /* renamed from: c */
    public final String f51013c;

    public C18089d(int i, Mention mention, String str) {
        l.e(mention, "mention");
        l.e(str, "contactPrivateName");
        this.f51011a = i;
        this.f51012b = mention;
        this.f51013c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18089d)) {
                return false;
            }
            C18089d c18089d = (C18089d) obj;
            return this.f51011a == c18089d.f51011a && l.a(this.f51012b, c18089d.f51012b) && l.a(this.f51013c, c18089d.f51013c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f51011a;
        Mention mention = this.f51012b;
        int i2 = 0;
        int hashCode = mention != null ? mention.hashCode() : 0;
        String str = this.f51013c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MentionData(messageId=");
        m8728C.append(this.f51011a);
        m8728C.append(", mention=");
        m8728C.append(this.f51012b);
        m8728C.append(", contactPrivateName=");
        return C22128a.m8618h(m8728C, this.f51013c, ")");
    }
}
