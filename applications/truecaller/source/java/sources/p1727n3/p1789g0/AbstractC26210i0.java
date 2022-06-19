package p1727n3.p1789g0;
/* renamed from: n3.g0.i0 */
/* loaded from: classes-dex2jar.jar:n3/g0/i0.class */
public abstract class AbstractC26210i0 extends AbstractC26224r {

    /* renamed from: a */
    public static final String[] f73076a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: b */
    public static int m2544b(C26227u c26227u, int i) {
        int[] iArr;
        if (c26227u == null || (iArr = (int[]) c26227u.f73123a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: c */
    public int m2543c(C26227u c26227u) {
        Integer num;
        if (c26227u == null || (num = (Integer) c26227u.f73123a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }
}
