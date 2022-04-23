package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003¢\u0006\u0002\u0010\u0005J\u0017\u0010\n\u001a\u0004\u0018\u00018��2\u0006\u0010\u000b\u001a\u00020\fH\u0016¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J!\u0010\u0013\u001a\u0004\u0018\u00018��2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00018��H\u0016¢\u0006\u0002\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00018��H\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/internal/NullableSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "serializer", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "equals", "", "other", "hashCode", "", "patch", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/av.class */
public final class av<T> implements KSerializer<T> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38904a;

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<T> f38905b;

    public av(KSerializer<T> serializer) {
        p.c(serializer, "serializer");
        this.f38905b = serializer;
        this.f38904a = new bg(serializer.getDescriptor());
    }

    @Override // kotlinx.serialization.d
    public final T deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        return decoder.decodeNotNullMark() ? (T) decoder.decodeSerializableValue(this.f38905b) : (T) decoder.decodeNull();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && !(p.a(ac.b(getClass()), ac.b(obj.getClass())) ^ true) && !(p.a(this.f38905b, ((av) obj).f38905b) ^ true);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38904a;
    }

    public final int hashCode() {
        return this.f38905b.hashCode();
    }

    @Override // kotlinx.serialization.d
    public final T patch(Decoder decoder, T t) {
        p.c(decoder, "decoder");
        if (t == null) {
            return deserialize(decoder);
        }
        if (decoder.decodeNotNullMark()) {
            return (T) decoder.updateSerializableValue(this.f38905b, t);
        }
        decoder.decodeNull();
        return t;
    }

    @Override // kotlinx.serialization.r
    public final void serialize(Encoder encoder, T t) {
        p.c(encoder, "encoder");
        if (t != null) {
            encoder.encodeNotNullMark();
            encoder.encodeSerializableValue(this.f38905b, t);
            return;
        }
        encoder.encodeNull();
    }
}
