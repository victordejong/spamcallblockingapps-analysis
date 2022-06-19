package com.bytedance.sdk.p127a.p128a;

import java.nio.charset.Charset;
/* renamed from: com.bytedance.sdk.a.a.u */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/u.class */
final class C3993u {

    /* renamed from: a */
    public static final Charset f14466a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static int m37015a(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* renamed from: a */
    public static short m37012a(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: a */
    public static void m37014a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    /* renamed from: a */
    public static void m37013a(Throwable th) {
        m37010b(th);
    }

    /* renamed from: a */
    public static boolean m37011a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static <T extends Throwable> void m37010b(Throwable th) throws Throwable {
        throw th;
    }
}
