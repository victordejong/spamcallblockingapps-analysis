package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gt.class */
public final class gt {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f29065a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f29066b = Charset.forName("ISO-8859-1");

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f29067c;

    /* renamed from: d  reason: collision with root package name */
    public static final ByteBuffer f29068d;
    public static final fp e;

    static {
        byte[] bArr = new byte[0];
        f29067c = bArr;
        f29068d = ByteBuffer.wrap(bArr);
        fo foVar = new fo(bArr, 0, 0, false, null);
        try {
            foVar.f29023c = 0;
            int i = foVar.f29021a + foVar.f29022b;
            foVar.f29021a = i;
            if (i > 0) {
                foVar.f29022b = i;
                foVar.f29021a = 0;
            } else {
                foVar.f29022b = 0;
            }
            e = foVar;
        } catch (zzib e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2) {
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + bArr[i4];
        }
        return i3;
    }

    public static int a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj, Object obj2) {
        return ((ho) obj).o().a((ho) obj2).B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static boolean a(byte[] bArr) {
        return jc.a(bArr);
    }

    public static String b(byte[] bArr) {
        return new String(bArr, f29065a);
    }

    public static int c(byte[] bArr) {
        int length = bArr.length;
        int a2 = a(length, bArr, length);
        int i = a2;
        if (a2 == 0) {
            i = 1;
        }
        return i;
    }
}
