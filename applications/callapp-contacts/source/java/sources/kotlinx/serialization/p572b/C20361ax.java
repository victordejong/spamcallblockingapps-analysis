package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0002\u0010\u0007J\u0015\u0010\r\u001a\u00028��2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0016R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\u0006\u001a\u00028��X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006\u0017"}, m4298d2 = {"Lkotlinx/serialization/internal/ObjectSerializer;", "T", "", "Lkotlinx/serialization/KSerializer;", "serialName", "", "objectInstance", "(Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ax */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ax.class */
public final class C20361ax<T> implements KSerializer<T> {

    /* renamed from: a */
    private final SerialDescriptor f66840a;

    /* renamed from: b */
    private final T f66841b;

    public C20361ax(String serialName, T objectInstance) {
        SerialDescriptor m674a;
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(objectInstance, "objectInstance");
        this.f66841b = objectInstance;
        m674a = C20444m.m674a(serialName, AbstractC20462t.C20466d.f66971a, C20444m.C20445a.f66946a);
        this.f66840a = m674a;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final T deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        decoder.beginStructure(getDescriptor(), new KSerializer[0]).endStructure(getDescriptor());
        return this.f66841b;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66840a;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final T patch(Decoder decoder, T old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (T) KSerializer.C20326a.m746a(this, decoder);
    }

    @Override // kotlinx.serialization.AbstractC20460r
    public final void serialize(Encoder encoder, T value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        encoder.beginStructure(getDescriptor(), new KSerializer[0]).endStructure(getDescriptor());
    }
}
