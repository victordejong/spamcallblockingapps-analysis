package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.b.a.c;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final f f7938a = f.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f7941d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: b  reason: collision with root package name */
    static final String[] f7939b = new String[64];

    /* renamed from: c  reason: collision with root package name */
    static final String[] f7940c = new String[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    static {
        String[] strArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr2 = f7940c;
            if (i2 >= strArr2.length) {
                break;
            }
            strArr2[i2] = c.a("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr3 = f7939b;
        strArr3[0] = "";
        strArr3[1] = "END_STREAM";
        int[] iArr = {1};
        strArr3[8] = "PADDED";
        for (int i3 = 0; i3 <= 0; i3++) {
            int i4 = iArr[i3];
            f7939b[i4 | 8] = strArr[i4] + "|PADDED";
        }
        String[] strArr4 = f7939b;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = new int[]{4, 32, 36}[i5];
            for (int i7 = 0; i7 <= 0; i7++) {
                int i8 = iArr[i7];
                String[] strArr5 = f7939b;
                int i9 = i8 | i6;
                strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                strArr5[i9 | 8] = strArr5[i8] + '|' + strArr5[i6] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = f7939b;
            if (i < strArr6.length) {
                if (strArr6[i] == null) {
                    strArr6[i] = f7940c[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(c.a(str, objArr));
    }

    static String a(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        if (!(b2 == 2 || b2 == 3)) {
            if (b2 == 4 || b2 == 6) {
                return b3 == 1 ? "ACK" : f7940c[b3];
            }
            if (!(b2 == 7 || b2 == 8)) {
                String[] strArr = f7939b;
                String str = b3 < strArr.length ? strArr[b3] : f7940c[b3];
                return (b2 != 5 || (b3 & 4) == 0) ? (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f7940c[b3];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(boolean z, int i, int i2, byte b2, byte b3) {
        String[] strArr = f7941d;
        return c.a("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b2 < strArr.length ? strArr[b2] : c.a("0x%02x", Byte.valueOf(b2)), a(b2, b3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IOException b(String str, Object... objArr) throws IOException {
        throw new IOException(c.a(str, objArr));
    }
}
