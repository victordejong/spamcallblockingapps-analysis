package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/se3.class */
public final class se3 {

    /* renamed from: a */
    static final Charset f29462a = Charset.forName("UTF-8");

    /* renamed from: b */
    static final Charset f29463b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f29464c;

    /* renamed from: d */
    public static final ByteBuffer f29465d;

    /* renamed from: e */
    public static final md3 f29466e;

    static {
        byte[] bArr = new byte[0];
        f29464c = bArr;
        f29465d = ByteBuffer.wrap(bArr);
        int i = md3.f26548b;
        f29466e = md3.m13278d(bArr, 0, 0, false);
    }

    /* renamed from: a */
    public static <T> T m11072a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    public static <T> T m11071b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: c */
    public static boolean m11070c(byte[] bArr) {
        return fh3.m15198a(bArr);
    }

    /* renamed from: d */
    public static String m11069d(byte[] bArr) {
        return new String(bArr, f29462a);
    }

    /* renamed from: e */
    public static int m11068e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m11067f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m11066g(byte[] bArr) {
        int length = bArr.length;
        int m11065h = m11065h(length, bArr, 0, length);
        int i = m11065h;
        if (m11065h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    public static int m11065h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    public static Object m11064i(Object obj, Object obj2) {
        return ((mf3) obj).mo13203a().mo11083k((mf3) obj2).mo13566P();
    }
}
