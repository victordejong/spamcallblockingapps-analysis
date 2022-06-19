package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.b.a.e.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/e.class */
public final class C4047e {

    /* renamed from: a */
    static final C3973f f14686a = C3973f.m37101a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d */
    private static final String[] f14689d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: b */
    static final String[] f14687b = new String[64];

    /* renamed from: c */
    static final String[] f14688c = new String[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    static {
        int i;
        int i2;
        String[] strArr;
        int i3 = 0;
        while (true) {
            String[] strArr2 = f14688c;
            if (i3 >= strArr2.length) {
                break;
            }
            strArr2[i3] = C4015c.m36903a("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr3 = f14687b;
        strArr3[0] = "";
        strArr3[1] = "END_STREAM";
        int[] iArr = {1};
        strArr3[8] = "PADDED";
        for (int i4 = 0; i4 <= 0; i4++) {
            f14687b[iArr[i4] | 8] = strArr[i2] + "|PADDED";
        }
        String[] strArr4 = f14687b;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int i5 = 0;
        while (true) {
            i = 0;
            if (i5 < 3) {
                int i6 = new int[]{4, 32, 36}[i5];
                for (int i7 = 0; i7 <= 0; i7++) {
                    int i8 = iArr[i7];
                    String[] strArr5 = f14687b;
                    int i9 = i8 | i6;
                    strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                    strArr5[i9 | 8] = strArr5[i8] + '|' + strArr5[i6] + "|PADDED";
                }
                i5++;
            }
        }
        while (true) {
            String[] strArr6 = f14687b;
            if (i < strArr6.length) {
                if (strArr6[i] == null) {
                    strArr6[i] = f14688c[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    private C4047e() {
    }

    /* renamed from: a */
    public static IllegalArgumentException m36810a(String str, Object... objArr) {
        throw new IllegalArgumentException(C4015c.m36903a(str, objArr));
    }

    /* renamed from: a */
    static String m36811a(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        if (b != 2 && b != 3) {
            if (b == 4 || b == 6) {
                return b2 == 1 ? "ACK" : f14688c[b2];
            } else if (b != 7 && b != 8) {
                String[] strArr = f14687b;
                String str = b2 < strArr.length ? strArr[b2] : f14688c[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f14688c[b2];
    }

    /* renamed from: a */
    public static String m36809a(boolean z, int i, int i2, byte b, byte b2) {
        String[] strArr = f14689d;
        return C4015c.m36903a("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : C4015c.m36903a("0x%02x", Byte.valueOf(b)), m36811a(b, b2));
    }

    /* renamed from: b */
    public static IOException m36808b(String str, Object... objArr) throws IOException {
        throw new IOException(C4015c.m36903a(str, objArr));
    }
}
