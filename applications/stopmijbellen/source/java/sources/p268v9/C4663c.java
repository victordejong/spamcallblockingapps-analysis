package p268v9;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import p011aa.C0056i;
import p214q9.C4171c;
/* renamed from: v9.c */
/* loaded from: classes2-dex2jar.jar:v9/c.class */
public final class C4663c {

    /* renamed from: a */
    public static final C0056i f14384a = C0056i.m8835f("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: b */
    public static final String[] f14385b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: c */
    public static final String[] f14386c = new String[64];

    /* renamed from: d */
    public static final String[] f14387d = new String[256];

    static {
        int i;
        int i2 = 0;
        while (true) {
            String[] strArr = f14387d;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = C4171c.m1324l("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = f14386c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 = 0; i3 < 1; i3++) {
            int i4 = iArr[i3];
            String[] strArr3 = f14386c;
            strArr3[i4 | 8] = C0082b.m8754h(new StringBuilder(), strArr3[i4], "|PADDED");
        }
        String[] strArr4 = f14386c;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int i5 = 0;
        while (true) {
            i = 0;
            if (i5 < 3) {
                int i6 = new int[]{4, 32, 36}[i5];
                for (int i7 = 0; i7 < 1; i7++) {
                    int i8 = iArr[i7];
                    String[] strArr5 = f14386c;
                    int i9 = i8 | i6;
                    strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                    StringBuilder sb = new StringBuilder();
                    sb.append(strArr5[i8]);
                    sb.append('|');
                    strArr5[i9 | 8] = C0082b.m8754h(sb, strArr5[i6], "|PADDED");
                }
                i5++;
            }
        }
        while (true) {
            String[] strArr6 = f14386c;
            if (i < strArr6.length) {
                if (strArr6[i] == null) {
                    strArr6[i] = f14387d[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static String m659a(boolean z, int i, int i2, byte b, byte b2) {
        String str;
        String[] strArr = f14385b;
        String m1324l = b < strArr.length ? strArr[b] : C4171c.m1324l("0x%02x", Byte.valueOf(b));
        if (b2 == 0) {
            str = "";
        } else {
            if (b != 2 && b != 3) {
                if (b == 4 || b == 6) {
                    str = b2 == 1 ? "ACK" : f14387d[b2];
                } else if (b != 7 && b != 8) {
                    String[] strArr2 = f14386c;
                    str = b2 < strArr2.length ? strArr2[b2] : f14387d[b2];
                    if (b == 5 && (b2 & 4) != 0) {
                        str = str.replace("HEADERS", "PUSH_PROMISE");
                    } else if (b == 0 && (b2 & 32) != 0) {
                        str = str.replace("PRIORITY", "COMPRESSED");
                    }
                }
            }
            str = f14387d[b2];
        }
        return C4171c.m1324l("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), m1324l, str);
    }

    /* renamed from: b */
    public static IllegalArgumentException m658b(String str, Object... objArr) {
        throw new IllegalArgumentException(C4171c.m1324l(str, objArr));
    }

    /* renamed from: c */
    public static IOException m657c(String str, Object... objArr) throws IOException {
        throw new IOException(C4171c.m1324l(str, objArr));
    }
}
