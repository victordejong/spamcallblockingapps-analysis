package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.f6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f6.class */
public final class C7365f6 {

    /* renamed from: a */
    static final Charset f34431a = Charset.forName("UTF-8");

    /* renamed from: b */
    static final Charset f34432b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f34433c;

    /* renamed from: d */
    public static final ByteBuffer f34434d;

    /* renamed from: e */
    public static final C7322c5 f34435e;

    static {
        byte[] bArr = new byte[0];
        f34433c = bArr;
        f34434d = ByteBuffer.wrap(bArr);
        C7308b5 c7308b5 = new C7308b5(bArr, 0, 0, false, null);
        try {
            c7308b5.m7666c(0);
            f34435e = c7308b5;
        } catch (zzib e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public static <T> T m7503a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    public static <T> T m7502b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: c */
    public static boolean m7501c(byte[] bArr) {
        return C7465m8.m7108a(bArr);
    }

    /* renamed from: d */
    public static String m7500d(byte[] bArr) {
        return new String(bArr, f34431a);
    }

    /* renamed from: e */
    public static int m7499e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: f */
    public static int m7498f(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: g */
    public static int m7497g(byte[] bArr) {
        int length = bArr.length;
        int m7496h = m7496h(length, bArr, 0, length);
        int i = m7496h;
        if (m7496h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: h */
    public static int m7496h(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: i */
    public static Object m7495i(Object obj, Object obj2) {
        return ((AbstractC7623y6) obj).mo6729c().mo6755u((AbstractC7623y6) obj2).mo6756f();
    }
}
