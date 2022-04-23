package com.google.android.gms.internal.measurement;

import com.lidroid.xutils.util.CharsetUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: com.google.android.gms.internal.measurement.x5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x5.class */
public final class C2202x5 {

    /* renamed from: a */
    static final Charset f9846a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f9847b;

    static {
        Charset.forName(CharsetUtils.DEFAULT_ENCODING_CHARSET);
        byte[] bArr = new byte[0];
        f9847b = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new u4(bArr, 0, 0, false, (C2180t4) null).c(0);
        } catch (zzib e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m4135a(T t) {
        t.getClass();
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T> T m4134b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static boolean m4133c(byte[] bArr) {
        return C2109e8.m4348a(bArr);
    }

    /* renamed from: d */
    public static String m4132d(byte[] bArr) {
        return new String(bArr, f9846a);
    }

    /* renamed from: e */
    public static int m4131e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m4130f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m4129g(byte[] bArr) {
        int length = bArr.length;
        int h = m4128h(length, bArr, 0, length);
        int i = h;
        if (h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    static int m4128h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    static Object m4127i(Object obj, Object obj2) {
        p6 f = ((q6) obj).f();
        f.F((q6) obj2);
        return f.U();
    }
}
