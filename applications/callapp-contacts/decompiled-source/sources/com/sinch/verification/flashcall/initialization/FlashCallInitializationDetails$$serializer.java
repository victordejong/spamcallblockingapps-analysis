package com.sinch.verification.flashcall.initialization;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.a;
import kotlinx.serialization.b.an;
import kotlinx.serialization.b.aw;
import kotlinx.serialization.b.bf;
import kotlinx.serialization.b.bk;
import kotlinx.serialization.b.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$$serializer.class */
public final class FlashCallInitializationDetails$$serializer implements w<FlashCallInitializationDetails> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final FlashCallInitializationDetails$$serializer INSTANCE;

    static {
        FlashCallInitializationDetails$$serializer flashCallInitializationDetails$$serializer = new FlashCallInitializationDetails$$serializer();
        INSTANCE = flashCallInitializationDetails$$serializer;
        bf bfVar = new bf("com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails", flashCallInitializationDetails$$serializer, 6);
        bfVar.a("cliFilter", false);
        bfVar.a("interceptionTimeout", false);
        bfVar.a("reportTimeout", false);
        bfVar.a("denyCallAfter", false);
        bfVar.a("cli", true);
        bfVar.a("subVerificationId", true);
        $$serialDesc = bfVar;
    }

    private FlashCallInitializationDetails$$serializer() {
    }

    @Override // kotlinx.serialization.b.w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{bk.f38928a, aw.a(an.f38889a), aw.a(an.f38889a), aw.a(an.f38889a), aw.a(bk.f38928a), aw.a(bk.f38928a)};
    }

    @Override // kotlinx.serialization.d
    public final FlashCallInitializationDetails deserialize(Decoder decoder) {
        Long l;
        int i;
        String str;
        Long l2;
        Long l3;
        String str2;
        String str3;
        p.c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
            l = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, an.f38889a);
            l3 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, an.f38889a);
            l2 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, an.f38889a);
            str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, bk.f38928a);
            str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, bk.f38928a);
            i = Integer.MAX_VALUE;
        } else {
            str2 = null;
            l = null;
            String str4 = null;
            Long l4 = null;
            Long l5 = null;
            String str5 = null;
            i = 0;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        l2 = l4;
                        l3 = l5;
                        str = str5;
                        str3 = str4;
                        break;
                    case 0:
                        str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i |= 1;
                        break;
                    case 1:
                        an anVar = an.f38889a;
                        l = (Long) ((i & 2) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 1, anVar, l) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, anVar));
                        i |= 2;
                        break;
                    case 2:
                        an anVar2 = an.f38889a;
                        l5 = (Long) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, anVar2, l5) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, anVar2));
                        i |= 4;
                        break;
                    case 3:
                        an anVar3 = an.f38889a;
                        l4 = (Long) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, anVar3, l4) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, anVar3));
                        i |= 8;
                        break;
                    case 4:
                        bk bkVar = bk.f38928a;
                        str5 = (String) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, bkVar, str5) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, bkVar));
                        i |= 16;
                        break;
                    case 5:
                        bk bkVar2 = bk.f38928a;
                        str4 = (String) ((i & 32) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 5, bkVar2, str4) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, bkVar2));
                        i |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new FlashCallInitializationDetails(i, str2, l, l3, l2, str, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final FlashCallInitializationDetails patch(Decoder decoder, FlashCallInitializationDetails old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (FlashCallInitializationDetails) w.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, FlashCallInitializationDetails value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        FlashCallInitializationDetails.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
