package kotlinx.serialization.json;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n��\u001a\u0015\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010-\u001a\u0010\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010.\u001a\u0010\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\t\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\"\u0015\u0010\b\u001a\u00020\t*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\"\u0017\u0010\f\u001a\u0004\u0018\u00010\t*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b\"\u0015\u0010\u000e\u001a\u00020\u000f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u000f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\"\u0015\u0010\u0015\u001a\u00020\u0016*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018\"\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u0016*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\"\u0015\u0010\u001c\u001a\u00020\u001d*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f\"\u0017\u0010 \u001a\u0004\u0018\u00010\u001d*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b!\u0010\"\"\u0015\u0010#\u001a\u00020$*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b%\u0010&\"\u0017\u0010'\u001a\u0004\u0018\u00010$*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006/"}, d2 = {"boolean", "", "Lkotlinx/serialization/json/JsonElement;", "getBoolean", "(Lkotlinx/serialization/json/JsonElement;)Z", "booleanOrNull", "getBooleanOrNull", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Boolean;", Constants.VAST_TRACKER_CONTENT, "", "getContent", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/String;", "contentOrNull", "getContentOrNull", "double", "", "getDouble", "(Lkotlinx/serialization/json/JsonElement;)D", "doubleOrNull", "getDoubleOrNull", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Double;", "float", "", "getFloat", "(Lkotlinx/serialization/json/JsonElement;)F", "floatOrNull", "getFloatOrNull", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Float;", "int", "", "getInt", "(Lkotlinx/serialization/json/JsonElement;)I", "intOrNull", "getIntOrNull", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Integer;", "long", "", "getLong", "(Lkotlinx/serialization/json/JsonElement;)J", "longOrNull", "getLongOrNull", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Long;", "JsonPrimitive", "Lkotlinx/serialization/json/JsonPrimitive;", "value", "(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;", "", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementsKt.class */
public final class JsonElementsKt {
    public static final JsonPrimitive JsonPrimitive(Boolean bool) {
        return bool == null ? JsonNull.INSTANCE : new JsonLiteral(bool.booleanValue());
    }

    public static final JsonPrimitive JsonPrimitive(Number number) {
        return number == null ? JsonNull.INSTANCE : new JsonLiteral(number);
    }

    public static final JsonPrimitive JsonPrimitive(String str) {
        return str == null ? JsonNull.INSTANCE : new JsonLiteral(str);
    }

    public static final boolean getBoolean(JsonElement jsonElement) {
        p.c(jsonElement, "$this$boolean");
        return jsonElement.getPrimitive().getBoolean();
    }

    public static final Boolean getBooleanOrNull(JsonElement booleanOrNull) {
        p.c(booleanOrNull, "$this$booleanOrNull");
        return booleanOrNull.getPrimitive().getBooleanOrNull();
    }

    public static final String getContent(JsonElement content) {
        p.c(content, "$this$content");
        return content.getPrimitive().getContent();
    }

    public static final String getContentOrNull(JsonElement contentOrNull) {
        p.c(contentOrNull, "$this$contentOrNull");
        return contentOrNull.getPrimitive().getContentOrNull();
    }

    public static final double getDouble(JsonElement jsonElement) {
        p.c(jsonElement, "$this$double");
        return jsonElement.getPrimitive().getDouble();
    }

    public static final Double getDoubleOrNull(JsonElement doubleOrNull) {
        p.c(doubleOrNull, "$this$doubleOrNull");
        return doubleOrNull.getPrimitive().getDoubleOrNull();
    }

    public static final float getFloat(JsonElement jsonElement) {
        p.c(jsonElement, "$this$float");
        return jsonElement.getPrimitive().getFloat();
    }

    public static final Float getFloatOrNull(JsonElement floatOrNull) {
        p.c(floatOrNull, "$this$floatOrNull");
        return floatOrNull.getPrimitive().getFloatOrNull();
    }

    public static final int getInt(JsonElement jsonElement) {
        p.c(jsonElement, "$this$int");
        return jsonElement.getPrimitive().getInt();
    }

    public static final Integer getIntOrNull(JsonElement intOrNull) {
        p.c(intOrNull, "$this$intOrNull");
        return intOrNull.getPrimitive().getIntOrNull();
    }

    public static final long getLong(JsonElement jsonElement) {
        p.c(jsonElement, "$this$long");
        return jsonElement.getPrimitive().getLong();
    }

    public static final Long getLongOrNull(JsonElement longOrNull) {
        p.c(longOrNull, "$this$longOrNull");
        return longOrNull.getPrimitive().getLongOrNull();
    }
}
