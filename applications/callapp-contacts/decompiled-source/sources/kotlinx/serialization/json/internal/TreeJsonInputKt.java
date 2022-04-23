package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlinx.serialization.c;
import kotlinx.serialization.d;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H��¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"readJson", "T", "Lkotlinx/serialization/json/Json;", "element", "Lkotlinx/serialization/json/JsonElement;", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/TreeJsonInputKt.class */
public final class TreeJsonInputKt {
    public static final <T> T readJson(Json readJson, JsonElement element, d<T> deserializer) {
        JsonPrimitiveInput jsonPrimitiveInput;
        p.c(readJson, "$this$readJson");
        p.c(element, "element");
        p.c(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            jsonPrimitiveInput = new JsonTreeInput(readJson, (JsonObject) element);
        } else if (element instanceof JsonArray) {
            jsonPrimitiveInput = new JsonTreeListInput(readJson, (JsonArray) element);
        } else if ((element instanceof JsonLiteral) || p.a(element, JsonNull.INSTANCE)) {
            jsonPrimitiveInput = new JsonPrimitiveInput(readJson, (JsonPrimitive) element);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return (T) c.a(jsonPrimitiveInput, deserializer);
    }
}
