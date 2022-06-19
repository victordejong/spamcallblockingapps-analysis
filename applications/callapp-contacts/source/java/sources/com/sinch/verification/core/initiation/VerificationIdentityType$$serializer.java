package com.sinch.verification.core.initiation;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.p572b.AbstractC20409w;
import kotlinx.serialization.p572b.C20377bk;
import kotlinx.serialization.p572b.C20404s;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/core/initiation/VerificationIdentityType.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/initiation/VerificationIdentityType;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationIdentityType$$serializer.class */
public final class VerificationIdentityType$$serializer implements AbstractC20409w<VerificationIdentityType> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final VerificationIdentityType$$serializer INSTANCE = new VerificationIdentityType$$serializer();

    static {
        C20404s c20404s = new C20404s("com.sinch.verification.core.initiation.VerificationIdentityType", 1);
        c20404s.m723a("number", false);
        $$serialDesc = c20404s;
    }

    private VerificationIdentityType$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20377bk.f66866a};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final VerificationIdentityType deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        return VerificationIdentityType.values()[decoder.decodeEnum($$serialDesc)];
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final VerificationIdentityType patch(Decoder decoder, VerificationIdentityType old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (VerificationIdentityType) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, VerificationIdentityType value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        encoder.encodeEnum($$serialDesc, value.ordinal());
    }
}
