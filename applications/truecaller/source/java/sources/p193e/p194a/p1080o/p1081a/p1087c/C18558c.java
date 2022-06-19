package p193e.p194a.p1080o.p1081a.p1087c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.a.c.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/c.class */
public final class C18558c extends AbstractC18562g {

    /* renamed from: a */
    public final int f52324a;

    /* renamed from: b */
    public final String f52325b;

    public C18558c() {
        super(null);
        this.f52324a = 0;
        this.f52325b = null;
    }

    public C18558c(int i, String str) {
        super(null);
        this.f52324a = i;
        this.f52325b = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18558c)) {
                return false;
            }
            C18558c c18558c = (C18558c) obj;
            return this.f52324a == c18558c.f52324a && l.a(this.f52325b, c18558c.f52325b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f52324a;
        String str = this.f52325b;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FullCallReason(id=");
        m8728C.append(this.f52324a);
        m8728C.append(", message=");
        return C22128a.m8618h(m8728C, this.f52325b, ")");
    }
}
