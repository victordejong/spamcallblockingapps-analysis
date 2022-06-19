package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.C20439k;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementsKt;
import kotlinx.serialization.json.JsonInput;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonOutput;
import kotlinx.serialization.p572b.AbstractC20366b;
import kotlinx.serialization.p572b.C20386bp;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��F\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H��\u001a*\u0010\u0004\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\t\u001a\u00020\nH\u0002\u001a%\u0010\u000b\u001a\u0002H\f\"\u0004\b��\u0010\f*\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\f0\u000fH��¢\u0006\u0002\u0010\u0010\u001a<\u0010\u0011\u001a\u00020\u0001\"\u0004\b��\u0010\f*\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\f0\u00132\u0006\u0010\u0014\u001a\u0002H\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016H\u0080\b¢\u0006\u0002\u0010\u0017¨\u0006\u0018"}, m4298d2 = {"checkKind", "", "kind", "Lkotlinx/serialization/SerialKind;", "validateIfSealed", "serializer", "Lkotlinx/serialization/KSerializer;", "actualSerializer", "", "classDiscriminator", "", "decodeSerializableValuePolymorphic", "T", "Lkotlinx/serialization/json/JsonInput;", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "encodePolymorphically", "Lkotlinx/serialization/json/JsonOutput;", "Lkotlinx/serialization/SerializationStrategy;", "value", "ifPolymorphic", "Lkotlin/Function0;", "(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/PolymorphicKt.class */
public final class PolymorphicKt {
    public static final void checkKind(AbstractC20458p kind) {
        C18524p.m3841c(kind, "kind");
        if (!(kind instanceof AbstractC20467u.C20470c)) {
            if (kind instanceof AbstractC20424j) {
                throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonConfiguration.useArrayPolymorphism' instead".toString());
            }
            if (kind instanceof AbstractC20419h) {
                throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself".toString());
            }
            return;
        }
        throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonConfiguration.useArrayPolymorphism' instead".toString());
    }

    public static final <T> T decodeSerializableValuePolymorphic(JsonInput decodeSerializableValuePolymorphic, AbstractC20415d<T> deserializer) {
        C18524p.m3841c(decodeSerializableValuePolymorphic, "$this$decodeSerializableValuePolymorphic");
        C18524p.m3841c(deserializer, "deserializer");
        if (!(deserializer instanceof AbstractC20366b) || decodeSerializableValuePolymorphic.getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            return deserializer.deserialize(decodeSerializableValuePolymorphic);
        }
        JsonElement decodeJson = decodeSerializableValuePolymorphic.decodeJson();
        if (!(decodeJson instanceof JsonObject)) {
            throw new IllegalStateException(("Expected " + C18496ac.m3882b(JsonObject.class) + " but found " + C18496ac.m3882b(decodeJson.getClass())).toString());
        }
        JsonObject jsonObject = (JsonObject) decodeJson;
        String content = JsonElementsKt.getContent((JsonElement) C18247ai.m4253a(jsonObject, decodeSerializableValuePolymorphic.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime()));
        Map<String, JsonElement> content2 = jsonObject.getContent();
        if (content2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlinx.serialization.json.JsonElement>");
        }
        C18501ah.m3870e(content2).remove(decodeSerializableValuePolymorphic.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
        KSerializer<? extends T> mo681a = ((AbstractC20366b) deserializer).mo681a(decodeSerializableValuePolymorphic, content);
        if (mo681a == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        }
        return (T) TreeJsonInputKt.readJson(decodeSerializableValuePolymorphic.getJson(), jsonObject, mo681a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void encodePolymorphically(JsonOutput encodePolymorphically, AbstractC20460r<? super T> serializer, T t, Function0<C20128v> ifPolymorphic) {
        C18524p.m3841c(encodePolymorphically, "$this$encodePolymorphically");
        C18524p.m3841c(serializer, "serializer");
        C18524p.m3841c(ifPolymorphic, "ifPolymorphic");
        if (!(serializer instanceof AbstractC20366b) || encodePolymorphically.getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            serializer.serialize(encodePolymorphically, t);
            return;
        }
        AbstractC20366b abstractC20366b = (AbstractC20366b) serializer;
        JsonOutput jsonOutput = encodePolymorphically;
        if (t == 0) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
        }
        KSerializer<? extends T> mo682a = abstractC20366b.mo682a((Encoder) jsonOutput, (JsonOutput) t);
        if (mo682a == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        }
        validateIfSealed((KSerializer) serializer, mo682a, encodePolymorphically.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
        checkKind(mo682a.getDescriptor().mo662b());
        ifPolymorphic.invoke();
        mo682a.serialize(jsonOutput, t);
    }

    public static final void validateIfSealed(KSerializer<?> kSerializer, KSerializer<Object> kSerializer2, String str) {
        if ((kSerializer instanceof C20439k) && C20386bp.m712a(kSerializer2.getDescriptor()).contains(str)) {
            String mo665a = kSerializer.getDescriptor().mo665a();
            String mo665a2 = kSerializer2.getDescriptor().mo665a();
            throw new IllegalStateException(("Sealed class '" + mo665a2 + "' cannot be serialized as base class '" + mo665a + "' because it has property name that conflicts with JSON class discriminator '" + str + "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
        }
    }
}
