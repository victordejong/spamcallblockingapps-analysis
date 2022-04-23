package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.g;
import kotlinx.serialization.h;
import kotlinx.serialization.m;
import kotlinx.serialization.q;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00028��2\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H$J\u001b\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��¢\u0006\u0002\u0010\u0017R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, d2 = {"Lkotlinx/serialization/json/JsonParametricSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "baseClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "selectSerializer", "element", "Lkotlinx/serialization/json/JsonElement;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonParametricSerializer.class */
public abstract class JsonParametricSerializer<T> implements KSerializer<T> {
    private final c<T> baseClass;
    private final SerialDescriptor descriptor;

    public JsonParametricSerializer(c<T> baseClass) {
        SerialDescriptor a2;
        p.c(baseClass, "baseClass");
        this.baseClass = baseClass;
        a2 = m.a("JsonParametricSerializer<" + q.b(baseClass) + '>', h.a.f38977a, m.a.f39003a);
        this.descriptor = a2;
    }

    @Override // kotlinx.serialization.d
    public final T deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        JsonInput asJsonInput = JsonElementSerializerKt.asJsonInput(decoder);
        JsonElement decodeJson = asJsonInput.decodeJson();
        KSerializer<? extends T> selectSerializer = selectSerializer(decodeJson);
        if (selectSerializer != null) {
            return (T) asJsonInput.getJson().fromJson(selectSerializer, decodeJson);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
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

    protected abstract KSerializer<? extends T> selectSerializer(JsonElement jsonElement);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.r
    public final void serialize(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        KSerializer<? extends T> a2 = encoder.getContext().a((c<c<T>>) this.baseClass, (c<T>) value);
        KSerializer<? extends T> kSerializer = a2;
        if (a2 == null) {
            kSerializer = g.b(ac.b(value.getClass()));
        }
        if (kSerializer == null) {
            kotlinx.serialization.b.c.a((c<?>) ac.b(value.getClass()), (c<?>) this.baseClass);
            throw null;
        } else if (kSerializer != null) {
            kSerializer.serialize(encoder, value);
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        }
    }
}
