package com.google.android.gms.internal;

import com.android.vcard.VCardConfig;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    protected static final Charset f4224a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    protected static final Charset f4225b = Charset.forName(VCardConfig.DEFAULT_INTERMEDIATE_CHARSET);
    public static final Object c = new Object();

    public static int a(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr);
    }

    public static int a(long[] jArr) {
        return (jArr == null || jArr.length == 0) ? 0 : Arrays.hashCode(jArr);
    }

    public static int a(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            if (obj != null) {
                i = obj.hashCode() + (i * 31);
            }
        }
        return i;
    }

    public static int a(byte[][] bArr) {
        int length = bArr == null ? 0 : bArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr2 = bArr[i2];
            if (bArr2 != null) {
                i = Arrays.hashCode(bArr2) + (i * 31);
            }
        }
        return i;
    }

    public static void a(p pVar, p pVar2) {
        if (pVar.r != null) {
            pVar2.r = (r) pVar.r.clone();
        }
    }

    public static boolean a(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    public static boolean a(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    public static boolean a(Object[] objArr, Object[] objArr2) {
        boolean z;
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length || objArr[i2] != null) {
                while (i < length2 && objArr2[i] == null) {
                    i++;
                }
                boolean z2 = i2 >= length;
                boolean z3 = i >= length2;
                if (z2 && z3) {
                    z = true;
                    break;
                }
                z = false;
                if (z2 != z3) {
                    break;
                }
                z = false;
                if (!objArr[i2].equals(objArr2[i])) {
                    break;
                }
                i++;
                i2++;
            } else {
                i2++;
            }
        }
        return z;
    }

    public static boolean a(byte[][] bArr, byte[][] bArr2) {
        boolean z;
        int length = bArr == null ? 0 : bArr.length;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length || bArr[i2] != null) {
                while (i < length2 && bArr2[i] == null) {
                    i++;
                }
                boolean z2 = i2 >= length;
                boolean z3 = i >= length2;
                if (z2 && z3) {
                    z = true;
                    break;
                }
                z = false;
                if (z2 != z3) {
                    break;
                }
                z = false;
                if (!Arrays.equals(bArr[i2], bArr2[i])) {
                    break;
                }
                i++;
                i2++;
            } else {
                i2++;
            }
        }
        return z;
    }
}
