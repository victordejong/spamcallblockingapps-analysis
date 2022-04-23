package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.m;
import kotlinx.serialization.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0002\u0010\u0007J\u0015\u0010\r\u001a\u00028��2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0016R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\u0006\u001a\u00028��X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006\u0017"}, d2 = {"Lkotlinx/serialization/internal/ObjectSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "serialName", "", "objectInstance", "(Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ax.class */
public final class ax<T> implements KSerializer<T> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38906a;

    /* renamed from: b  reason: collision with root package name */
    private final T f38907b;

    public ax(String serialName, T objectInstance) {
        SerialDescriptor a2;
        p.c(serialName, "serialName");
        p.c(objectInstance, "objectInstance");
        this.f38907b = objectInstance;
        a2 = m.a(serialName, t.d.f39022a, m.a.f39003a);
        this.f38906a = a2;
    }

    @Override // kotlinx.serialization.d
    public final T deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        decoder.beginStructure(getDescriptor(), new KSerializer[0]).endStructure(getDescriptor());
        return this.f38907b;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38906a;
    }

    @Override // kotlinx.serialization.d
    public final T patch(Decoder decoder, T old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (T) KSerializer.a.a(this, decoder);
    }

    @Override // kotlinx.serialization.r
    public final void serialize(Encoder encoder, T value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        encoder.beginStructure(getDescriptor(), new KSerializer[0]).endStructure(getDescriptor());
    }
}
