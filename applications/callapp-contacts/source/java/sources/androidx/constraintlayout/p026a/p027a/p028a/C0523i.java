package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0547h;
import androidx.constraintlayout.p026a.p027a.C0550j;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.a.a.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/i.class */
public final class C0523i {
    /* renamed from: a */
    public static C0531o m45341a(C0541e c0541e, int i, ArrayList<C0531o> arrayList, C0531o c0531o) {
        C0531o c0531o2;
        int i2 = i == 0 ? c0541e.f2075aG : c0541e.f2076aH;
        if (i2 != -1 && (c0531o == null || i2 != c0531o.f1980c)) {
            int i3 = 0;
            while (true) {
                c0531o2 = c0531o;
                if (i3 >= arrayList.size()) {
                    break;
                }
                c0531o2 = arrayList.get(i3);
                if (c0531o2.f1980c != i2) {
                    i3++;
                } else if (c0531o != null) {
                    c0531o.m45331a(i, c0531o2);
                    arrayList.remove(c0531o);
                }
            }
        } else {
            c0531o2 = c0531o;
            if (i2 != -1) {
                return c0531o;
            }
        }
        C0531o c0531o3 = c0531o2;
        if (c0531o2 == null) {
            C0531o c0531o4 = c0531o2;
            if (c0541e instanceof C0550j) {
                int m45177o = ((C0550j) c0541e).m45177o(i);
                c0531o4 = c0531o2;
                if (m45177o != -1) {
                    int i4 = 0;
                    while (true) {
                        c0531o4 = c0531o2;
                        if (i4 >= arrayList.size()) {
                            break;
                        }
                        c0531o4 = arrayList.get(i4);
                        if (c0531o4.f1980c == m45177o) {
                            break;
                        }
                        i4++;
                    }
                }
            }
            C0531o c0531o5 = c0531o4;
            if (c0531o4 == null) {
                c0531o5 = new C0531o(i);
            }
            arrayList.add(c0531o5);
            c0531o3 = c0531o5;
        }
        if (c0531o3.m45330a(c0541e)) {
            if (c0541e instanceof C0547h) {
                C0547h c0547h = (C0547h) c0541e;
                C0538d c0538d = c0547h.f2213d;
                int i5 = 0;
                if (c0547h.f2208aI == 0) {
                    i5 = 1;
                }
                c0538d.m45309a(i5, arrayList, c0531o3);
            }
            if (i == 0) {
                c0541e.f2075aG = c0531o3.f1980c;
                c0541e.f2049H.m45309a(i, arrayList, c0531o3);
                c0541e.f2051J.m45309a(i, arrayList, c0531o3);
            } else {
                c0541e.f2076aH = c0531o3.f1980c;
                c0541e.f2050I.m45309a(i, arrayList, c0531o3);
                c0541e.f2053L.m45309a(i, arrayList, c0531o3);
                c0541e.f2052K.m45309a(i, arrayList, c0531o3);
            }
            c0541e.f2056O.m45309a(i, arrayList, c0531o3);
        }
        return c0531o3;
    }

    /* renamed from: a */
    public static C0531o m45340a(ArrayList<C0531o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0531o c0531o = arrayList.get(i2);
            if (i == c0531o.f1980c) {
                return c0531o;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m45342a(C0541e.EnumC0543a enumC0543a, C0541e.EnumC0543a enumC0543a2, C0541e.EnumC0543a enumC0543a3, C0541e.EnumC0543a enumC0543a4) {
        return (enumC0543a3 == C0541e.EnumC0543a.FIXED || enumC0543a3 == C0541e.EnumC0543a.WRAP_CONTENT || (enumC0543a3 == C0541e.EnumC0543a.MATCH_PARENT && enumC0543a != C0541e.EnumC0543a.WRAP_CONTENT)) || (enumC0543a4 == C0541e.EnumC0543a.FIXED || enumC0543a4 == C0541e.EnumC0543a.WRAP_CONTENT || (enumC0543a4 == C0541e.EnumC0543a.MATCH_PARENT && enumC0543a2 != C0541e.EnumC0543a.WRAP_CONTENT));
    }
}
