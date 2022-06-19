package p269w;

import java.util.ArrayList;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4568f;
import p258v.C4570h;
/* renamed from: w.i */
/* loaded from: classes-dex2jar.jar:w/i.class */
public class C4703i {
    /* renamed from: a */
    public static C4709o m575a(C4566d c4566d, int i, ArrayList<C4709o> arrayList, C4709o c4709o) {
        C4709o c4709o2;
        int i2;
        int i3;
        int i4;
        int i5 = i == 0 ? c4566d.f14105p0 : c4566d.f14107q0;
        if (i5 != -1 && (c4709o == null || i5 != c4709o.f14550b)) {
            int i6 = 0;
            while (true) {
                c4709o2 = c4709o;
                if (i6 >= arrayList.size()) {
                    break;
                }
                c4709o2 = arrayList.get(i6);
                if (c4709o2.f14550b != i5) {
                    i6++;
                } else if (c4709o != null) {
                    c4709o.m562d(i, c4709o2);
                    arrayList.remove(c4709o);
                }
            }
        } else {
            c4709o2 = c4709o;
            if (i5 != -1) {
                return c4709o;
            }
        }
        C4709o c4709o3 = c4709o2;
        if (c4709o2 == null) {
            C4709o c4709o4 = c4709o2;
            if (c4566d instanceof C4570h) {
                C4570h c4570h = (C4570h) c4566d;
                int i7 = 0;
                while (true) {
                    if (i7 >= c4570h.f14145s0) {
                        i2 = -1;
                        break;
                    }
                    C4566d c4566d2 = c4570h.f14144r0[i7];
                    if (i == 0 && (i4 = c4566d2.f14105p0) != -1) {
                        i2 = i4;
                        break;
                    } else if (i == 1 && (i3 = c4566d2.f14107q0) != -1) {
                        i2 = i3;
                        break;
                    } else {
                        i7++;
                    }
                }
                c4709o4 = c4709o2;
                if (i2 != -1) {
                    int i8 = 0;
                    while (true) {
                        c4709o4 = c4709o2;
                        if (i8 >= arrayList.size()) {
                            break;
                        }
                        c4709o4 = arrayList.get(i8);
                        if (c4709o4.f14550b == i2) {
                            break;
                        }
                        i8++;
                    }
                }
            }
            C4709o c4709o5 = c4709o4;
            if (c4709o4 == null) {
                c4709o5 = new C4709o(i);
            }
            arrayList.add(c4709o5);
            c4709o3 = c4709o5;
        }
        if (c4709o3.m565a(c4566d)) {
            if (c4566d instanceof C4568f) {
                C4568f c4568f = (C4568f) c4566d;
                C4564c c4564c = c4568f.f14141u0;
                int i9 = 0;
                if (c4568f.f14142v0 == 0) {
                    i9 = 1;
                }
                c4564c.m834b(i9, arrayList, c4709o3);
            }
            if (i == 0) {
                c4566d.f14105p0 = c4709o3.f14550b;
                c4566d.f14057J.m834b(i, arrayList, c4709o3);
                c4566d.f14059L.m834b(i, arrayList, c4709o3);
            } else {
                c4566d.f14107q0 = c4709o3.f14550b;
                c4566d.f14058K.m834b(i, arrayList, c4709o3);
                c4566d.f14061N.m834b(i, arrayList, c4709o3);
                c4566d.f14060M.m834b(i, arrayList, c4709o3);
            }
            c4566d.f14064Q.m834b(i, arrayList, c4709o3);
        }
        return c4709o3;
    }

    /* renamed from: b */
    public static C4709o m574b(ArrayList<C4709o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C4709o c4709o = arrayList.get(i2);
            if (i == c4709o.f14550b) {
                return c4709o;
            }
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m573c(int i, int i2, int i3, int i4) {
        return (i3 == 1 || i3 == 2 || (i3 == 4 && i != 2)) || (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2));
    }
}
