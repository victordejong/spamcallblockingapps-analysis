package okhttp3.internal.p578ws;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020\u0006J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020$J\u000e\u0010%\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u000fX\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u000fX\u0080T¢\u0006\u0002\n��¨\u0006&"}, m4298d2 = {"Lokhttp3/internal/ws/WebSocketProtocol;", "", "()V", "ACCEPT_MAGIC", "", "B0_FLAG_FIN", "", "B0_FLAG_RSV1", "B0_FLAG_RSV2", "B0_FLAG_RSV3", "B0_MASK_OPCODE", "B1_FLAG_MASK", "B1_MASK_LENGTH", "CLOSE_CLIENT_GOING_AWAY", "CLOSE_MESSAGE_MAX", "", "CLOSE_NO_STATUS_CODE", "OPCODE_BINARY", "OPCODE_CONTINUATION", "OPCODE_CONTROL_CLOSE", "OPCODE_CONTROL_PING", "OPCODE_CONTROL_PONG", "OPCODE_FLAG_CONTROL", "OPCODE_TEXT", "PAYLOAD_BYTE_MAX", "PAYLOAD_LONG", "PAYLOAD_SHORT", "PAYLOAD_SHORT_MAX", "acceptHeader", "key", "closeCodeExceptionMessage", "code", "toggleMask", "", "cursor", "Lokio/Buffer$UnsafeCursor;", "", "validateCloseCode", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.ws.WebSocketProtocol */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/WebSocketProtocol.class */
public final class WebSocketProtocol {
    public static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int B0_FLAG_FIN = 128;
    public static final int B0_FLAG_RSV1 = 64;
    public static final int B0_FLAG_RSV2 = 32;
    public static final int B0_FLAG_RSV3 = 16;
    public static final int B0_MASK_OPCODE = 15;
    public static final int B1_FLAG_MASK = 128;
    public static final int B1_MASK_LENGTH = 127;
    public static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    public static final long CLOSE_MESSAGE_MAX = 123;
    public static final int CLOSE_NO_STATUS_CODE = 1005;
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();
    public static final int OPCODE_BINARY = 2;
    public static final int OPCODE_CONTINUATION = 0;
    public static final int OPCODE_CONTROL_CLOSE = 8;
    public static final int OPCODE_CONTROL_PING = 9;
    public static final int OPCODE_CONTROL_PONG = 10;
    public static final int OPCODE_FLAG_CONTROL = 8;
    public static final int OPCODE_TEXT = 1;
    public static final long PAYLOAD_BYTE_MAX = 125;
    public static final int PAYLOAD_LONG = 127;
    public static final int PAYLOAD_SHORT = 126;
    public static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
    }

    public final String acceptHeader(String key) {
        C18524p.m3840d(key, "key");
        C3208i.C3209a c3209a = C3208i.f11583d;
        return C3208i.C3209a.m39170a(key + ACCEPT_MAGIC).mo39181a("SHA-1").mo39176c();
    }

    public final String closeCodeExceptionMessage(int i) {
        if (i < 1000 || i >= 5000) {
            return "Code must be in range [1000,5000): ".concat(String.valueOf(i));
        }
        if ((1004 > i || 1006 < i) && (1015 > i || 2999 < i)) {
            return null;
        }
        return "Code " + i + " is reserved and may not be used.";
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    public final void toggleMask(C3202f.C3203a cursor, byte[] key) {
        int i;
        C18524p.m3840d(cursor, "cursor");
        C18524p.m3840d(key, "key");
        int length = key.length;
        int i2 = 0;
        do {
            byte[] bArr = cursor.f11576d;
            int i3 = cursor.f11577e;
            int i4 = cursor.f11578f;
            int i5 = i2;
            if (bArr != null) {
                while (true) {
                    i5 = i2;
                    if (i3 >= i4) {
                        break;
                    }
                    bArr[i3] = (byte) (bArr[i3] ^ key[i]);
                    i3++;
                    i2 = (i2 % length) + 1;
                }
            }
            long j = cursor.f11575c;
            C3202f c3202f = cursor.f11573a;
            C18524p.m3851a(c3202f);
            if (!(j != c3202f.f11572b)) {
                throw new IllegalStateException("no more bytes".toString());
            }
            i2 = i5;
        } while (cursor.m39189a(cursor.f11575c == -1 ? (char) 0 : cursor.f11575c + (cursor.f11578f - cursor.f11577e)) != -1);
    }

    public final void validateCloseCode(int i) {
        String closeCodeExceptionMessage = closeCodeExceptionMessage(i);
        if (closeCodeExceptionMessage == null) {
            return;
        }
        C18524p.m3851a((Object) closeCodeExceptionMessage);
        throw new IllegalArgumentException(closeCodeExceptionMessage.toString());
    }
}
