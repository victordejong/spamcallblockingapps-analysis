package kotlinx.serialization.json;

import com.mopub.mobileads.VastIconXmlManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18524p;
import kotlin.p530f.C18363d;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0004\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\u001a \u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\u001a(\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\u001a\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\nH��\u001a \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H��\u001a\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H��\u001a\u0016\u0010\u0012\u001a\u00020\u0005*\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u0013"}, m4298d2 = {"InvalidFloatingPoint", "Lkotlinx/serialization/json/JsonEncodingException;", "value", "", "type", "", "output", "key", "InvalidKeyKindException", "keyDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "JsonDecodingException", "Lkotlinx/serialization/json/JsonDecodingException;", VastIconXmlManager.OFFSET, "", "message", "input", "UnknownKeyException", "minify", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonExceptionsKt.class */
public final class JsonExceptionsKt {
    public static final JsonEncodingException InvalidFloatingPoint(Number value, String type, String output) {
        C18524p.m3841c(value, "value");
        C18524p.m3841c(type, "type");
        C18524p.m3841c(output, "output");
        return new JsonEncodingException("'" + value + "' is not a valid '" + type + "' as per JSON specification. You can enable 'serializeSpecialFloatingPointValues' property to serialize such values\nCurrent output: " + minify$default(output, 0, 1, null));
    }

    public static final JsonEncodingException InvalidFloatingPoint(Number value, String key, String type, String output) {
        C18524p.m3841c(value, "value");
        C18524p.m3841c(key, "key");
        C18524p.m3841c(type, "type");
        C18524p.m3841c(output, "output");
        return new JsonEncodingException("'" + value + "' with key '" + key + "' is not a valid " + type + " as per JSON specification. You can enable 'serializeSpecialFloatingPointValues' property to serialize such values.\nCurrent output: " + minify$default(output, 0, 1, null));
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor keyDescriptor) {
        C18524p.m3841c(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.mo665a() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.mo662b() + ".'\nYou can convert such maps to arrays [key1, value1, key2, value2,...] using 'allowStructuredMapKeys' property in JsonConfiguration");
    }

    public static final JsonDecodingException JsonDecodingException(int i, String message, String input) {
        C18524p.m3841c(message, "message");
        C18524p.m3841c(input, "input");
        return new JsonDecodingException(i, message + ".\n JSON input: " + minify(input, i));
    }

    public static final JsonDecodingException UnknownKeyException(String key, String input) {
        C18524p.m3841c(key, "key");
        C18524p.m3841c(input, "input");
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
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String substring = str.substring(length);
            C18524p.m3849a((Object) substring, "(this as java.lang.String).substring(startIndex)");
            sb.append(substring);
            return sb.toString();
        }
        int i2 = i - 30;
        int i3 = i + 30;
        String str3 = i2 <= 0 ? "" : ".....";
        if (i3 >= str.length()) {
            str2 = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        int c = C18363d.m4051c(i2, 0);
        int d = C18363d.m4050d(i3, str.length());
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String substring2 = str.substring(c, d);
        C18524p.m3849a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb2.append(substring2);
        sb2.append(str2);
        return sb2.toString();
    }

    static /* synthetic */ String minify$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        return minify(str, i);
    }
}
