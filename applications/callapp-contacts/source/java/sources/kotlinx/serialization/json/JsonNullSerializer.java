package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, m4298d2 = {"Lkotlinx/serialization/json/JsonNullSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonNull;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonNullSerializer.class */
public final class JsonNullSerializer implements KSerializer<JsonNull> {
    public static final JsonNullSerializer INSTANCE = new JsonNullSerializer();
    private static final SerialDescriptor descriptor;

    static {
        SerialDescriptor m674a;
        m674a = C20444m.m674a("kotlinx.serialization.json.JsonNull", AbstractC20467u.C20470c.f66975b, C20444m.C20445a.f66946a);
        descriptor = m674a;
    }

    private JsonNullSerializer() {
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final JsonNull deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        JsonElementSerializerKt.verify(decoder);
        decoder.decodeNull();
        return JsonNull.INSTANCE;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public final JsonNull patch(Decoder decoder, JsonNull old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (JsonNull) KSerializer.C20326a.m746a(this, decoder);
    }

    public final void serialize(Encoder encoder, JsonNull value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        JsonElementSerializerKt.verify(encoder);
        encoder.encodeNull();
    }
}
