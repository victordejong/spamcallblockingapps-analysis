package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u00012\u00020\u0002J\b\u0010\u0007\u001a\u00020\bH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lkotlinx/serialization/json/JsonInput;", "Lkotlinx/serialization/Decoder;", "Lkotlinx/serialization/CompositeDecoder;", "json", "Lkotlinx/serialization/json/Json;", "getJson", "()Lkotlinx/serialization/json/Json;", "decodeJson", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonInput.class */
public interface JsonInput extends Decoder, AbstractC20327a {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonInput$DefaultImpls.class */
    public static final class DefaultImpls {
        public static int decodeCollectionSize(JsonInput jsonInput, SerialDescriptor descriptor) {
            C18524p.m3841c(descriptor, "descriptor");
            C18524p.m3841c(descriptor, "descriptor");
            return -1;
        }

        public static <T> T decodeNullableSerializableValue(JsonInput jsonInput, AbstractC20415d<T> deserializer) {
            C18524p.m3841c(deserializer, "deserializer");
            return (T) Decoder.C20324a.m751b(jsonInput, deserializer);
        }

        public static boolean decodeSequentially(JsonInput jsonInput) {
            return false;
        }

        public static <T> T decodeSerializableValue(JsonInput jsonInput, AbstractC20415d<T> deserializer) {
            C18524p.m3841c(deserializer, "deserializer");
            return (T) Decoder.C20324a.m753a(jsonInput, deserializer);
        }

        public static <T> T updateNullableSerializableValue(JsonInput jsonInput, AbstractC20415d<T> deserializer, T t) {
            C18524p.m3841c(deserializer, "deserializer");
            return (T) Decoder.C20324a.m750b(jsonInput, deserializer, t);
        }

        public static <T> T updateSerializableValue(JsonInput jsonInput, AbstractC20415d<T> deserializer, T t) {
            C18524p.m3841c(deserializer, "deserializer");
            return (T) Decoder.C20324a.m752a(jsonInput, deserializer, t);
        }
    }

    JsonElement decodeJson();

    Json getJson();
}
