package kotlinx.serialization.json.internal;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import kotlinx.serialization.json.JsonExceptionsKt;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0019\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\f\n\u0002\b\b\n\u0002\u0010\u0001\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\fH\u0002J\u0018\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\fH\u0002J \u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\fH\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\fJ\u0018\u0010\"\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0018\u0010#\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0018\u0010$\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\fH\u0002J\u0006\u0010%\u001a\u00020\u0014J.\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\b2\b\b\u0002\u0010!\u001a\u00020\f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00030(H\u0080\b¢\u0006\u0002\b)J*\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u00112\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00030-H\u0080\b¢\u0006\u0002\b.J\u0006\u0010/\u001a\u00020\u0014J\u0006\u00100\u001a\u00020\u0003J\u0006\u00101\u001a\u00020\u0003J\b\u00102\u001a\u00020\u0003H\u0002J\u0006\u00103\u001a\u00020\u0003J\b\u00104\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0011\u0010\r\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\r\u0010\nR\u000e\u0010\u000e\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��¨\u00065"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonReader;", "", Payload.SOURCE, "", "(Ljava/lang/String;)V", "buf", "", "canBeginValue", "", "getCanBeginValue", "()Z", "currentPosition", "", "isDone", "length", VastIconXmlManager.OFFSET, "tokenClass", "", "tokenPosition", "append", "", "ch", "", "appendEsc", "startPosition", "appendHex", "startPos", "appendRange", "fromIndex", "toIndex", "fail", "", "message", "position", "fromHexChar", "nextLiteral", "nextString", "nextToken", "require", "condition", "Lkotlin/Function0;", "require$kotlinx_serialization_runtime", "requireTokenClass", "expected", "errorMessage", "Lkotlin/Function1;", "requireTokenClass$kotlinx_serialization_runtime", "skipElement", "takeBooleanStringUnquoted", "takeString", "takeStringInternal", "takeStringQuoted", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonReader.class */
public final class JsonReader {
    public int currentPosition;
    private int length;
    private final String source;
    private int tokenPosition;
    public byte tokenClass = (byte) 12;
    private int offset = -1;
    private char[] buf = new char[16];

    public JsonReader(String source) {
        C18524p.m3841c(source, "source");
        this.source = source;
        nextToken();
    }

    private final void append(char c) {
        int i = this.length;
        char[] cArr = this.buf;
        if (i >= cArr.length) {
            char[] copyOf = Arrays.copyOf(cArr, cArr.length * 2);
            C18524p.m3849a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.buf = copyOf;
        }
        char[] cArr2 = this.buf;
        int i2 = this.length;
        this.length = i2 + 1;
        cArr2[i2] = c;
    }

    private final int appendEsc(String str, int i) {
        if (!(i < str.length())) {
            fail("Unexpected EOF after escape character", i);
            throw null;
        }
        int i2 = i + 1;
        char charAt = str.charAt(i);
        if (charAt == 'u') {
            return appendHex(str, i2);
        }
        char escapeToChar = JsonReaderKt.escapeToChar(charAt);
        boolean z = false;
        if (escapeToChar != 0) {
            z = true;
        }
        if (z) {
            append(escapeToChar);
            return i2;
        }
        fail("Invalid escaped char '" + charAt + '\'', i2);
        throw null;
    }

    private final int appendHex(String str, int i) {
        int i2 = i + 1;
        int fromHexChar = fromHexChar(str, i);
        int i3 = i2 + 1;
        int fromHexChar2 = fromHexChar(str, i2);
        int i4 = i3 + 1;
        append((char) ((fromHexChar << 12) + (fromHexChar2 << 8) + (fromHexChar(str, i3) << 4) + fromHexChar(str, i4)));
        return i4 + 1;
    }

    private final void appendRange(String str, int i, int i2) {
        int i3 = i2 - i;
        int i4 = this.length;
        int i5 = i4 + i3;
        char[] cArr = this.buf;
        if (i5 > cArr.length) {
            char[] copyOf = Arrays.copyOf(cArr, C18363d.m4051c(i5, cArr.length * 2));
            C18524p.m3849a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.buf = copyOf;
        }
        for (int i6 = 0; i6 < i3; i6++) {
            this.buf[i4 + i6] = str.charAt(i + i6);
        }
        this.length += i3;
    }

    public static /* synthetic */ Void fail$default(JsonReader jsonReader, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = jsonReader.currentPosition;
        }
        return jsonReader.fail(str, i);
    }

    private final int fromHexChar(String str, int i) {
        if (!(i < str.length())) {
            fail("Unexpected EOF during unicode escape", i);
            throw null;
        }
        char charAt = str.charAt(i);
        if ('0' <= charAt && '9' >= charAt) {
            return charAt - '0';
        }
        char c = 'a';
        if ('a' > charAt || 'f' < charAt) {
            c = 'A';
            if ('A' > charAt || 'F' < charAt) {
                fail$default(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, 2, null);
                throw null;
            }
        }
        return (charAt - c) + 10;
    }

    private final void nextLiteral(String str, int i) {
        boolean rangeEquals;
        this.tokenPosition = i;
        this.offset = i;
        while (i < str.length() && JsonReaderKt.charToTokenClass(str.charAt(i)) == 0) {
            i++;
        }
        this.currentPosition = i;
        int i2 = this.offset;
        int i3 = i - i2;
        this.length = i3;
        rangeEquals = JsonReaderKt.rangeEquals(str, i2, i3, JsonReaderKt.NULL);
        this.tokenClass = (byte) (rangeEquals ? 10 : 0);
    }

    private final void nextString(String str, int i) {
        this.tokenPosition = i;
        this.length = 0;
        int i2 = i + 1;
        int i3 = i2;
        int i4 = i3;
        while (str.charAt(i3) != '\"') {
            if (str.charAt(i3) == '\\') {
                appendRange(str, i4, i3);
                i4 = appendEsc(str, i3 + 1);
                i3 = i4;
            } else {
                i3++;
                if (i3 >= str.length()) {
                    fail("EOF", i3);
                    throw null;
                }
            }
        }
        if (i4 == i2) {
            this.offset = i4;
            this.length = i3 - i4;
        } else {
            appendRange(str, i4, i3);
            this.offset = -1;
        }
        this.currentPosition = i3 + 1;
        this.tokenClass = (byte) 1;
    }

    public static /* synthetic */ void require$kotlinx_serialization_runtime$default(JsonReader jsonReader, boolean z, int i, Function0 message, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = jsonReader.currentPosition;
        }
        C18524p.m3841c(message, "message");
        if (z) {
            return;
        }
        jsonReader.fail((String) message.invoke(), i);
        throw null;
    }

    private final String takeStringInternal() {
        String str;
        int i = this.offset;
        if (i < 0) {
            str = new String(this.buf, 0, this.length);
        } else {
            String str2 = this.source;
            int i2 = this.length;
            if (str2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            str = str2.substring(i, i2 + i);
            C18524p.m3849a((Object) str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        nextToken();
        return str;
    }

    public final Void fail(String message, int i) {
        C18524p.m3841c(message, "message");
        throw JsonExceptionsKt.JsonDecodingException(i, message, this.source);
    }

    public final boolean getCanBeginValue() {
        byte b = this.tokenClass;
        return b == 0 || b == 1 || b == 6 || b == 8 || b == 10;
    }

    public final boolean isDone() {
        return this.tokenClass == 12;
    }

    public final void nextToken() {
        String str = this.source;
        int i = this.currentPosition;
        while (i < str.length()) {
            byte charToTokenClass = JsonReaderKt.charToTokenClass(str.charAt(i));
            if (charToTokenClass != 3) {
                if (charToTokenClass == 0) {
                    nextLiteral(str, i);
                    return;
                } else if (charToTokenClass == 1) {
                    nextString(str, i);
                    return;
                } else {
                    this.tokenPosition = i;
                    this.tokenClass = charToTokenClass;
                    this.currentPosition = i + 1;
                    return;
                }
            }
            i++;
        }
        this.tokenPosition = i;
        this.tokenClass = (byte) 12;
    }

    public final void require$kotlinx_serialization_runtime(boolean z, int i, Function0<String> message) {
        C18524p.m3841c(message, "message");
        if (z) {
            return;
        }
        fail(message.invoke(), i);
        throw null;
    }

    public final void requireTokenClass$kotlinx_serialization_runtime(byte b, Function1<? super Character, String> errorMessage) {
        C18524p.m3841c(errorMessage, "errorMessage");
        byte b2 = this.tokenClass;
        if (b2 == b) {
            return;
        }
        fail(errorMessage.invoke(Character.valueOf((char) b2)), this.tokenPosition);
        throw null;
    }

    public final void skipElement() {
        byte b = this.tokenClass;
        if (b != 6 && b != 8) {
            nextToken();
            return;
        }
        ArrayList arrayList = new ArrayList();
        do {
            byte b2 = this.tokenClass;
            switch (b2) {
                case 6:
                case 8:
                    arrayList.add(Byte.valueOf(b2));
                    break;
                case 7:
                    if (((Number) C18282n.m4119g((List<? extends Object>) arrayList)).byteValue() != 6) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found } instead of ]", this.source);
                    }
                    arrayList.remove(arrayList.size() - 1);
                    break;
                case 9:
                    if (((Number) C18282n.m4119g((List<? extends Object>) arrayList)).byteValue() != 8) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found ] instead of }", this.source);
                    }
                    arrayList.remove(arrayList.size() - 1);
                    break;
            }
            nextToken();
        } while (!arrayList.isEmpty());
    }

    public final String takeBooleanStringUnquoted() {
        if (this.tokenClass == 0) {
            return takeStringInternal();
        }
        fail("Expected start of the unquoted boolean literal. Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON", this.tokenPosition);
        throw null;
    }

    public final String takeString() {
        byte b = this.tokenClass;
        if (b == 0 || b == 1) {
            return takeStringInternal();
        }
        fail("Expected string or non-null literal", this.tokenPosition);
        throw null;
    }

    public final String takeStringQuoted() {
        if (this.tokenClass == 1) {
            return takeStringInternal();
        }
        fail("Expected string literal with quotes. Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON", this.tokenPosition);
        throw null;
    }

    public final String toString() {
        return "JsonReader(source='" + this.source + "', currentPosition=" + this.currentPosition + ", tokenClass=" + ((int) this.tokenClass) + ", tokenPosition=" + this.tokenPosition + ", offset=" + this.offset + ')';
    }
}
