package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H��\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002\u001a\u0018\u0010\r\u001a\u00020\u000e*\u00060\u000fj\u0002`\u00102\u0006\u0010\u0011\u001a\u00020\u0002H��\u001a\f\u0010\u0012\u001a\u00020\u0007*\u00020\u0002H��\u001a\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007*\u00020\u0002H��¢\u0006\u0002\u0010\u0014\" \u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018\u0002X\u0083\u0004¢\u0006\n\n\u0002\u0010\u0005\u0012\u0004\b\u0003\u0010\u0004¨\u0006\u0015"}, m4298d2 = {"ESCAPE_CHARS", "", "", "ESCAPE_CHARS$annotations", "()V", "[Ljava/lang/String;", "shouldBeQuoted", "", "str", "toHexChar", "", "i", "", "printQuoted", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "value", "toBooleanStrict", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StringOpsKt.class */
public final class StringOpsKt {
    private static final String[] ESCAPE_CHARS;

    static {
        String[] strArr = new String[128];
        for (int i = 0; i <= 31; i++) {
            strArr[i] = "\\u" + toHexChar(i >> 12) + toHexChar(i >> 8) + toHexChar(i >> 4) + toHexChar(i);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        ESCAPE_CHARS = strArr;
    }

    private static /* synthetic */ void ESCAPE_CHARS$annotations() {
    }

    public static final void printQuoted(StringBuilder printQuoted, String value) {
        C18524p.m3841c(printQuoted, "$this$printQuoted");
        C18524p.m3841c(value, "value");
        printQuoted.append('\"');
        int length = value.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                printQuoted.append((CharSequence) value, i3, length);
                printQuoted.append('\"');
                return;
            }
            char charAt = value.charAt(i);
            String[] strArr = ESCAPE_CHARS;
            int i4 = i3;
            if (charAt < strArr.length) {
                String str = strArr[charAt];
                if (str == null) {
                    i4 = i3;
                } else {
                    printQuoted.append((CharSequence) value, i3, i);
                    printQuoted.append(str);
                    i4 = i + 1;
                }
            }
            i++;
            i2 = i4;
        }
    }

    public static final boolean shouldBeQuoted(String str) {
        C18524p.m3841c(str, "str");
        if (C18524p.m3850a((Object) str, (Object) JsonReaderKt.NULL)) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (JsonReaderKt.charToTokenClass(str.charAt(i)) != 0) {
                return true;
            }
        }
        return false;
    }

    public static final boolean toBooleanStrict(String toBooleanStrict) {
        C18524p.m3841c(toBooleanStrict, "$this$toBooleanStrict");
        Boolean booleanStrictOrNull = toBooleanStrictOrNull(toBooleanStrict);
        if (booleanStrictOrNull != null) {
            return booleanStrictOrNull.booleanValue();
        }
        throw new IllegalStateException(toBooleanStrict + " does not represent a Boolean");
    }

    public static final Boolean toBooleanStrictOrNull(String toBooleanStrictOrNull) {
        C18524p.m3841c(toBooleanStrictOrNull, "$this$toBooleanStrictOrNull");
        if (C18425p.m3961a(toBooleanStrictOrNull, "true")) {
            return Boolean.TRUE;
        }
        if (!C18425p.m3961a(toBooleanStrictOrNull, "false")) {
            return null;
        }
        return Boolean.FALSE;
    }

    private static final char toHexChar(int i) {
        int i2 = i & 15;
        return (char) (i2 < 10 ? i2 + 48 : (i2 - 10) + 97);
    }
}
