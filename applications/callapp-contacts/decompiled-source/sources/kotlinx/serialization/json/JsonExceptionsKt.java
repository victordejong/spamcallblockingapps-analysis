package kotlinx.serialization.json;

import com.mopub.mobileads.VastIconXmlManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.f.d;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0004\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\u001a \u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\u001a(\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\u001a\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\nH��\u001a \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H��\u001a\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H��\u001a\u0016\u0010\u0012\u001a\u00020\u0005*\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u0013"}, d2 = {"InvalidFloatingPoint", "Lkotlinx/serialization/json/JsonEncodingException;", "value", "", "type", "", "output", "key", "InvalidKeyKindException", "keyDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "JsonDecodingException", "Lkotlinx/serialization/json/JsonDecodingException;", VastIconXmlManager.OFFSET, "", "message", "input", "UnknownKeyException", "minify", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonExceptionsKt.class */
public final class JsonExceptionsKt {
    public static final JsonEncodingException InvalidFloatingPoint(Number value, String type, String output) {
        p.c(value, "value");
        p.c(type, "type");
        p.c(output, "output");
        return new JsonEncodingException("'" + value + "' is not a valid '" + type + "' as per JSON specification. You can enable 'serializeSpecialFloatingPointValues' property to serialize such values\nCurrent output: " + minify$default(output, 0, 1, null));
    }

    public static final JsonEncodingException InvalidFloatingPoint(Number value, String key, String type, String output) {
        p.c(value, "value");
        p.c(key, "key");
        p.c(type, "type");
        p.c(output, "output");
        return new JsonEncodingException("'" + value + "' with key '" + key + "' is not a valid " + type + " as per JSON specification. You can enable 'serializeSpecialFloatingPointValues' property to serialize such values.\nCurrent output: " + minify$default(output, 0, 1, null));
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor keyDescriptor) {
        p.c(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.a() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.b() + ".'\nYou can convert such maps to arrays [key1, value1, key2, value2,...] using 'allowStructuredMapKeys' property in JsonConfiguration");
    }

    public static final JsonDecodingException JsonDecodingException(int i, String message, String input) {
        p.c(message, "message");
        p.c(input, "input");
        return new JsonDecodingException(i, message + ".\n JSON input: " + minify(input, i));
    }

    public static final JsonDecodingException UnknownKeyException(String key, String input) {
        p.c(key, "key");
        p.c(input, "input");
        return new JsonDecodingException(-1, "JSON encountered unknown key: '" + key + "'. You can enable 'JsonConfiguration.ignoreUnknownKeys' property to ignore unknown keys.\n JSON input: " + minify$default(input, 0, 1, null));
    }

    private static final String minify(String str, int i) {
        if (str.length() < 200) {
            return str;
        }
        String str2 = ".....";
        if (i == -1) {
            int length = str.length() - 60;
            if (length <= 0) {
                return str;
            }
            StringBuilder sb = new StringBuilder(".....");
            if (str != null) {
                String substring = str.substring(length);
                p.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                sb.append(substring);
                return sb.toString();
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        int i2 = i - 30;
        int i3 = i + 30;
        String str3 = i2 <= 0 ? "" : ".....";
        if (i3 >= str.length()) {
            str2 = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        int c2 = d.c(i2, 0);
        int d2 = d.d(i3, str.length());
        if (str != null) {
            String substring2 = str.substring(c2, d2);
            p.a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb2.append(substring2);
            sb2.append(str2);
            return sb2.toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    static /* synthetic */ String minify$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        return minify(str, i);
    }
}
