package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b'\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\b��¢\u0006\u0002\u0010\u0004J\u0015\u0010\t\u001a\u00028��2\u0006\u0010\n\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00028��2\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J \u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J%\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��¢\u0006\u0002\u0010\u001aR\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, m4298d2 = {"Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "()V", "baseClass", "Lkotlin/reflect/KClass;", "getBaseClass", "()Lkotlin/reflect/KClass;", "decodeSequentially", "compositeDecoder", "Lkotlinx/serialization/CompositeDecoder;", "(Lkotlinx/serialization/CompositeDecoder;)Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "findPolymorphicSerializer", "klassName", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serialize", "", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.b */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/b.class */
public abstract class AbstractC20366b<T> implements KSerializer<T> {
    /* renamed from: a */
    public abstract AbstractC18551c<T> mo683a();

    /* renamed from: a */
    public KSerializer<? extends T> mo682a(Encoder encoder, T value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        KSerializer<? extends T> mo670a = encoder.getContext().mo670a((AbstractC18551c<AbstractC18551c<T>>) mo683a(), (AbstractC18551c<T>) value);
        if (mo670a != null) {
            return mo670a;
        }
        C20388c.m709a((AbstractC18551c<?>) C18496ac.m3882b(value.getClass()), (AbstractC18551c<?>) mo683a());
        throw null;
    }

    /* renamed from: a */
    public KSerializer<? extends T> mo681a(AbstractC20327a decoder, String klassName) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(klassName, "klassName");
        KSerializer<? extends T> mo669a = decoder.getContext().mo669a((AbstractC18551c) mo683a(), klassName);
        if (mo669a != null) {
            return mo669a;
        }
        C20388c.m710a(klassName, (AbstractC18551c<?>) mo683a());
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.AbstractC20415d
    public final T deserialize(Decoder decoder) {
        T t;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        AbstractC20327a beginStructure = decoder.beginStructure(descriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            t = beginStructure.decodeSerializableElement(getDescriptor(), 1, mo681a(beginStructure, beginStructure.decodeStringElement(getDescriptor(), 0)));
            beginStructure.endStructure(getDescriptor());
        } else {
            t = null;
            String str = null;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex == 0) {
                        str = beginStructure.decodeStringElement(getDescriptor(), decodeElementIndex);
                    } else if (decodeElementIndex != 1) {
                        StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                        String str2 = str;
                        if (str == null) {
                            str2 = "unknown class";
                        }
                        sb.append((Object) str2);
                        sb.append("\n Expected 0, 1 or READ_DONE(-1), but found ");
                        sb.append(decodeElementIndex);
                        throw new SerializationException(sb.toString(), null, 2, null);
                    } else if (str == null) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token".toString());
                    } else {
                        t = beginStructure.decodeSerializableElement(getDescriptor(), decodeElementIndex, mo681a(beginStructure, str));
                    }
                } else if (t == null) {
                    throw new IllegalArgumentException("Polymorphic value has not been read for class ".concat(String.valueOf(str)).toString());
                }
            }
        }
        beginStructure.endStructure(descriptor);
        return t;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public T patch(Decoder decoder, T old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (T) KSerializer.C20326a.m746a(this, decoder);
    }

    @Override // kotlinx.serialization.AbstractC20460r
    public final void serialize(Encoder encoder, T value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        KSerializer<? extends T> mo682a = mo682a(encoder, (Encoder) value);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor, new KSerializer[0]);
        beginStructure.encodeStringElement(getDescriptor(), 0, mo682a.getDescriptor().mo665a());
        SerialDescriptor descriptor2 = getDescriptor();
        if (mo682a != null) {
            beginStructure.encodeSerializableElement(descriptor2, 1, mo682a, value);
            beginStructure.endStructure(descriptor);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
    }
}
