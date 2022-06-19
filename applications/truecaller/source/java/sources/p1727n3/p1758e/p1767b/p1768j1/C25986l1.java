package p1727n3.p1758e.p1767b.p1768j1;

import java.util.ArrayList;
import java.util.List;
/* renamed from: n3.e.b.j1.l1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/l1.class */
public final class C25986l1 {

    /* renamed from: a */
    public final List<AbstractC25989m1> f72627a = new ArrayList();

    /* renamed from: a */
    public static void m2827a(List<int[]> list, int i, int[] iArr, int i2) {
        boolean z;
        if (i2 >= iArr.length) {
            list.add((int[]) iArr.clone());
            return;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = 0;
            while (true) {
                if (i4 >= i2) {
                    z = false;
                    break;
                } else if (i3 == iArr[i4]) {
                    z = true;
                    break;
                } else {
                    i4++;
                }
            }
            if (!z) {
                iArr[i2] = i3;
                m2827a(list, i, iArr, i2 + 1);
            }
        }
    }
}
