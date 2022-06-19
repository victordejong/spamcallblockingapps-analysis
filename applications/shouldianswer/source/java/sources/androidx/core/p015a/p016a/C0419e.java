package androidx.core.p015a.p016a;

import java.lang.reflect.Array;
/* renamed from: androidx.core.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/e.class */
final class C0419e {

    /* renamed from: a */
    static final /* synthetic */ boolean f1565a = !C0419e.class.desiredAssertionStatus();

    private C0419e() {
    }

    /* renamed from: a */
    public static int m6705a(int i) {
        return i <= 4 ? 8 : i * 2;
    }

    /* renamed from: a */
    public static int[] m6704a(int[] iArr, int i, int i2) {
        if (f1565a || i <= iArr.length) {
            int[] iArr2 = iArr;
            if (i + 1 > iArr.length) {
                iArr2 = new int[m6705a(i)];
                System.arraycopy(iArr, 0, iArr2, 0, i);
            }
            iArr2[i] = i2;
            return iArr2;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[]] */
    /* renamed from: a */
    public static <T> T[] m6703a(T[] tArr, int i, T t) {
        if (f1565a || i <= tArr.length) {
            T[] tArr2 = tArr;
            if (i + 1 > tArr.length) {
                tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), m6705a(i));
                System.arraycopy(tArr, 0, tArr2, 0, i);
            }
            tArr2[i] = t;
            return tArr2;
        }
        throw new AssertionError();
    }
}
