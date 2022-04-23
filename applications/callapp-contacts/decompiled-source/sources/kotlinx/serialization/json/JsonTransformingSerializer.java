package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.internal.TreeJsonOutputKt;
import kotlinx.serialization.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\f\u001a\u00028��2\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\u001b\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028��¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lkotlinx/serialization/json/JsonTransformingSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "tSerializer", "transformationName", "", "(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "readTransform", "Lkotlinx/serialization/json/JsonElement;", "element", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "writeTransform", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonTransformingSerializer.class */
public abstract class JsonTransformingSerializer<T> implements KSerializer<T> {
    private final SerialDescriptor descriptor;
    private final KSerializer<T> tSerializer;

    public JsonTransformingSerializer(KSerializer<T> tSerializer, String transformationName) {
        SerialDescriptor a2;
        p.c(tSerializer, "tSerializer");
        p.c(transformationName, "transformationName");
        this.tSerializer = tSerializer;
        a2 = m.a("JsonTransformingSerializer<" + tSerializer.getDescriptor().a() + ">(" + transformationName + ')', tSerializer.getDescriptor().b(), m.a.f39003a);
        this.descriptor = a2;
    }

    @Override // kotlinx.serialization.d
    public final T deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        JsonInput asJsonInput = JsonElementSerializerKt.asJsonInput(decoder);
        return (T) asJsonInput.getJson().fromJson(this.tSerializer, readTransform(asJsonInput.decodeJson()));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.d
    public T patch(Decoder decoder, T old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (T) KSerializer.a.a(this, decoder);
    }

    protected JsonElement readTransform(JsonElement element) {
        p.c(element, "element");
        return element;
    }

    @Override // kotlinx.serialization.r
    public final void serialize(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        JsonOutput asJsonOutput = JsonElementSerializerKt.asJsonOutput(encoder);
        asJsonOutput.encodeJson(writeTransform(TreeJsonOutputKt.writeJson(asJsonOutput.getJson(), value, this.tSerializer)));
    }

    protected JsonElement writeTransform(JsonElement element) {
        p.c(element, "element");
        return element;
    }
}
