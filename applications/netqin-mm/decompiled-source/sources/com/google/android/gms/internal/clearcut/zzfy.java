package com.google.android.gms.internal.clearcut;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfy.class */
public final class zzfy {

    /* renamed from: a */
    public static final Object f29285a = new Object();

    static {
        Charset.forName(Request.DEFAULT_PARAMS_ENCODING);
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
    }

    /* renamed from: a */
    public static int m10626a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    /* renamed from: a */
    public static int m10624a(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    /* renamed from: a */
    public static int m10622a(Object[] objArr) {
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
    public static int m10620a(byte[][] bArr) {
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
    public static void m10627a(zzfu zzfuVar, zzfu zzfuVar2) {
        zzfw zzfwVar = zzfuVar.f29280b;
        if (zzfwVar != null) {
            zzfuVar2.f29280b = (zzfw) zzfwVar.clone();
        }
    }

    /* renamed from: a */
    public static boolean m10625a(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    /* renamed from: a */
    public static boolean m10623a(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    /* renamed from: a */
    public static boolean m10621a(Object[] objArr, Object[] objArr2) {
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
    public static boolean m10619a(byte[][] bArr, byte[][] bArr2) {
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
