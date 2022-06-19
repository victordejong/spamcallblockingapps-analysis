package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: com.google.android.gms.internal.measurement.ef */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ef.class */
public final class C3908ef {

    /* renamed from: b */
    public static final byte[] f18108b;

    /* renamed from: d */
    private static final ByteBuffer f18110d;

    /* renamed from: e */
    private static final AbstractC3875dg f18111e;

    /* renamed from: a */
    static final Charset f18107a = Charset.forName("UTF-8");

    /* renamed from: c */
    private static final Charset f18109c = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        f18108b = bArr;
        f18110d = ByteBuffer.wrap(bArr);
        byte[] bArr2 = f18108b;
        f18111e = AbstractC3875dg.m5742a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m5615a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: a */
    public static int m5614a(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    /* renamed from: a */
    public static int m5609a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static <T> T m5612a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: a */
    public static Object m5611a(Object obj, Object obj2) {
        return ((AbstractC3943fn) obj).mo5540ar().mo5548a((AbstractC3943fn) obj2).mo5545t();
    }

    /* renamed from: a */
    public static <T> T m5610a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* renamed from: a */
    public static boolean m5613a(AbstractC3943fn abstractC3943fn) {
        if (abstractC3943fn instanceof AbstractC3851cl) {
            AbstractC3851cl abstractC3851cl = (AbstractC3851cl) abstractC3943fn;
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5608a(byte[] bArr) {
        return C3991hd.m5241a(bArr);
    }

    /* renamed from: b */
    public static String m5607b(byte[] bArr) {
        return new String(bArr, f18107a);
    }

    /* renamed from: c */
    public static int m5606c(byte[] bArr) {
        int length = bArr.length;
        int m5615a = m5615a(length, bArr, 0, length);
        int i = m5615a;
        if (m5615a == 0) {
            i = 1;
        }
        return i;
    }
}
