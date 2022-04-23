package com.google.android.gms.internal.icing;

import com.facebook.stetho.common.Utf8Charset;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzeb.class */
public final class zzeb {

    /* renamed from: a */
    static final Charset f8013a = Charset.forName(Utf8Charset.NAME);

    /* renamed from: b */
    public static final byte[] f8014b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f8014b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f8014b;
        zzdf.m13958a(bArr2, 0, bArr2.length, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m13806a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: b */
    public static int m13805b(byte[] bArr) {
        int length = bArr.length;
        int c = m13804c(length, bArr, 0, length);
        int i = c;
        if (c == 0) {
            i = 1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m13804c(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static Object m13803d(Object obj, Object obj2) {
        return ((zzfh) obj).mo13752t().mo13756Y((zzfh) obj2).mo13757W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static <T> T m13802e(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: f */
    public static boolean m13801f(byte[] bArr) {
        return zzgv.m13533i(bArr);
    }

    /* renamed from: g */
    public static String m13800g(byte[] bArr) {
        return new String(bArr, f8013a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static boolean m13799h(zzfh zzfhVar) {
        if (!(zzfhVar instanceof zzcn)) {
            return false;
        }
        zzcn zzcnVar = (zzcn) zzfhVar;
        return false;
    }

    /* renamed from: i */
    public static int m13798i(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: j */
    public static int m13797j(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
