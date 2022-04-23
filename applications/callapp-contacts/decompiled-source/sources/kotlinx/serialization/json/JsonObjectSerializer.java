package kotlinx.serialization.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a.d;
import kotlinx.serialization.a.e;
import kotlinx.serialization.b.as;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/json/JsonObjectSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonObject;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObjectSerializer.class */
public final class JsonObjectSerializer implements KSerializer<JsonObject> {
    public static final JsonObjectSerializer INSTANCE = new JsonObjectSerializer();
    private static final SerialDescriptor descriptor = new as("kotlinx.serialization.json.JsonObject", e.a(ag.f36785a).getDescriptor(), JsonElementSerializer.INSTANCE.getDescriptor());

    private JsonObjectSerializer() {
    }

    @Override // kotlinx.serialization.d
    public final JsonObject deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        JsonElementSerializerKt.access$verify(decoder);
        return new JsonObject((Map) d.a(e.a(ag.f36785a), JsonElementSerializer.INSTANCE).deserialize(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public final JsonObject patch(Decoder decoder, JsonObject old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (JsonObject) KSerializer.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, JsonObject value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        JsonElementSerializerKt.access$verify(encoder);
        d.a(e.a(ag.f36785a), JsonElementSerializer.INSTANCE).serialize(encoder, value.getContent());
    }
}
