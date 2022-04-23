package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a;
import kotlinx.serialization.d;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u00012\u00020\u0002J\b\u0010\u0007\u001a\u00020\bH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/serialization/json/JsonInput;", "Lkotlinx/serialization/Decoder;", "Lkotlinx/serialization/CompositeDecoder;", "json", "Lkotlinx/serialization/json/Json;", "getJson", "()Lkotlinx/serialization/json/Json;", "decodeJson", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonInput.class */
public interface JsonInput extends Decoder, a {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonInput$DefaultImpls.class */
    public static final class DefaultImpls {
        public static int decodeCollectionSize(JsonInput jsonInput, SerialDescriptor descriptor) {
            p.c(descriptor, "descriptor");
            p.c(descriptor, "descriptor");
            return -1;
        }

        public static <T> T decodeNullableSerializableValue(JsonInput jsonInput, d<T> deserializer) {
            p.c(deserializer, "deserializer");
            return (T) Decoder.a.b(jsonInput, deserializer);
        }

        public static boolean decodeSequentially(JsonInput jsonInput) {
            return false;
        }

        public static <T> T decodeSerializableValue(JsonInput jsonInput, d<T> deserializer) {
            p.c(deserializer, "deserializer");
            return (T) Decoder.a.a(jsonInput, deserializer);
        }

        public static <T> T updateNullableSerializableValue(JsonInput jsonInput, d<T> deserializer, T t) {
            p.c(deserializer, "deserializer");
            return (T) Decoder.a.b(jsonInput, deserializer, t);
        }

        public static <T> T updateSerializableValue(JsonInput jsonInput, d<T> deserializer, T t) {
            p.c(deserializer, "deserializer");
            return (T) Decoder.a.a(jsonInput, deserializer, t);
        }
    }

    JsonElement decodeJson();

    Json getJson();
}
