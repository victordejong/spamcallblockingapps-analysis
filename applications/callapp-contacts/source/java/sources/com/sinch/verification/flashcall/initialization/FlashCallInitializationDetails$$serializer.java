package com.sinch.verification.flashcall.initialization;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.p572b.AbstractC20409w;
import kotlinx.serialization.p572b.C20349an;
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$$serializer.class */
public final class FlashCallInitializationDetails$$serializer implements AbstractC20409w<FlashCallInitializationDetails> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final FlashCallInitializationDetails$$serializer INSTANCE;

    static {
        FlashCallInitializationDetails$$serializer flashCallInitializationDetails$$serializer = new FlashCallInitializationDetails$$serializer();
        INSTANCE = flashCallInitializationDetails$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails", flashCallInitializationDetails$$serializer, 6);
        c20372bf.m723a("cliFilter", false);
        c20372bf.m723a("interceptionTimeout", false);
        c20372bf.m723a("reportTimeout", false);
        c20372bf.m723a("denyCallAfter", false);
        c20372bf.m723a("cli", true);
        c20372bf.m723a("subVerificationId", true);
        $$serialDesc = c20372bf;
    }

    private FlashCallInitializationDetails$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20377bk.f66866a, C20360aw.m724a(C20349an.f66823a), C20360aw.m724a(C20349an.f66823a), C20360aw.m724a(C20349an.f66823a), C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(C20377bk.f66866a)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final FlashCallInitializationDetails deserialize(Decoder decoder) {
        Long l;
        int i;
        String str;
        Long l2;
        Long l3;
        String str2;
        String str3;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
            Long l4 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, C20349an.f66823a);
            Long l5 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, C20349an.f66823a);
            Long l6 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, C20349an.f66823a);
            String str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, C20377bk.f66866a);
            str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, C20377bk.f66866a);
            i = Integer.MAX_VALUE;
            l = l4;
            l3 = l5;
            l2 = l6;
            str = str4;
        } else {
            str2 = null;
            l = null;
            String str5 = null;
            Long l7 = null;
            Long l8 = null;
            String str6 = null;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        String str7 = str5;
                        l2 = l7;
                        l3 = l8;
                        str = str6;
                        str3 = str7;
                        break;
                    case 0:
                        str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i2 = i | 1;
                        break;
                    case 1:
                        C20349an c20349an = C20349an.f66823a;
                        l = (Long) ((i & 2) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 1, c20349an, l) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, c20349an));
                        i2 = i | 2;
                        break;
                    case 2:
                        C20349an c20349an2 = C20349an.f66823a;
                        l8 = (Long) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, c20349an2, l8) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, c20349an2));
                        i2 = i | 4;
                        break;
                    case 3:
                        C20349an c20349an3 = C20349an.f66823a;
                        l7 = (Long) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, c20349an3, l7) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, c20349an3));
                        i2 = i | 8;
                        break;
                    case 4:
                        C20377bk c20377bk = C20377bk.f66866a;
                        str6 = (String) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, c20377bk, str6) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, c20377bk));
                        i2 = i | 16;
                        break;
                    case 5:
                        C20377bk c20377bk2 = C20377bk.f66866a;
                        str5 = (String) ((i & 32) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 5, c20377bk2, str5) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, c20377bk2));
                        i2 = i | 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new FlashCallInitializationDetails(i, str2, l, l3, l2, str, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final FlashCallInitializationDetails patch(Decoder decoder, FlashCallInitializationDetails old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (FlashCallInitializationDetails) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, FlashCallInitializationDetails value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        FlashCallInitializationDetails.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
