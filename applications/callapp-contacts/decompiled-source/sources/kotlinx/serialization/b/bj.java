package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/internal/ShortSerializer;", "Lkotlinx/serialization/KSerializer;", "", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Short;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bj.class */
public final class bj implements KSerializer<Short> {

    /* renamed from: a  reason: collision with root package name */
    public static final bj f38926a = new bj();

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f38927b = new bc("kotlin.Short", j.h.f38989a);

    private bj() {
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        return Short.valueOf(decoder.decodeShort());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return f38927b;
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object patch(Decoder decoder, Object obj) {
        ((Number) obj).shortValue();
        p.c(decoder, "decoder");
        return (Short) KSerializer.a.a(this, decoder);
    }

    @Override // kotlinx.serialization.r
    public final /* synthetic */ void serialize(Encoder encoder, Object obj) {
        short shortValue = ((Number) obj).shortValue();
        p.c(encoder, "encoder");
        encoder.encodeShort(shortValue);
    }
}
