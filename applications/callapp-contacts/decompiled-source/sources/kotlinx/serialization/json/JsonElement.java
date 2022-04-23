package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.internal.TreeJsonOutputKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0001\n\u0002\b\u0003\b7\u0018�� \u001c2\u00020\u0001:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0001\u0003\u0013\u000f\u0007¨\u0006\u001d"}, d2 = {"Lkotlinx/serialization/json/JsonElement;", "", "()V", "isNull", "", "()Z", "jsonArray", "Lkotlinx/serialization/json/JsonArray;", "getJsonArray", "()Lkotlinx/serialization/json/JsonArray;", "jsonNull", "Lkotlinx/serialization/json/JsonNull;", "getJsonNull", "()Lkotlinx/serialization/json/JsonNull;", "jsonObject", "Lkotlinx/serialization/json/JsonObject;", "getJsonObject", "()Lkotlinx/serialization/json/JsonObject;", TreeJsonOutputKt.PRIMITIVE_TAG, "Lkotlinx/serialization/json/JsonPrimitive;", "getPrimitive", "()Lkotlinx/serialization/json/JsonPrimitive;", "contains", "key", "", "error", "", "element", "Companion", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElement.class */
public abstract class JsonElement {
    public static final Companion Companion = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/JsonElement$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElement$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<JsonElement> serializer() {
            return JsonElementSerializer.INSTANCE;
        }
    }

    private JsonElement() {
    }

    public /* synthetic */ JsonElement(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final Void error(String str) {
        throw new JsonException("Element " + ac.b(getClass()) + " is not a " + str);
    }

    public final boolean contains(String key) {
        p.c(key, "key");
        return (this instanceof JsonObject) && ((JsonObject) this).getContent().containsKey(key);
    }

    public JsonArray getJsonArray() {
        error("JsonArray");
        throw null;
    }

    public JsonNull getJsonNull() {
        error("JsonNull");
        throw null;
    }

    public JsonObject getJsonObject() {
        error("JsonObject");
        throw null;
    }

    public JsonPrimitive getPrimitive() {
        error("JsonPrimitive");
        throw null;
    }

    public final boolean isNull() {
        return this == JsonNull.INSTANCE;
    }
}
