package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.ai;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.ah;
import kotlin.v;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.b.b;
import kotlinx.serialization.b.bp;
import kotlinx.serialization.d;
import kotlinx.serialization.h;
import kotlinx.serialization.j;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementsKt;
import kotlinx.serialization.json.JsonInput;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonOutput;
import kotlinx.serialization.k;
import kotlinx.serialization.p;
import kotlinx.serialization.r;
import kotlinx.serialization.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H��\u001a*\u0010\u0004\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\t\u001a\u00020\nH\u0002\u001a%\u0010\u000b\u001a\u0002H\f\"\u0004\b��\u0010\f*\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\f0\u000fH��¢\u0006\u0002\u0010\u0010\u001a<\u0010\u0011\u001a\u00020\u0001\"\u0004\b��\u0010\f*\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\f0\u00132\u0006\u0010\u0014\u001a\u0002H\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016H\u0080\b¢\u0006\u0002\u0010\u0017¨\u0006\u0018"}, d2 = {"checkKind", "", "kind", "Lkotlinx/serialization/SerialKind;", "validateIfSealed", "serializer", "Lkotlinx/serialization/KSerializer;", "actualSerializer", "", "classDiscriminator", "", "decodeSerializableValuePolymorphic", "T", "Lkotlinx/serialization/json/JsonInput;", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "encodePolymorphically", "Lkotlinx/serialization/json/JsonOutput;", "Lkotlinx/serialization/SerializationStrategy;", "value", "ifPolymorphic", "Lkotlin/Function0;", "(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/PolymorphicKt.class */
public final class PolymorphicKt {
    public static final void checkKind(p kind) {
        kotlin.jvm.internal.p.c(kind, "kind");
        if (kind instanceof u.c) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonConfiguration.useArrayPolymorphism' instead".toString());
        } else if (kind instanceof j) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonConfiguration.useArrayPolymorphism' instead".toString());
        } else if (kind instanceof h) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself".toString());
        }
    }

    public static final <T> T decodeSerializableValuePolymorphic(JsonInput decodeSerializableValuePolymorphic, d<T> deserializer) {
        kotlin.jvm.internal.p.c(decodeSerializableValuePolymorphic, "$this$decodeSerializableValuePolymorphic");
        kotlin.jvm.internal.p.c(deserializer, "deserializer");
        if (!(deserializer instanceof b) || decodeSerializableValuePolymorphic.getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            return deserializer.deserialize(decodeSerializableValuePolymorphic);
        }
        JsonElement decodeJson = decodeSerializableValuePolymorphic.decodeJson();
        if (decodeJson instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) decodeJson;
            String content = JsonElementsKt.getContent((JsonElement) ai.a(jsonObject, decodeSerializableValuePolymorphic.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime()));
            Map<String, JsonElement> content2 = jsonObject.getContent();
            if (content2 != null) {
                ah.e(content2).remove(decodeSerializableValuePolymorphic.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
                KSerializer<? extends T> a2 = ((b) deserializer).a(decodeSerializableValuePolymorphic, content);
                if (a2 != null) {
                    return (T) TreeJsonInputKt.readJson(decodeSerializableValuePolymorphic.getJson(), jsonObject, a2);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlinx.serialization.json.JsonElement>");
        }
        throw new IllegalStateException(("Expected " + ac.b(JsonObject.class) + " but found " + ac.b(decodeJson.getClass())).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void encodePolymorphically(JsonOutput encodePolymorphically, r<? super T> serializer, T t, Function0<v> ifPolymorphic) {
        kotlin.jvm.internal.p.c(encodePolymorphically, "$this$encodePolymorphically");
        kotlin.jvm.internal.p.c(serializer, "serializer");
        kotlin.jvm.internal.p.c(ifPolymorphic, "ifPolymorphic");
        if (!(serializer instanceof b) || encodePolymorphically.getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            serializer.serialize(encodePolymorphically, t);
            return;
        }
        b bVar = (b) serializer;
        JsonOutput jsonOutput = encodePolymorphically;
        if (t != 0) {
            KSerializer<? extends T> a2 = bVar.a((Encoder) jsonOutput, (JsonOutput) t);
            if (a2 != null) {
                validateIfSealed((KSerializer) serializer, a2, encodePolymorphically.getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
                checkKind(a2.getDescriptor().b());
                ifPolymorphic.invoke();
                a2.serialize(jsonOutput, t);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validateIfSealed(KSerializer<?> kSerializer, KSerializer<Object> kSerializer2, String str) {
        if ((kSerializer instanceof k) && bp.a(kSerializer2.getDescriptor()).contains(str)) {
            String a2 = kSerializer.getDescriptor().a();
            String a3 = kSerializer2.getDescriptor().a();
            throw new IllegalStateException(("Sealed class '" + a3 + "' cannot be serialized as base class '" + a2 + "' because it has property name that conflicts with JSON class discriminator '" + str + "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
        }
    }
}
