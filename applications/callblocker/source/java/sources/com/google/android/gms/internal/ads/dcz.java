package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcz.class */
public final class dcz {

    /* renamed from: b */
    public static final byte[] f14094b;

    /* renamed from: d */
    private static final ByteBuffer f14096d;

    /* renamed from: e */
    private static final dby f14097e;

    /* renamed from: a */
    static final Charset f14093a = Charset.forName("UTF-8");

    /* renamed from: c */
    private static final Charset f14095c = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        f14094b = bArr;
        f14096d = ByteBuffer.wrap(bArr);
        byte[] bArr2 = f14094b;
        f14097e = dby.m10197a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m10050a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: a */
    public static int m10049a(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    /* renamed from: a */
    public static int m10044a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static <T> T m10047a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    public static Object m10046a(Object obj, Object obj2) {
        return ((deg) obj).mo9982u().mo9989a((deg) obj2).mo9988f();
    }

    /* renamed from: a */
    public static <T> T m10045a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static boolean m10048a(deg degVar) {
        if (degVar instanceof dba) {
            dba dbaVar = (dba) degVar;
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m10043a(byte[] bArr) {
        return dgd.m9642a(bArr);
    }

    /* renamed from: b */
    public static String m10042b(byte[] bArr) {
        return new String(bArr, f14093a);
    }

    /* renamed from: c */
    public static int m10041c(byte[] bArr) {
        int length = bArr.length;
        int m10050a = m10050a(length, bArr, 0, length);
        int i = m10050a;
        if (m10050a == 0) {
            i = 1;
        }
        return i;
    }
}
