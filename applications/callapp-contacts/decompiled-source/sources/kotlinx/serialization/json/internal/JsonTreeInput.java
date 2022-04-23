package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.b.bp;
import kotlinx.serialization.h;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonObject;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\b\u0012\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeInput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonObject;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V", "position", "", "getValue", "()Lkotlinx/serialization/json/JsonObject;", "currentElement", "Lkotlinx/serialization/json/JsonElement;", "tag", "", "decodeElementIndex", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "endStructure", "", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeInput.class */
public class JsonTreeInput extends AbstractJsonTreeInput {
    private int position;
    private final JsonObject value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeInput(Json json, JsonObject value) {
        super(json, value, null);
        p.c(json, "json");
        p.c(value, "value");
        this.value = value;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    protected JsonElement currentElement(String tag) {
        p.c(tag, "tag");
        return (JsonElement) ai.a(getValue(), tag);
    }

    @Override // kotlinx.serialization.a
    public int decodeElementIndex(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        while (this.position < descriptor.d()) {
            int i = this.position;
            this.position = i + 1;
            if (getValue().contains(getTag(descriptor, i))) {
                return this.position - 1;
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput, kotlinx.serialization.b.bl, kotlinx.serialization.a
    public void endStructure(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        if (!(this.configuration.getIgnoreUnknownKeys$kotlinx_serialization_runtime() || (descriptor.b() instanceof h))) {
            Set<String> a2 = bp.a(descriptor);
            for (String str : getValue().keySet()) {
                if (!a2.contains(str)) {
                    throw JsonExceptionsKt.UnknownKeyException(str, getValue().toString());
                }
            }
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    public JsonObject getValue() {
        return this.value;
    }
}
