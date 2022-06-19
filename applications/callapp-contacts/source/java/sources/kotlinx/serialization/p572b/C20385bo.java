package kotlinx.serialization.p572b;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0011\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0096\u0001J\u001e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0002\u0010\u0012R\u0012\u0010\u0004\u001a\u00020\u0005X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m4298d2 = {"Lkotlinx/serialization/internal/UnitSerializer;", "Lkotlinx/serialization/KSerializer;", "", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "patch", "old", "(Lkotlinx/serialization/Decoder;Lkotlin/Unit;)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Lkotlin/Unit;)V", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bo */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bo.class */
public final class C20385bo implements KSerializer<C20128v> {

    /* renamed from: a */
    public static final C20385bo f66879a = new C20385bo();

    /* renamed from: b */
    private final /* synthetic */ C20361ax f66880b = new C20361ax("kotlin.Unit", C20128v.f66529a);

    private C20385bo() {
    }

    /* renamed from: a */
    public final void m715a(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        this.f66880b.deserialize(decoder);
    }

    /* renamed from: a */
    public final void serialize(Encoder encoder, C20128v value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        this.f66880b.serialize(encoder, value);
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final /* synthetic */ Object deserialize(Decoder decoder) {
        m715a(decoder);
        return C20128v.f66529a;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66880b.getDescriptor();
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final /* synthetic */ Object patch(Decoder decoder, Object obj) {
        C20128v old = (C20128v) obj;
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        this.f66880b.patch(decoder, old);
        return C20128v.f66529a;
    }
}
