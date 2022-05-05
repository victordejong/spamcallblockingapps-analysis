package androidx.core.content.res;

import java.lang.reflect.Array;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/GrowingArrayUtils.class */
final class GrowingArrayUtils {
    private GrowingArrayUtils() {
    }

    /* renamed from: a */
    public static int[] m19616a(int[] iArr, int i, int i2) {
        int[] iArr2 = iArr;
        if (i + 1 > iArr.length) {
            iArr2 = new int[m19614c(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
        }
        iArr2[i] = i2;
        return iArr2;
    }

    /* renamed from: b */
    public static <T> T[] m19615b(T[] tArr, int i, T t) {
        T[] tArr2 = tArr;
        if (i + 1 > tArr.length) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), m19614c(i)));
            System.arraycopy(tArr, 0, tArr2, 0, i);
        }
        tArr2[i] = t;
        return tArr2;
    }

    /* renamed from: c */
    public static int m19614c(int i) {
        return i <= 4 ? 8 : i * 2;
    }
}
