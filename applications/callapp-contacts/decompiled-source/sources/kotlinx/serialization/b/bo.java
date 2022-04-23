package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0011\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0096\u0001J\u001e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0002\u0010\u0012R\u0012\u0010\u0004\u001a\u00020\u0005X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lkotlinx/serialization/internal/UnitSerializer;", "Lkotlinx/serialization/KSerializer;", "", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "patch", "old", "(Lkotlinx/serialization/Decoder;Lkotlin/Unit;)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Lkotlin/Unit;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bo.class */
public final class bo implements KSerializer<v> {

    /* renamed from: a  reason: collision with root package name */
    public static final bo f38941a = new bo();

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ax f38942b = new ax("kotlin.Unit", v.f38654a);

    private bo() {
    }

    public final void a(Decoder decoder) {
        p.c(decoder, "decoder");
        this.f38942b.deserialize(decoder);
    }

    /* renamed from: a */
    public final void serialize(Encoder encoder, v value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        this.f38942b.serialize(encoder, value);
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object deserialize(Decoder decoder) {
        a(decoder);
        return v.f38654a;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38942b.getDescriptor();
    }

    @Override // kotlinx.serialization.d
    public final /* synthetic */ Object patch(Decoder decoder, Object obj) {
        v old = (v) obj;
        p.c(decoder, "decoder");
        p.c(old, "old");
        this.f38942b.patch(decoder, old);
        return v.f38654a;
    }
}
