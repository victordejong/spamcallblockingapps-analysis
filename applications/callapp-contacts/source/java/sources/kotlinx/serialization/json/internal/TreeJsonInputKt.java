package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.C20414c;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H��¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m4298d2 = {"readJson", "T", "Lkotlinx/serialization/json/Json;", "element", "Lkotlinx/serialization/json/JsonElement;", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/TreeJsonInputKt.class */
public final class TreeJsonInputKt {
    public static final <T> T readJson(Json readJson, JsonElement element, AbstractC20415d<T> deserializer) {
        JsonTreeInput jsonTreeInput;
        C18524p.m3841c(readJson, "$this$readJson");
        C18524p.m3841c(element, "element");
        C18524p.m3841c(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            jsonTreeInput = new JsonTreeInput(readJson, (JsonObject) element);
        } else if (element instanceof JsonArray) {
            jsonTreeInput = new JsonTreeListInput(readJson, (JsonArray) element);
        } else if (!(element instanceof JsonLiteral) && !C18524p.m3850a(element, JsonNull.INSTANCE)) {
            throw new NoWhenBranchMatchedException();
        } else {
            jsonTreeInput = new JsonPrimitiveInput(readJson, (JsonPrimitive) element);
        }
        return (T) C20414c.m693a(jsonTreeInput, deserializer);
    }
}
