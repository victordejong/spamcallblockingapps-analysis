package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.ac;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.j;
import kotlinx.serialization.m;
import kotlinx.serialization.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/json/JsonPrimitiveSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonPrimitive;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonPrimitiveSerializer.class */
public final class JsonPrimitiveSerializer implements KSerializer<JsonPrimitive> {
    public static final JsonPrimitiveSerializer INSTANCE = new JsonPrimitiveSerializer();
    private static final SerialDescriptor descriptor = m.a("kotlinx.serialization.json.JsonPrimitive", (p) j.i.f38990a);

    private JsonPrimitiveSerializer() {
    }

    @Override // kotlinx.serialization.d
    public final JsonPrimitive deserialize(Decoder decoder) {
        kotlin.jvm.internal.p.c(decoder, "decoder");
        JsonElement decodeJson = JsonElementSerializerKt.asJsonInput(decoder).decodeJson();
        if (decodeJson instanceof JsonPrimitive) {
            return (JsonPrimitive) decodeJson;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Unexpected JSON element, expected JsonPrimitive, had " + ac.b(decodeJson.getClass()), decodeJson.toString());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public final JsonPrimitive patch(Decoder decoder, JsonPrimitive old) {
        kotlin.jvm.internal.p.c(decoder, "decoder");
        kotlin.jvm.internal.p.c(old, "old");
        return (JsonPrimitive) KSerializer.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, JsonPrimitive value) {
        kotlin.jvm.internal.p.c(encoder, "encoder");
        kotlin.jvm.internal.p.c(value, "value");
        JsonElementSerializerKt.access$verify(encoder);
        if (value instanceof JsonNull) {
            encoder.encodeSerializableValue(JsonNullSerializer.INSTANCE, JsonNull.INSTANCE);
        } else {
            encoder.encodeSerializableValue(JsonLiteralSerializer.INSTANCE, (JsonLiteral) value);
        }
    }
}
