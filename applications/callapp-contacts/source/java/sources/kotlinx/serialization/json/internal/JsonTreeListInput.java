package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\bH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonTreeListInput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonArray;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V", "currentIndex", "", "size", "getValue", "()Lkotlinx/serialization/json/JsonArray;", "currentElement", "Lkotlinx/serialization/json/JsonElement;", "tag", "", "decodeElementIndex", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "elementName", "desc", "index", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeListInput.class */
public final class JsonTreeListInput extends AbstractJsonTreeInput {
    private final JsonArray value;
    private final int size = getValue().getContent().size();
    private int currentIndex = -1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeListInput(Json json, JsonArray value) {
        super(json, value, null);
        C18524p.m3841c(json, "json");
        C18524p.m3841c(value, "value");
        this.value = value;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    protected final JsonElement currentElement(String tag) {
        C18524p.m3841c(tag, "tag");
        return getValue().get(Integer.parseInt(tag));
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final int decodeElementIndex(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        int i = this.currentIndex;
        if (i < this.size - 1) {
            int i2 = i + 1;
            this.currentIndex = i2;
            return i2;
        }
        return -1;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20357at
    public final String elementName(SerialDescriptor desc, int i) {
        C18524p.m3841c(desc, "desc");
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeInput
    public final JsonArray getValue() {
        return this.value;
    }
}
