package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.p027a.C0541e;
/* renamed from: androidx.constraintlayout.a.a.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/k.class */
public final class C0551k {

    /* renamed from: a */
    static boolean[] f2217a = new boolean[3];

    /* renamed from: a */
    public static void m45175a(C0544f c0544f, C0557d c0557d, C0541e c0541e) {
        c0541e.f2118m = -1;
        c0541e.f2119n = -1;
        if (c0544f.f2059R[0] != C0541e.EnumC0543a.WRAP_CONTENT && c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_PARENT) {
            int i = c0541e.f2049H.f2037g;
            int o = c0544f.m45257o() - c0541e.f2051J.f2037g;
            c0541e.f2049H.f2039i = c0557d.m45138a(c0541e.f2049H);
            c0541e.f2051J.f2039i = c0557d.m45138a(c0541e.f2051J);
            c0557d.m45142a(c0541e.f2049H.f2039i, i);
            c0557d.m45142a(c0541e.f2051J.f2039i, o);
            c0541e.f2118m = 2;
            c0541e.m45275e(i, o);
        }
        if (c0544f.f2059R[1] == C0541e.EnumC0543a.WRAP_CONTENT || c0541e.f2059R[1] != C0541e.EnumC0543a.MATCH_PARENT) {
            return;
        }
        int i2 = c0541e.f2050I.f2037g;
        int p = c0544f.m45255p() - c0541e.f2052K.f2037g;
        c0541e.f2050I.f2039i = c0557d.m45138a(c0541e.f2050I);
        c0541e.f2052K.f2039i = c0557d.m45138a(c0541e.f2052K);
        c0557d.m45142a(c0541e.f2050I.f2039i, i2);
        c0557d.m45142a(c0541e.f2052K.f2039i, p);
        if (c0541e.f2085ad > 0 || c0541e.f2091ak == 8) {
            c0541e.f2053L.f2039i = c0557d.m45138a(c0541e.f2053L);
            c0557d.m45142a(c0541e.f2053L.f2039i, c0541e.f2085ad + i2);
        }
        c0541e.f2119n = 2;
        c0541e.m45273f(i2, p);
    }

    /* renamed from: a */
    public static final boolean m45176a(int i, int i2) {
        return (i & i2) == i2;
    }
}
