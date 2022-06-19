package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0014J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonTreeMapInput;", "Lkotlinx/serialization/json/internal/JsonTreeInput;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonObject;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V", "keys", "", "", "position", "", "size", "getValue", "()Lkotlinx/serialization/json/JsonObject;", "currentElement", "Lkotlinx/serialization/json/JsonElement;", "tag", "decodeElementIndex", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "elementName", "desc", "index", "endStructure", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeMapInput.class */
final class JsonTreeMapInput extends JsonTreeInput {
    private final List<String> keys;
    private int position = -1;
    private final int size;
    private final JsonObject value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeMapInput(Json json, JsonObject value) {
        super(json, value);
        C18524p.m3841c(json, "json");
        C18524p.m3841c(value, "value");
        this.value = value;
        List<String> h = C18282n.m4118h(getValue().keySet());
        this.keys = h;
        this.size = h.size() * 2;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeInput, kotlinx.serialization.json.internal.AbstractJsonTreeInput
    protected final JsonElement currentElement(String tag) {
        C18524p.m3841c(tag, "tag");
        return this.position % 2 == 0 ? new JsonLiteral(tag) : (JsonElement) C18247ai.m4253a(getValue(), tag);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeInput, kotlinx.serialization.AbstractC20327a
    public final int decodeElementIndex(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        int i = this.position;
        if (i < this.size - 1) {
            int i2 = i + 1;
            this.position = i2;
            return i2;
        }
        return -1;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20357at
    public final String elementName(SerialDescriptor desc, int i) {
        C18524p.m3841c(desc, "desc");
        return this.keys.get(i / 2);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeInput, kotlinx.serialization.json.internal.AbstractJsonTreeInput, kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.AbstractC20327a
    public final void endStructure(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeInput, kotlinx.serialization.json.internal.AbstractJsonTreeInput
    public final JsonObject getValue() {
        return this.value;
    }
}
