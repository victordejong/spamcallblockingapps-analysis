package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2.class */
public final class Http2 {
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    static final String[] FLAGS = new String[64];
    static final String[] BINARY = new String[256];

    static {
        String[] strArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr2 = BINARY;
            if (i2 >= strArr2.length) {
                break;
            }
            strArr2[i2] = Util.format("%8s", new Object[]{Integer.toBinaryString(i2)}).replace(' ', '0');
            i2++;
        }
        String[] strArr3 = FLAGS;
        strArr3[0] = "";
        strArr3[1] = "END_STREAM";
        int[] iArr = {1};
        strArr3[8] = "PADDED";
        for (int i3 = 0; i3 < 1; i3++) {
            int i4 = iArr[i3];
            FLAGS[i4 | 8] = strArr[i4] + "|PADDED";
        }
        String[] strArr4 = FLAGS;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = new int[]{4, 32, 36}[i5];
            for (int i7 = 0; i7 < 1; i7++) {
                int i8 = iArr[i7];
                String[] strArr5 = FLAGS;
                int i9 = i8 | i6;
                strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                strArr5[i9 | 8] = strArr5[i8] + '|' + strArr5[i6] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = FLAGS;
            if (i < strArr6.length) {
                if (strArr6[i] == null) {
                    strArr6[i] = BINARY[i];
                }
                i++;
            } else {
                return;
            }
        }
    }

    private Http2() {
    }

    static String formatFlags(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        if (!(b == 2 || b == 3)) {
            if (b == 4 || b == 6) {
                return b2 == 1 ? "ACK" : BINARY[b2];
            } else if (!(b == 7 || b == 8)) {
                String[] strArr = FLAGS;
                String str = b2 < strArr.length ? strArr[b2] : BINARY[b2];
                return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return BINARY[b2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        String[] strArr = FRAME_NAMES;
        return Util.format("%s 0x%08x %5d %-13s %s", new Object[]{z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b < strArr.length ? strArr[b] : Util.format("0x%02x", new Object[]{Byte.valueOf(b)}), formatFlags(b, b2)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IOException ioException(String str, Object... objArr) {
        throw new IOException(Util.format(str, objArr));
    }
}
