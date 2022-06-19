package androidx.core.content.p003c;

import java.lang.reflect.Array;
/* renamed from: androidx.core.content.c.e */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/e.class */
final class C0274e {
    /* renamed from: a */
    public static int[] m13506a(int[] iArr, int i, int i2) {
        int[] iArr2 = iArr;
        if (i + 1 > iArr.length) {
            iArr2 = new int[m13504c(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
        }
        iArr2[i] = i2;
        return iArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[]] */
    /* renamed from: b */
    public static <T> T[] m13505b(T[] tArr, int i, T t) {
        T[] tArr2 = tArr;
        if (i + 1 > tArr.length) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), m13504c(i));
            System.arraycopy(tArr, 0, tArr2, 0, i);
        }
        tArr2[i] = t;
        return tArr2;
    }

    /* renamed from: c */
    public static int m13504c(int i) {
        return i <= 4 ? 8 : i * 2;
    }
}
