package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/json/JsonOutput;", "Lkotlinx/serialization/Encoder;", "Lkotlinx/serialization/CompositeEncoder;", "json", "Lkotlinx/serialization/json/Json;", "getJson", "()Lkotlinx/serialization/json/Json;", "encodeJson", "", "element", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonOutput.class */
public interface JsonOutput extends CompositeEncoder, Encoder {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonOutput$DefaultImpls.class */
    public static final class DefaultImpls {
        public static CompositeEncoder beginCollection(JsonOutput jsonOutput, SerialDescriptor descriptor, int i, KSerializer<?>... typeSerializers) {
            p.c(descriptor, "descriptor");
            p.c(typeSerializers, "typeSerializers");
            return Encoder.a.a(jsonOutput, descriptor, typeSerializers);
        }

        public static void encodeNonSerializableElement(JsonOutput jsonOutput, SerialDescriptor descriptor, int i, Object value) {
            p.c(descriptor, "descriptor");
            p.c(value, "value");
            CompositeEncoder.a.a(descriptor, value);
        }

        public static void encodeNotNullMark(JsonOutput jsonOutput) {
        }

        public static <T> void encodeNullableSerializableValue(JsonOutput jsonOutput, r<? super T> serializer, T t) {
            p.c(serializer, "serializer");
            Encoder.a.b(jsonOutput, serializer, t);
        }

        public static <T> void encodeSerializableValue(JsonOutput jsonOutput, r<? super T> serializer, T t) {
            p.c(serializer, "serializer");
            Encoder.a.a(jsonOutput, serializer, t);
        }

        public static boolean shouldEncodeElementDefault(JsonOutput jsonOutput, SerialDescriptor descriptor, int i) {
            p.c(descriptor, "descriptor");
            p.c(descriptor, "descriptor");
            return true;
        }
    }

    void encodeJson(JsonElement jsonElement);

    Json getJson();
}
