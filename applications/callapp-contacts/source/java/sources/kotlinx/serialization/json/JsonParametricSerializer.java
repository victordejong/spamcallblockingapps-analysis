package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.C20418g;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.C20459q;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.p572b.C20388c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00028��2\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H$J\u001b\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��¢\u0006\u0002\u0010\u0017R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, m4298d2 = {"Lkotlinx/serialization/json/JsonParametricSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "baseClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "selectSerializer", "element", "Lkotlinx/serialization/json/JsonElement;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonParametricSerializer.class */
public abstract class JsonParametricSerializer<T> implements KSerializer<T> {
    private final AbstractC18551c<T> baseClass;
    private final SerialDescriptor descriptor;

    public JsonParametricSerializer(AbstractC18551c<T> baseClass) {
        SerialDescriptor m674a;
        C18524p.m3841c(baseClass, "baseClass");
        this.baseClass = baseClass;
        m674a = C20444m.m674a("JsonParametricSerializer<" + C20459q.m652b(baseClass) + '>', AbstractC20419h.C20420a.f66915a, C20444m.C20445a.f66946a);
        this.descriptor = m674a;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final T deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        JsonInput asJsonInput = JsonElementSerializerKt.asJsonInput(decoder);
        JsonElement decodeJson = asJsonInput.decodeJson();
        KSerializer<? extends T> selectSerializer = selectSerializer(decodeJson);
        if (selectSerializer != null) {
            return (T) asJsonInput.getJson().fromJson(selectSerializer, decodeJson);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public T patch(Decoder decoder, T old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (T) KSerializer.C20326a.m746a(this, decoder);
    }

    protected abstract KSerializer<? extends T> selectSerializer(JsonElement jsonElement);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.AbstractC20460r
    public final void serialize(Encoder encoder, T value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        KSerializer<? extends T> mo670a = encoder.getContext().mo670a((AbstractC18551c<AbstractC18551c<T>>) this.baseClass, (AbstractC18551c<T>) value);
        KSerializer<? extends T> kSerializer = mo670a;
        if (mo670a == null) {
            kSerializer = C20418g.m689b(C18496ac.m3882b(value.getClass()));
        }
        if (kSerializer == null) {
            C20388c.m709a((AbstractC18551c<?>) C18496ac.m3882b(value.getClass()), (AbstractC18551c<?>) this.baseClass);
            throw null;
        } else if (kSerializer == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        } else {
            kSerializer.serialize(encoder, value);
        }
    }
}
