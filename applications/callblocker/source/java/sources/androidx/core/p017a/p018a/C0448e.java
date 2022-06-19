package androidx.core.p017a.p018a;

import java.lang.reflect.Array;
/* renamed from: androidx.core.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/e.class */
final class C0448e {

    /* renamed from: a */
    static final /* synthetic */ boolean f1745a;

    static {
        f1745a = !C0448e.class.desiredAssertionStatus();
    }

    private C0448e() {
    }

    /* renamed from: a */
    public static int m20851a(int i) {
        return i <= 4 ? 8 : i * 2;
    }

    /* renamed from: a */
    public static int[] m20850a(int[] iArr, int i, int i2) {
        if (f1745a || i <= iArr.length) {
            int[] iArr2 = iArr;
            if (i + 1 > iArr.length) {
                iArr2 = new int[m20851a(i)];
                System.arraycopy(iArr, 0, iArr2, 0, i);
            }
            iArr2[i] = i2;
            return iArr2;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[], java.lang.Object] */
    /* renamed from: a */
    public static <T> T[] m20849a(T[] tArr, int i, T t) {
        if (f1745a || i <= tArr.length) {
            if (i + 1 > tArr.length) {
                ?? r0 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), m20851a(i));
                System.arraycopy(tArr, 0, r0, 0, i);
                tArr = r0;
            }
            tArr[i] = t;
            return tArr;
        }
        throw new AssertionError();
    }
}
