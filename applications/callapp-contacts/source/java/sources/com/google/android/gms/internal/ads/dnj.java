package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnj.class */
public final class dnj {

    /* renamed from: b */
    public static final byte[] f47287b;

    /* renamed from: d */
    private static final ByteBuffer f47289d;

    /* renamed from: e */
    private static final dmi f47290e;

    /* renamed from: a */
    static final Charset f47286a = Charset.forName("UTF-8");

    /* renamed from: c */
    private static final Charset f47288c = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        f47287b = bArr;
        f47289d = ByteBuffer.wrap(bArr);
        f47290e = dmi.m16455a(bArr, 0, bArr.length, false);
    }

    /* renamed from: a */
    public static int m16318a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m16317a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m16313a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static <T> T m16316a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static Object m16315a(Object obj, Object obj2) {
        return ((dot) obj).mo16254m().mo16261a((dot) obj2).mo16260e();
    }

    /* renamed from: a */
    public static <T> T m16314a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: a */
    public static boolean m16319a() {
        return false;
    }

    /* renamed from: a */
    public static boolean m16312a(byte[] bArr) {
        return dqp.m15941a(bArr);
    }

    /* renamed from: b */
    public static String m16311b(byte[] bArr) {
        return new String(bArr, f47286a);
    }

    /* renamed from: c */
    public static int m16310c(byte[] bArr) {
        int length = bArr.length;
        int m16318a = m16318a(length, bArr, 0, length);
        int i = m16318a;
        if (m16318a == 0) {
            i = 1;
        }
        return i;
    }
}
