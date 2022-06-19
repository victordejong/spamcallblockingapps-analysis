package p000;

import com.google.android.exoplayer2.C0515C;
import java.nio.charset.Charset;
/* renamed from: jm1 */
/* loaded from: classes3-dex2jar.jar:jm1.class */
public final class jm1 {

    /* renamed from: a */
    public static final Charset f6840a = Charset.forName(C0515C.UTF8_NAME);

    /* renamed from: a */
    public static boolean m1470a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static void m1469b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }
}
