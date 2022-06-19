package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.gt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gt.class */
public final class C13534gt {

    /* renamed from: a */
    static final Charset f50765a = Charset.forName("UTF-8");

    /* renamed from: b */
    static final Charset f50766b = Charset.forName("ISO-8859-1");

    /* renamed from: c */
    public static final byte[] f50767c;

    /* renamed from: d */
    public static final ByteBuffer f50768d;

    /* renamed from: e */
    public static final C13503fp f50769e;

    static {
        byte[] bArr = new byte[0];
        f50767c = bArr;
        f50768d = ByteBuffer.wrap(bArr);
        C13502fo c13502fo = new C13502fo(bArr, 0, 0, false, null);
        try {
            c13502fo.f50722c = 0;
            int i = c13502fo.f50720a + c13502fo.f50721b;
            c13502fo.f50720a = i;
            if (i > 0) {
                c13502fo.f50721b = i;
                c13502fo.f50720a = 0;
            } else {
                c13502fo.f50721b = 0;
            }
            f50769e = c13502fo;
        } catch (zzib e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public static int m12748a(int i, byte[] bArr, int i2) {
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + bArr[i4];
        }
        return i3;
    }

    /* renamed from: a */
    public static int m12747a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m12743a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static <T> T m12746a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static Object m12745a(Object obj, Object obj2) {
        return ((AbstractC13556ho) obj).mo12706o().mo12712a((AbstractC13556ho) obj2).mo12713B();
    }

    /* renamed from: a */
    public static <T> T m12744a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: a */
    public static boolean m12742a(byte[] bArr) {
        return C13598jc.m12504a(bArr);
    }

    /* renamed from: b */
    public static String m12741b(byte[] bArr) {
        return new String(bArr, f50765a);
    }

    /* renamed from: c */
    public static int m12740c(byte[] bArr) {
        int length = bArr.length;
        int m12748a = m12748a(length, bArr, length);
        int i = m12748a;
        if (m12748a == 0) {
            i = 1;
        }
        return i;
    }
}
