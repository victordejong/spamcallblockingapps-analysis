package p012b.p076s.p078b.p079a.p081b1;

import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.b1.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/b.class */
public final class C1200b {

    /* renamed from: a */
    public final String f4800a;

    public C1200b(int i, int i2, String str) {
        this.f4800a = str;
    }

    /* renamed from: a */
    public static C1200b m34268a(C1184p pVar) {
        String str;
        pVar.m34356f(2);
        int r = pVar.m34344r();
        int i = r >> 1;
        int r2 = ((pVar.m34344r() >> 3) & 31) | ((r & 1) << 5);
        if (i == 4 || i == 5) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder(str.length() + 26);
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(".0");
        sb.append(r2);
        return new C1200b(i, r2, sb.toString());
    }
}
