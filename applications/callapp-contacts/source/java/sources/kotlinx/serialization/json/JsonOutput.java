package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/serialization/json/JsonOutput;", "Lkotlinx/serialization/Encoder;", "Lkotlinx/serialization/CompositeEncoder;", "json", "Lkotlinx/serialization/json/Json;", "getJson", "()Lkotlinx/serialization/json/Json;", "encodeJson", "", "element", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonOutput.class */
public interface JsonOutput extends CompositeEncoder, Encoder {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonOutput$DefaultImpls.class */
    public static final class DefaultImpls {
        public static CompositeEncoder beginCollection(JsonOutput jsonOutput, SerialDescriptor descriptor, int i, KSerializer<?>... typeSerializers) {
            C18524p.m3841c(descriptor, "descriptor");
            C18524p.m3841c(typeSerializers, "typeSerializers");
            return Encoder.C20325a.m749a(jsonOutput, descriptor, typeSerializers);
        }

        public static void encodeNonSerializableElement(JsonOutput jsonOutput, SerialDescriptor descriptor, int i, Object value) {
            C18524p.m3841c(descriptor, "descriptor");
            C18524p.m3841c(value, "value");
            CompositeEncoder.C20323a.m754a(descriptor, value);
        }

        public static void encodeNotNullMark(JsonOutput jsonOutput) {
        }

        public static <T> void encodeNullableSerializableValue(JsonOutput jsonOutput, AbstractC20460r<? super T> serializer, T t) {
            C18524p.m3841c(serializer, "serializer");
            Encoder.C20325a.m747b(jsonOutput, serializer, t);
        }

        public static <T> void encodeSerializableValue(JsonOutput jsonOutput, AbstractC20460r<? super T> serializer, T t) {
            C18524p.m3841c(serializer, "serializer");
            Encoder.C20325a.m748a(jsonOutput, serializer, t);
        }

        public static boolean shouldEncodeElementDefault(JsonOutput jsonOutput, SerialDescriptor descriptor, int i) {
            C18524p.m3841c(descriptor, "descriptor");
            C18524p.m3841c(descriptor, "descriptor");
            return true;
        }
    }

    void encodeJson(JsonElement jsonElement);

    Json getJson();
}
