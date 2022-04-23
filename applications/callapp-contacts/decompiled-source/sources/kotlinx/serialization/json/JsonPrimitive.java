package kotlinx.serialization.json;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.h.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.internal.StringOpsKt;
import kotlinx.serialization.json.internal.TreeJsonOutputKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018�� 12\u00020\u0001:\u00011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00100\u001a\u00020\u000bH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010\u001f8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0013\u0010)\u001a\u0004\u0018\u00010&8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0017\u0010,\u001a\u00020��¢\u0006\u000e\n��\u0012\u0004\b-\u0010\u0002\u001a\u0004\b.\u0010/\u0082\u0001\u000223¨\u00064"}, d2 = {"Lkotlinx/serialization/json/JsonPrimitive;", "Lkotlinx/serialization/json/JsonElement;", "()V", "boolean", "", "getBoolean", "()Z", "booleanOrNull", "getBooleanOrNull", "()Ljava/lang/Boolean;", Constants.VAST_TRACKER_CONTENT, "", "getContent", "()Ljava/lang/String;", "contentOrNull", "getContentOrNull", "double", "", "getDouble", "()D", "doubleOrNull", "getDoubleOrNull", "()Ljava/lang/Double;", "float", "", "getFloat", "()F", "floatOrNull", "getFloatOrNull", "()Ljava/lang/Float;", "int", "", "getInt", "()I", "intOrNull", "getIntOrNull", "()Ljava/lang/Integer;", "long", "", "getLong", "()J", "longOrNull", "getLongOrNull", "()Ljava/lang/Long;", TreeJsonOutputKt.PRIMITIVE_TAG, "primitive$annotations", "getPrimitive", "()Lkotlinx/serialization/json/JsonPrimitive;", "toString", "Companion", "Lkotlinx/serialization/json/JsonLiteral;", "Lkotlinx/serialization/json/JsonNull;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonPrimitive.class */
public abstract class JsonPrimitive extends JsonElement {
    public static final Companion Companion = new Companion(null);
    private final JsonPrimitive primitive;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/JsonPrimitive$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonPrimitive;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonPrimitive$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<JsonPrimitive> serializer() {
            return JsonPrimitiveSerializer.INSTANCE;
        }
    }

    private JsonPrimitive() {
        super(null);
        this.primitive = this;
    }

    public /* synthetic */ JsonPrimitive(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void primitive$annotations() {
    }

    public final boolean getBoolean() {
        return StringOpsKt.toBooleanStrict(getContent());
    }

    public final Boolean getBooleanOrNull() {
        return StringOpsKt.toBooleanStrictOrNull(getContent());
    }

    public abstract String getContent();

    public abstract String getContentOrNull();

    public final double getDouble() {
        return Double.parseDouble(getContent());
    }

    public final Double getDoubleOrNull() {
        return p.d(getContent());
    }

    public final float getFloat() {
        return Float.parseFloat(getContent());
    }

    public final Float getFloatOrNull() {
        return p.c(getContent());
    }

    public final int getInt() {
        return Integer.parseInt(getContent());
    }

    public final Integer getIntOrNull() {
        return p.e(getContent());
    }

    public final long getLong() {
        return Long.parseLong(getContent());
    }

    public final Long getLongOrNull() {
        return p.f(getContent());
    }

    @Override // kotlinx.serialization.json.JsonElement
    public final JsonPrimitive getPrimitive() {
        return this.primitive;
    }

    public String toString() {
        return getContent();
    }
}
