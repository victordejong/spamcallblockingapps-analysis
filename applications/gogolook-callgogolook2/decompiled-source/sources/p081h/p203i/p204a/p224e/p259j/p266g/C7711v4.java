package p081h.p203i.p204a.p224e.p259j.p266g;

import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.g.v4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/v4.class */
public final class C7711v4 {

    /* renamed from: a */
    public static final Object f18051a = new Object();

    static {
        Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
    }

    /* renamed from: a */
    public static int m19735a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    /* renamed from: a */
    public static int m19733a(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    /* renamed from: a */
    public static int m19731a(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            i = i;
            if (obj != null) {
                i = (i * 31) + obj.hashCode();
            }
        }
        return i;
    }

    /* renamed from: a */
    public static int m19729a(byte[][] bArr) {
        int length = bArr == null ? 0 : bArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr2 = bArr[i2];
            i = i;
            if (bArr2 != null) {
                i = (i * 31) + Arrays.hashCode(bArr2);
            }
        }
        return i;
    }

    /* renamed from: a */
    public static void m19736a(C7683r4 r4Var, C7683r4 r4Var2) {
        C7697t4 t4Var = r4Var.f18023b;
        if (t4Var != null) {
            r4Var2.f18023b = (C7697t4) t4Var.clone();
        }
    }

    /* renamed from: a */
    public static boolean m19734a(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    /* renamed from: a */
    public static boolean m19732a(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    /* renamed from: a */
    public static boolean m19730a(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (objArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && objArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (z && z2) {
                return true;
            }
            if (z != z2 || !objArr[i].equals(objArr2[i3])) {
                return false;
            }
            i++;
            i2 = i3 + 1;
        }
    }

    /* renamed from: a */
    public static boolean m19728a(byte[][] bArr, byte[][] bArr2) {
        int length = bArr == null ? 0 : bArr.length;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (bArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && bArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (z && z2) {
                return true;
            }
            if (z != z2 || !Arrays.equals(bArr[i], bArr2[i3])) {
                return false;
            }
            i++;
            i2 = i3 + 1;
        }
    }
}
