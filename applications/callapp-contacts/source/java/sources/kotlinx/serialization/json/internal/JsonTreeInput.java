package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.p572b.C20386bp;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\b\u0012\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonTreeInput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonObject;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V", "position", "", "getValue", "()Lkotlinx/serialization/json/JsonObject;", "currentElement", "Lkotlinx/serialization/json/JsonElement;", "tag", "", "decodeElementIndex", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "endStructure", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeInput.class */
public class JsonTreeInput extends AbstractJsonTreeInput {
    private int position;
    private final JsonObject value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeInput(Json json, JsonObject value) {
        super(json, value, null);
        C18524p.m3841c(json, "json");
        C18524p.m3841c(value, "value");
        this.value = value;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    protected JsonElement currentElement(String tag) {
        C18524p.m3841c(tag, "tag");
        return (JsonElement) C18247ai.m4253a(getValue(), tag);
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public int decodeElementIndex(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        while (this.position < descriptor.mo659d()) {
            int i = this.position;
            this.position = i + 1;
            if (getValue().contains(getTag(descriptor, i))) {
                return this.position - 1;
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput, kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.AbstractC20327a
    public void endStructure(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        if (this.configuration.getIgnoreUnknownKeys$kotlinx_serialization_runtime() || (descriptor.mo662b() instanceof AbstractC20419h)) {
            return;
        }
        Set<String> m712a = C20386bp.m712a(descriptor);
        for (String str : getValue().keySet()) {
            if (!m712a.contains(str)) {
                throw JsonExceptionsKt.UnknownKeyException(str, getValue().toString());
            }
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    public JsonObject getValue() {
        return this.value;
    }
}
