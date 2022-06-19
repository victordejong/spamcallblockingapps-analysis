package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitive;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0002\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0006H\u0016J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonTreeMapOutput;", "Lkotlinx/serialization/json/internal/JsonTreeOutput;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", "isKey", "", "tag", "", "getCurrent", "putElement", "key", "element", "shouldWriteElement", "desc", "Lkotlinx/serialization/SerialDescriptor;", "index", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeMapOutput.class */
final class JsonTreeMapOutput extends JsonTreeOutput {
    private boolean isKey = true;
    private String tag;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeMapOutput(Json json, Function1<? super JsonElement, C20128v> nodeConsumer) {
        super(json, nodeConsumer);
        C18524p.m3841c(json, "json");
        C18524p.m3841c(nodeConsumer, "nodeConsumer");
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeOutput, kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final JsonElement getCurrent() {
        return new JsonObject(getContent());
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeOutput, kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final void putElement(String key, JsonElement element) {
        C18524p.m3841c(key, "key");
        C18524p.m3841c(element, "element");
        if (!this.isKey) {
            Map<String, JsonElement> content = getContent();
            String str = this.tag;
            if (str == null) {
                C18524p.m3848a("tag");
            }
            content.put(str, element);
            this.isKey = true;
        } else if (element instanceof JsonPrimitive) {
            this.tag = ((JsonPrimitive) element).getContent();
            this.isKey = false;
        } else if (element instanceof JsonObject) {
            throw JsonExceptionsKt.InvalidKeyKindException(JsonObjectSerializer.INSTANCE.getDescriptor());
        } else {
            if (!(element instanceof JsonArray)) {
                throw new NoWhenBranchMatchedException();
            }
            throw JsonExceptionsKt.InvalidKeyKindException(JsonArraySerializer.INSTANCE.getDescriptor());
        }
    }

    public final boolean shouldWriteElement(SerialDescriptor desc, String tag, int i) {
        C18524p.m3841c(desc, "desc");
        C18524p.m3841c(tag, "tag");
        return true;
    }
}
