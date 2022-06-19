package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0015\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m4298d2 = {"Lkotlinx/serialization/internal/ByteSerializer;", "Lkotlinx/serialization/KSerializer;", "", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Byte;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.l */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/l.class */
public final class C20397l implements KSerializer<Byte> {

    /* renamed from: a */
    public static final C20397l f66892a = new C20397l();

    /* renamed from: b */
    private static final SerialDescriptor f66893b = new C20369bc("kotlin.Byte", AbstractC20424j.C20426b.f66921a);

    private C20397l() {
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final /* synthetic */ Object deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        return Byte.valueOf(decoder.decodeByte());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return f66893b;
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final /* synthetic */ Object patch(Decoder decoder, Object obj) {
        ((Number) obj).byteValue();
        C18524p.m3841c(decoder, "decoder");
        return (Byte) KSerializer.C20326a.m746a(this, decoder);
    }

    @Override // kotlinx.serialization.AbstractC20460r
    public final /* synthetic */ void serialize(Encoder encoder, Object obj) {
        byte byteValue = ((Number) obj).byteValue();
        C18524p.m3841c(encoder, "encoder");
        encoder.encodeByte(byteValue);
    }
}
