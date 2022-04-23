package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnj.class */
public final class dnj {

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f27002b;

    /* renamed from: d  reason: collision with root package name */
    private static final ByteBuffer f27004d;
    private static final dmi e;

    /* renamed from: a  reason: collision with root package name */
    static final Charset f27001a = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f27003c = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        f27002b = bArr;
        f27004d = ByteBuffer.wrap(bArr);
        e = dmi.a(bArr, 0, bArr.length, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
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
        return ((dot) obj).m().a((dot) obj2).e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return false;
    }

    public static boolean a(byte[] bArr) {
        return dqp.a(bArr);
    }

    public static String b(byte[] bArr) {
        return new String(bArr, f27001a);
    }

    public static int c(byte[] bArr) {
        int length = bArr.length;
        int a2 = a(length, bArr, 0, length);
        int i = a2;
        if (a2 == 0) {
            i = 1;
        }
        return i;
    }
}
