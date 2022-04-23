package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/internal/IntSerializer;", "Lkotlinx/serialization/KSerializer;", "", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Integer;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ad.class */
public final class ad implements KSerializer<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final ad f38876a = new ad();

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f38877b = new bc("kotlin.Int", j.f.f38987a);

    private ad() {
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        return Integer.valueOf(decoder.decodeInt());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return f38877b;
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object patch(Decoder decoder, Object obj) {
        ((Number) obj).intValue();
        p.c(decoder, "decoder");
        return (Integer) KSerializer.a.a(this, decoder);
    }

    @Override // kotlinx.serialization.r
    public final /* synthetic */ void serialize(Encoder encoder, Object obj) {
        int intValue = ((Number) obj).intValue();
        p.c(encoder, "encoder");
        encoder.encodeInt(intValue);
    }
}
