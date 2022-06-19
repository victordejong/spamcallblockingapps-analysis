package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, m4298d2 = {"Lkotlinx/serialization/json/JsonLiteralSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonLiteral;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonLiteralSerializer.class */
public final class JsonLiteralSerializer implements KSerializer<JsonLiteral> {
    public static final JsonLiteralSerializer INSTANCE = new JsonLiteralSerializer();
    private static final SerialDescriptor descriptor = C20444m.m676a("kotlinx.serialization.json.JsonLiteral", (AbstractC20424j) AbstractC20424j.C20433i.f66928a);

    private JsonLiteralSerializer() {
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final JsonLiteral deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        JsonElement decodeJson = JsonElementSerializerKt.asJsonInput(decoder).decodeJson();
        if (decodeJson instanceof JsonLiteral) {
            return (JsonLiteral) decodeJson;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Unexpected JSON element, expected JsonLiteral, had " + C18496ac.m3882b(decodeJson.getClass()), decodeJson.toString());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public final JsonLiteral patch(Decoder decoder, JsonLiteral old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (JsonLiteral) KSerializer.C20326a.m746a(this, decoder);
    }

    public final void serialize(Encoder encoder, JsonLiteral value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        JsonElementSerializerKt.verify(encoder);
        if (value.isString()) {
            encoder.encodeString(value.getContent());
            return;
        }
        Long longOrNull = value.getLongOrNull();
        if (longOrNull != null) {
            encoder.encodeLong(longOrNull.longValue());
            return;
        }
        Double doubleOrNull = value.getDoubleOrNull();
        if (doubleOrNull != null) {
            encoder.encodeDouble(doubleOrNull.doubleValue());
            return;
        }
        Boolean booleanOrNull = value.getBooleanOrNull();
        if (booleanOrNull != null) {
            encoder.encodeBoolean(booleanOrNull.booleanValue());
        } else {
            encoder.encodeString(value.getContent());
        }
    }
}
