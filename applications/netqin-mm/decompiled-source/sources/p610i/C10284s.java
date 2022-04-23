package p610i;

import com.android.volley.Request;
import java.nio.charset.Charset;
/* renamed from: i.s */
/* loaded from: classes2-dex2jar.jar:i/s.class */
public final class C10284s {

    /* renamed from: a */
    public static final Charset f37930a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: a */
    public static int m694a(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* renamed from: a */
    public static short m691a(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: a */
    public static void m693a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    /* renamed from: a */
    public static void m692a(Throwable th) {
        m689b(th);
        throw null;
    }

    /* renamed from: a */
    public static boolean m690a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static <T extends Throwable> void m689b(Throwable th) throws Throwable {
        throw th;
    }
}
