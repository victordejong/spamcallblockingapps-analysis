package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J \u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00060\nj\b\u0012\u0004\u0012\u00020\u0006`\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonTreeListOutput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", "array", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "elementName", "", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "index", "", "getCurrent", "putElement", "key", "element", "shouldWriteElement", "", "desc", "tag", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeListOutput.class */
final class JsonTreeListOutput extends AbstractJsonTreeOutput {
    private final ArrayList<JsonElement> array = new ArrayList<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeListOutput(Json json, Function1<? super JsonElement, C20128v> nodeConsumer) {
        super(json, nodeConsumer, null);
        C18524p.m3841c(json, "json");
        C18524p.m3841c(nodeConsumer, "nodeConsumer");
    }

    @Override // kotlinx.serialization.p572b.AbstractC20358au
    public final String elementName(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final JsonElement getCurrent() {
        return new JsonArray(this.array);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public final void putElement(String key, JsonElement element) {
        C18524p.m3841c(key, "key");
        C18524p.m3841c(element, "element");
        this.array.add(Integer.parseInt(key), element);
    }

    public final boolean shouldWriteElement(SerialDescriptor desc, String tag, int i) {
        C18524p.m3841c(desc, "desc");
        C18524p.m3841c(tag, "tag");
        return true;
    }
}
