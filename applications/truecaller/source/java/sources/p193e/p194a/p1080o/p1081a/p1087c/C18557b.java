package p193e.p194a.p1080o.p1081a.p1087c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.a.c.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/b.class */
public final class C18557b extends AbstractC18562g {

    /* renamed from: a */
    public final String f52322a;

    /* renamed from: b */
    public final String f52323b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18557b(String str, String str2) {
        super(null);
        l.e(str, "placeholder");
        l.e(str2, "hint");
        this.f52322a = str;
        this.f52323b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18557b)) {
                return false;
            }
            C18557b c18557b = (C18557b) obj;
            return l.a(this.f52322a, c18557b.f52322a) && l.a(this.f52323b, c18557b.f52323b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52322a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52323b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmptyCallReason(placeholder=");
        m8728C.append(this.f52322a);
        m8728C.append(", hint=");
        return C22128a.m8618h(m8728C, this.f52323b, ")");
    }
}
