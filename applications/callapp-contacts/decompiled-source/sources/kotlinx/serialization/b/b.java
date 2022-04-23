package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b'\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\b��¢\u0006\u0002\u0010\u0004J\u0015\u0010\t\u001a\u00028��2\u0006\u0010\n\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00028��2\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J \u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J%\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028��¢\u0006\u0002\u0010\u001aR\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "()V", "baseClass", "Lkotlin/reflect/KClass;", "getBaseClass", "()Lkotlin/reflect/KClass;", "decodeSequentially", "compositeDecoder", "Lkotlinx/serialization/CompositeDecoder;", "(Lkotlinx/serialization/CompositeDecoder;)Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "findPolymorphicSerializer", "klassName", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serialize", "", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/b.class */
public abstract class b<T> implements KSerializer<T> {
    public abstract c<T> a();

    public KSerializer<? extends T> a(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        KSerializer<? extends T> a2 = encoder.getContext().a((c<c<T>>) a(), (c<T>) value);
        if (a2 != null) {
            return a2;
        }
        c.a((c<?>) ac.b(value.getClass()), (c<?>) a());
        throw null;
    }

    public KSerializer<? extends T> a(a decoder, String klassName) {
        p.c(decoder, "decoder");
        p.c(klassName, "klassName");
        KSerializer<? extends T> a2 = decoder.getContext().a((c) a(), klassName);
        if (a2 != null) {
            return a2;
        }
        c.a(klassName, (c<?>) a());
        throw null;
    }

    @Override // kotlinx.serialization.d
    public final T deserialize(Decoder decoder) {
        T t;
        p.c(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        a beginStructure = decoder.beginStructure(descriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            t = (T) beginStructure.decodeSerializableElement(getDescriptor(), 1, a(beginStructure, beginStructure.decodeStringElement(getDescriptor(), 0)));
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
                    } else if (str != null) {
                        t = (T) beginStructure.decodeSerializableElement(getDescriptor(), decodeElementIndex, a(beginStructure, str));
                    } else {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token".toString());
                    }
                } else if (t == null) {
                    throw new IllegalArgumentException("Polymorphic value has not been read for class ".concat(String.valueOf(str)).toString());
                }
            }
        }
        beginStructure.endStructure(descriptor);
        return t;
    }

    @Override // kotlinx.serialization.d
    public T patch(Decoder decoder, T old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (T) KSerializer.a.a(this, decoder);
    }

    @Override // kotlinx.serialization.r
    public final void serialize(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        KSerializer<? extends T> a2 = a(encoder, (Encoder) value);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor, new KSerializer[0]);
        beginStructure.encodeStringElement(getDescriptor(), 0, a2.getDescriptor().a());
        SerialDescriptor descriptor2 = getDescriptor();
        if (a2 != null) {
            beginStructure.encodeSerializableElement(descriptor2, 1, a2, value);
            beginStructure.endStructure(descriptor);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
    }
}
