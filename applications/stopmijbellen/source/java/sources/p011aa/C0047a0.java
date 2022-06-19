package p011aa;

import java.nio.charset.Charset;
/* renamed from: aa.a0 */
/* loaded from: classes2-dex2jar.jar:aa/a0.class */
public final class C0047a0 {

    /* renamed from: a */
    public static final Charset f107a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static boolean m8869a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static void m8868b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }
}
