package p131c.p161d.p170b.p188c.p204h1;

import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.h1.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/i.class */
public final class C2919i {

    /* renamed from: a */
    public final String f10569a;

    public C2919i(int i, int i2, String str) {
        this.f10569a = str;
    }

    /* renamed from: a */
    public static C2919i m28496a(C2904v vVar) {
        String str;
        vVar.m28536f(2);
        int r = vVar.m28524r();
        int i = r >> 1;
        int r2 = ((vVar.m28524r() >> 3) & 31) | ((r & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        return new C2919i(i, r2, str + ".0" + i + ".0" + r2);
    }
}
