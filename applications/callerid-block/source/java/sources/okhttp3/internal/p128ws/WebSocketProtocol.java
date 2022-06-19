package okhttp3.internal.p128ws;

import okio.Buffer$UnsafeCursor;
import okio.ByteString;
/* renamed from: okhttp3.internal.ws.WebSocketProtocol */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketProtocol.class */
public final class WebSocketProtocol {
    static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    static final int B0_FLAG_FIN = 128;
    static final int B0_FLAG_RSV1 = 64;
    static final int B0_FLAG_RSV2 = 32;
    static final int B0_FLAG_RSV3 = 16;
    static final int B0_MASK_OPCODE = 15;
    static final int B1_FLAG_MASK = 128;
    static final int B1_MASK_LENGTH = 127;
    static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    static final long CLOSE_MESSAGE_MAX = 123;
    static final int CLOSE_NO_STATUS_CODE = 1005;
    static final int OPCODE_BINARY = 2;
    static final int OPCODE_CONTINUATION = 0;
    static final int OPCODE_CONTROL_CLOSE = 8;
    static final int OPCODE_CONTROL_PING = 9;
    static final int OPCODE_CONTROL_PONG = 10;
    static final int OPCODE_FLAG_CONTROL = 8;
    static final int OPCODE_TEXT = 1;
    static final long PAYLOAD_BYTE_MAX = 125;
    static final int PAYLOAD_LONG = 127;
    static final int PAYLOAD_SHORT = 126;
    static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
        throw new AssertionError("No instances.");
    }

    public static String acceptHeader(String str) {
        return ByteString.encodeUtf8(str + ACCEPT_MAGIC).sha1().base64();
    }

    public static String closeCodeExceptionMessage(int i) {
        StringBuilder sb;
        if (i < 1000 || i >= 5000) {
            sb = new StringBuilder();
            sb.append("Code must be in range [1000,5000): ");
            sb.append(i);
        } else if ((i < 1004 || i > 1006) && (i < 1012 || i > 2999)) {
            return null;
        } else {
            sb = new StringBuilder();
            sb.append("Code ");
            sb.append(i);
            sb.append(" is reserved and may not be used.");
        }
        return sb.toString();
    }

    public static void toggleMask(Buffer$UnsafeCursor buffer$UnsafeCursor, byte[] bArr) {
        int i;
        int length = bArr.length;
        int i2 = 0;
        do {
            byte[] bArr2 = buffer$UnsafeCursor.data;
            int i3 = buffer$UnsafeCursor.start;
            int i4 = buffer$UnsafeCursor.end;
            while (i3 < i4) {
                bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i]);
                i3++;
                i2 = (i2 % length) + 1;
            }
        } while (buffer$UnsafeCursor.next() != -1);
    }

    public static void validateCloseCode(int i) {
        String closeCodeExceptionMessage = closeCodeExceptionMessage(i);
        if (closeCodeExceptionMessage == null) {
            return;
        }
        throw new IllegalArgumentException(closeCodeExceptionMessage);
    }
}
