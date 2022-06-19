package kotlinx.serialization.json.internal;

import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n��\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0001H��\u001a\u0010\u0010&\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\fH��\u001a(\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\f2\u0006\u0010,\u001a\u00020\u0012H\u0002\u001a\u001c\u0010-\u001a\u00020.*\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u0016H\u0002\u001a\u001c\u0010-\u001a\u00020.*\u00020\u00042\u0006\u0010%\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u0016H\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u001c\u0010\u0003\u001a\u00020\u00048��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\r\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u000f\u001a\u00020\fX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0015\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0017\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0018\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0019\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001a\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001b\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001c\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001d\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001e\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u001f\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010 \u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010!\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\"\u001a\u00020\u0016X\u0080T¢\u0006\u0002\n��\"\u000e\u0010#\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��¨\u00060"}, m4298d2 = {"BEGIN_LIST", "", "BEGIN_OBJ", "C2TC", "", "C2TC$annotations", "()V", "getC2TC", "()[B", "COLON", "COMMA", "CTC_MAX", "", "END_LIST", "END_OBJ", "ESC2C_MAX", "INVALID", "NULL", "", "STRING", "STRING_ESC", "TC_BEGIN_LIST", "", "TC_BEGIN_OBJ", "TC_COLON", "TC_COMMA", "TC_END_LIST", "TC_END_OBJ", "TC_EOF", "TC_INVALID", "TC_NULL", "TC_OTHER", "TC_STRING", "TC_STRING_ESC", "TC_WS", "UNICODE_ESC", "charToTokenClass", Constants.URL_CAMPAIGN, "escapeToChar", "rangeEquals", "", Payload.SOURCE, EventConstants.START, "length", "str", "initC2TC", "", "cl", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonReaderKt.class */
public final class JsonReaderKt {
    public static final char BEGIN_LIST = '[';
    public static final char BEGIN_OBJ = '{';
    private static final byte[] C2TC;
    public static final char COLON = ':';
    public static final char COMMA = ',';
    private static final int CTC_MAX = 126;
    public static final char END_LIST = ']';
    public static final char END_OBJ = '}';
    private static final int ESC2C_MAX = 117;
    public static final char INVALID = 0;
    public static final String NULL = "null";
    public static final char STRING = '\"';
    public static final char STRING_ESC = '\\';
    public static final byte TC_BEGIN_LIST = 8;
    public static final byte TC_BEGIN_OBJ = 6;
    public static final byte TC_COLON = 5;
    public static final byte TC_COMMA = 4;
    public static final byte TC_END_LIST = 9;
    public static final byte TC_END_OBJ = 7;
    public static final byte TC_EOF = 12;
    public static final byte TC_INVALID = 11;
    public static final byte TC_NULL = 10;
    public static final byte TC_OTHER = 0;
    public static final byte TC_STRING = 1;
    public static final byte TC_STRING_ESC = 2;
    public static final byte TC_WS = 3;
    public static final char UNICODE_ESC = 'u';

    static {
        byte[] bArr = new byte[126];
        for (int i = 0; i <= 32; i++) {
            initC2TC(bArr, i, (byte) 11);
        }
        initC2TC(bArr, 9, (byte) 3);
        initC2TC(bArr, 10, (byte) 3);
        initC2TC(bArr, 13, (byte) 3);
        initC2TC(bArr, 32, (byte) 3);
        initC2TC(bArr, ',', (byte) 4);
        initC2TC(bArr, ':', (byte) 5);
        initC2TC(bArr, '{', (byte) 6);
        initC2TC(bArr, '}', (byte) 7);
        initC2TC(bArr, '[', (byte) 8);
        initC2TC(bArr, ']', (byte) 9);
        initC2TC(bArr, '\"', (byte) 1);
        initC2TC(bArr, '\\', (byte) 2);
        C2TC = bArr;
    }

    public static /* synthetic */ void C2TC$annotations() {
    }

    public static final byte charToTokenClass(char c) {
        if (c < '~') {
            return C2TC[c];
        }
        return (byte) 0;
    }

    public static final char escapeToChar(int i) {
        if (i < 117) {
            return EscapeCharMappings.ESCAPE_2_CHAR[i];
        }
        return (char) 0;
    }

    public static final byte[] getC2TC() {
        return C2TC;
    }

    private static final void initC2TC(byte[] bArr, char c, byte b) {
        initC2TC(bArr, (int) c, b);
    }

    private static final void initC2TC(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    public static final boolean rangeEquals(String str, int i, int i2, String str2) {
        int length = str2.length();
        if (i2 != length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (str.charAt(i + i3) != str2.charAt(i3)) {
                return false;
            }
        }
        return true;
    }
}
