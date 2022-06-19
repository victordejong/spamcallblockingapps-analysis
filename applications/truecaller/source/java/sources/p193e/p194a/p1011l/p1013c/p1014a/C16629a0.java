package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.a0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/a0.class */
public final class C16629a0 {

    /* renamed from: a */
    public final String f46723a;

    /* renamed from: b */
    public final int f46724b;

    /* renamed from: c */
    public final int f46725c;

    /* renamed from: d */
    public final AbstractC16775z f46726d;

    public C16629a0(String str, int i, int i2, AbstractC16775z abstractC16775z) {
        l.e(str, "title");
        l.e(abstractC16775z, "action");
        this.f46723a = str;
        this.f46724b = i;
        this.f46725c = i2;
        this.f46726d = abstractC16775z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16629a0)) {
                return false;
            }
            C16629a0 c16629a0 = (C16629a0) obj;
            return l.a(this.f46723a, c16629a0.f46723a) && this.f46724b == c16629a0.f46724b && this.f46725c == c16629a0.f46725c && l.a(this.f46726d, c16629a0.f46726d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46723a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f46724b;
        int i3 = this.f46725c;
        AbstractC16775z abstractC16775z = this.f46726d;
        if (abstractC16775z != null) {
            i = abstractC16775z.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + i3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CtaSpec(title=");
        m8728C.append(this.f46723a);
        m8728C.append(", textColorAttr=");
        m8728C.append(this.f46724b);
        m8728C.append(", backgroundRes=");
        m8728C.append(this.f46725c);
        m8728C.append(", action=");
        m8728C.append(this.f46726d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
