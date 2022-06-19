package p000a;

import java.nio.charset.Charset;
/* renamed from: a.u */
/* loaded from: classes-dex2jar.jar:a/u.class */
final class C0027u {

    /* renamed from: a */
    public static final Charset f59a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static int m22451a(int i) {
        return (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8) | ((i & 255) << 24);
    }

    /* renamed from: a */
    public static short m22448a(short s) {
        int i = 65535 & s;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: a */
    public static void m22450a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    /* renamed from: a */
    public static void m22449a(Throwable th) {
        m22446b(th);
    }

    /* renamed from: a */
    public static boolean m22447a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        boolean z = false;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z = true;
                break;
            } else if (bArr[i4 + i] != bArr2[i4 + i2]) {
                break;
            } else {
                i4++;
            }
        }
        return z;
    }

    /* renamed from: b */
    private static <T extends Throwable> void m22446b(Throwable th) {
        throw th;
    }
}
