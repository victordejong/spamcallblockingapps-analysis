package com.google.android.gms.internal.measurement;

import com.facebook.stetho.common.Utf8Charset;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
public final class zzic {

    /* renamed from: a */
    static final Charset f8533a = Charset.forName(Utf8Charset.NAME);

    /* renamed from: b */
    public static final byte[] f8534b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f8534b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f8534b;
        zzhd.m12607c(bArr2, 0, bArr2.length, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m12397a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: b */
    public static int m12396b(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: c */
    public static int m12395c(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static <T> T m12394d(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static Object m12393e(Object obj, Object obj2) {
        return ((zzjh) obj).mo12334a().mo12325B((zzjh) obj2).mo12323h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static <T> T m12392f(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static boolean m12391g(zzjh zzjhVar) {
        if (!(zzjhVar instanceof zzgj)) {
            return false;
        }
        zzgj zzgjVar = (zzgj) zzjhVar;
        return false;
    }

    /* renamed from: h */
    public static boolean m12390h(byte[] bArr) {
        return zzla.m12041f(bArr);
    }

    /* renamed from: i */
    public static String m12389i(byte[] bArr) {
        return new String(bArr, f8533a);
    }

    /* renamed from: j */
    public static int m12388j(byte[] bArr) {
        int length = bArr.length;
        int a = m12397a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }
}
