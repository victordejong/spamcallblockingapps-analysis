package p193e.p194a.p1275v.p1276a.p1285e0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h;
import s1.z.c.l;
/* renamed from: e.a.v.a.e0.i */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e0/i.class */
public final class C20750i {

    /* renamed from: a */
    public final String f58384a;

    /* renamed from: b */
    public final String f58385b;

    /* renamed from: c */
    public final AbstractC20845h f58386c;

    public C20750i(String str, String str2, AbstractC20845h abstractC20845h) {
        l.e(str, "text");
        l.e(abstractC20845h, "painter");
        this.f58384a = str;
        this.f58385b = str2;
        this.f58386c = abstractC20845h;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20750i)) {
                return false;
            }
            C20750i c20750i = (C20750i) obj;
            return l.a(this.f58384a, c20750i.f58384a) && l.a(this.f58385b, c20750i.f58385b) && l.a(this.f58386c, c20750i.f58386c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f58384a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f58385b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        AbstractC20845h abstractC20845h = this.f58386c;
        if (abstractC20845h != null) {
            i = abstractC20845h.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Tag(text=");
        m8728C.append(this.f58384a);
        m8728C.append(", iconUrl=");
        m8728C.append(this.f58385b);
        m8728C.append(", painter=");
        m8728C.append(this.f58386c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
