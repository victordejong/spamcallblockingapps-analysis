package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.C5449c;
import p000a.C0008f;
/* renamed from: okhttp3.internal.http2.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/d.class */
public final class C5491d {

    /* renamed from: a */
    static final C0008f f22924a = C0008f.m22538a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d */
    private static final String[] f22927d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: b */
    static final String[] f22925b = new String[64];

    /* renamed from: c */
    static final String[] f22926c = new String[256];

    static {
        int i;
        for (int i2 = 0; i2 < f22926c.length; i2++) {
            f22926c[i2] = C5449c.m662a("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
        }
        f22925b[0] = "";
        f22925b[1] = "END_STREAM";
        int[] iArr = {1};
        f22925b[8] = "PADDED";
        for (int i3 : iArr) {
            f22925b[i3 | 8] = f22925b[i3] + "|PADDED";
        }
        f22925b[4] = "END_HEADERS";
        f22925b[32] = "PRIORITY";
        f22925b[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        int length = iArr2.length;
        int i4 = 0;
        while (true) {
            if (i4 < length) {
                int i5 = iArr2[i4];
                for (int i6 : iArr) {
                    f22925b[i6 | i5] = f22925b[i6] + '|' + f22925b[i5];
                    f22925b[i6 | i5 | 8] = f22925b[i6] + '|' + f22925b[i5] + "|PADDED";
                }
                i4++;
            }
        }
        for (i = 0; i < f22925b.length; i++) {
            if (f22925b[i] == null) {
                f22925b[i] = f22926c[i];
            }
        }
    }

    private C5491d() {
    }

    /* renamed from: a */
    public static IllegalArgumentException m500a(String str, Object... objArr) {
        throw new IllegalArgumentException(C5449c.m662a(str, objArr));
    }

    /* renamed from: a */
    static String m501a(byte b, byte b2) {
        String str;
        if (b2 != 0) {
            switch (b) {
                case 2:
                case 3:
                case 7:
                case 8:
                    str = f22926c[b2];
                    break;
                case 4:
                case 6:
                    if (b2 != 1) {
                        str = f22926c[b2];
                        break;
                    } else {
                        str = "ACK";
                        break;
                    }
                case 5:
                default:
                    String str2 = b2 < f22925b.length ? f22925b[b2] : f22926c[b2];
                    if (b == 5 && (b2 & 4) != 0) {
                        str = str2.replace("HEADERS", "PUSH_PROMISE");
                        break;
                    } else {
                        str = str2;
                        if (b == 0) {
                            str = str2;
                            if ((b2 & 32) != 0) {
                                str = str2.replace("PRIORITY", "COMPRESSED");
                                break;
                            }
                        }
                    }
                    break;
            }
        } else {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public static String m499a(boolean z, int i, int i2, byte b, byte b2) {
        return C5449c.m662a("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < f22927d.length ? f22927d[b] : C5449c.m662a("0x%02x", Byte.valueOf(b)), m501a(b, b2));
    }

    /* renamed from: b */
    public static IOException m498b(String str, Object... objArr) {
        throw new IOException(C5449c.m662a(str, objArr));
    }
}
