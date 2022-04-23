package com.sinch.verification.core.verification.model.callout;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.a;
import kotlinx.serialization.b.bf;
import kotlinx.serialization.b.bk;
import kotlinx.serialization.b.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/sinch/verification/core/verification/model/callout/CalloutVerificationDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/callout/CalloutVerificationDetails$$serializer.class */
public final class CalloutVerificationDetails$$serializer implements w<CalloutVerificationDetails> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final CalloutVerificationDetails$$serializer INSTANCE;

    static {
        CalloutVerificationDetails$$serializer calloutVerificationDetails$$serializer = new CalloutVerificationDetails$$serializer();
        INSTANCE = calloutVerificationDetails$$serializer;
        bf bfVar = new bf("com.sinch.verification.core.verification.model.callout.CalloutVerificationDetails", calloutVerificationDetails$$serializer, 1);
        bfVar.a("code", false);
        $$serialDesc = bfVar;
    }

    private CalloutVerificationDetails$$serializer() {
    }

    @Override // kotlinx.serialization.b.w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{bk.f38928a};
    }

    @Override // kotlinx.serialization.d
    public final CalloutVerificationDetails deserialize(Decoder decoder) {
        int i;
        String str;
        p.c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            str = null;
            i = 0;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    break;
                } else if (decodeElementIndex == 0) {
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                } else {
                    throw new UnknownFieldException(decodeElementIndex);
                }
            }
        } else {
            str = beginStructure.decodeStringElement(serialDescriptor, 0);
            i = Integer.MAX_VALUE;
        }
        beginStructure.endStructure(serialDescriptor);
        return new CalloutVerificationDetails(i, str, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final CalloutVerificationDetails patch(Decoder decoder, CalloutVerificationDetails old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (CalloutVerificationDetails) w.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, CalloutVerificationDetails value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        CalloutVerificationDetails.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
