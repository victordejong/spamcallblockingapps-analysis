package com.google.android.gms.internal.ads;

import com.lidroid.xutils.util.CharsetUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xc2.class */
public final class xc2 {

    /* renamed from: a */
    static final Charset f9100a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f9101b;

    static {
        Charset.forName(CharsetUtils.DEFAULT_ENCODING_CHARSET);
        byte[] bArr = new byte[0];
        f9101b = bArr;
        ByteBuffer.wrap(bArr);
        sb2.m5778d(bArr, 0, 0, false);
    }

    /* renamed from: a */
    public static <T> T m4918a(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: b */
    public static <T> T m4917b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static boolean m4916c(byte[] bArr) {
        return jf2.m6988a(bArr);
    }

    /* renamed from: d */
    public static String m4915d(byte[] bArr) {
        return new String(bArr, f9100a);
    }

    /* renamed from: e */
    public static int m4914e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m4913f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m4912g(byte[] bArr) {
        int length = bArr.length;
        int m4911h = m4911h(length, bArr, 0, length);
        int i = m4911h;
        if (m4911h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    static int m4911h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    static Object m4910i(Object obj, Object obj2) {
        pd2 c = ((qd2) obj).c();
        c.C((qd2) obj2);
        return c.K();
    }
}
