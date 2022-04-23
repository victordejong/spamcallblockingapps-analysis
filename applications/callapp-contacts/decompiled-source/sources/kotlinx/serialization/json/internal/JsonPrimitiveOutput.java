package kotlinx.serialization.json.internal;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", Constants.VAST_TRACKER_CONTENT, "getCurrent", "putElement", "key", "", "element", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonPrimitiveOutput.class */
final class JsonPrimitiveOutput extends AbstractJsonTreeOutput {
    private JsonElement content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonPrimitiveOutput(Json json, Function1<? super JsonElement, v> nodeConsumer) {
        super(json, nodeConsumer, null);
        p.c(json, "json");
        p.c(nodeConsumer, "nodeConsumer");
        pushTag(TreeJsonOutputKt.PRIMITIVE_TAG);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final JsonElement getCurrent() {
        JsonElement jsonElement = this.content;
        if (jsonElement != null) {
            return jsonElement;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?".toString());
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final void putElement(String key, JsonElement element) {
        p.c(key, "key");
        p.c(element, "element");
        boolean z = true;
        if (key == TreeJsonOutputKt.PRIMITIVE_TAG) {
            if (this.content != null) {
                z = false;
            }
            if (z) {
                this.content = element;
                return;
            }
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?".toString());
        }
        throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag".toString());
    }
}
