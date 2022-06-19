package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.C1999c;
import p000a.C0009f;
/* renamed from: okhttp3.internal.http2.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/d.class */
public final class C2041d {

    /* renamed from: a */
    static final C0009f f5150a = C0009f.m8114a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d */
    private static final String[] f5153d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: b */
    static final String[] f5151b = new String[64];

    /* renamed from: c */
    static final String[] f5152c = new String[256];

    static {
        int i;
        int i2 = 0;
        while (true) {
            String[] strArr = f5152c;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = C1999c.m2342a("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = f5151b;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 : iArr) {
            f5151b[i3 | 8] = f5151b[i3] + "|PADDED";
        }
        String[] strArr3 = f5151b;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        int length = iArr2.length;
        int i4 = 0;
        while (true) {
            i = 0;
            if (i4 < length) {
                int i5 = iArr2[i4];
                for (int i6 : iArr) {
                    int i7 = i6 | i5;
                    f5151b[i7] = f5151b[i6] + '|' + f5151b[i5];
                    f5151b[i7 | 8] = f5151b[i6] + '|' + f5151b[i5] + "|PADDED";
                }
                i4++;
            }
        }
        while (true) {
            String[] strArr4 = f5151b;
            if (i < strArr4.length) {
                if (strArr4[i] == null) {
                    strArr4[i] = f5152c[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    private C2041d() {
    }

    /* renamed from: a */
    public static IllegalArgumentException m2182a(String str, Object... objArr) {
        throw new IllegalArgumentException(C1999c.m2342a(str, objArr));
    }

    /* renamed from: a */
    static String m2183a(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        if (b != 2 && b != 3) {
            if (b == 4 || b == 6) {
                return b2 == 1 ? "ACK" : f5152c[b2];
            } else if (b != 7 && b != 8) {
                String[] strArr = f5151b;
                String str = b2 < strArr.length ? strArr[b2] : f5152c[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f5152c[b2];
    }

    /* renamed from: a */
    public static String m2181a(boolean z, int i, int i2, byte b, byte b2) {
        String[] strArr = f5153d;
        return C1999c.m2342a("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : C1999c.m2342a("0x%02x", Byte.valueOf(b)), m2183a(b, b2));
    }

    /* renamed from: b */
    public static IOException m2180b(String str, Object... objArr) {
        throw new IOException(C1999c.m2342a(str, objArr));
    }
}
