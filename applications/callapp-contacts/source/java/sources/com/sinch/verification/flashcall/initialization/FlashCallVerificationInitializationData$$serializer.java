package com.sinch.verification.flashcall.initialization;

import com.mopub.common.AdType;
import com.sinch.metadata.model.PhoneMetadata;
import com.sinch.metadata.model.PhoneMetadata$$serializer;
import com.sinch.verification.core.initiation.VerificationIdentity;
import com.sinch.verification.core.initiation.VerificationIdentity$$serializer;
import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.p572b.AbstractC20409w;
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
import kotlinx.serialization.p572b.C20394i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$$serializer.class */
public final class FlashCallVerificationInitializationData$$serializer implements AbstractC20409w<FlashCallVerificationInitializationData> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final FlashCallVerificationInitializationData$$serializer INSTANCE;

    static {
        FlashCallVerificationInitializationData$$serializer flashCallVerificationInitializationData$$serializer = new FlashCallVerificationInitializationData$$serializer();
        INSTANCE = flashCallVerificationInitializationData$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.verification.flashcall.initialization.FlashCallVerificationInitializationData", flashCallVerificationInitializationData$$serializer, 6);
        c20372bf.m723a("identity", false);
        c20372bf.m723a("honourEarlyReject", false);
        c20372bf.m723a(AdType.CUSTOM, false);
        c20372bf.m723a("reference", false);
        c20372bf.m723a("metadata", false);
        c20372bf.m723a("method", true);
        $$serialDesc = c20372bf;
    }

    private FlashCallVerificationInitializationData$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{VerificationIdentity$$serializer.INSTANCE, C20394i.f66887a, C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(PhoneMetadata$$serializer.INSTANCE), VerificationMethodType.Companion};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final FlashCallVerificationInitializationData deserialize(Decoder decoder) {
        String str;
        int i;
        PhoneMetadata phoneMetadata;
        String str2;
        boolean z;
        VerificationIdentity verificationIdentity;
        VerificationMethodType verificationMethodType;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            verificationIdentity = (VerificationIdentity) beginStructure.decodeSerializableElement(serialDescriptor, 0, VerificationIdentity$$serializer.INSTANCE);
            z = beginStructure.decodeBooleanElement(serialDescriptor, 1);
            str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, C20377bk.f66866a);
            String str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, C20377bk.f66866a);
            phoneMetadata = (PhoneMetadata) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, PhoneMetadata$$serializer.INSTANCE);
            verificationMethodType = (VerificationMethodType) beginStructure.decodeSerializableElement(serialDescriptor, 5, VerificationMethodType.Companion);
            i = Integer.MAX_VALUE;
            str = str3;
        } else {
            VerificationIdentity verificationIdentity2 = null;
            VerificationMethodType verificationMethodType2 = null;
            String str4 = null;
            String str5 = null;
            PhoneMetadata phoneMetadata2 = null;
            z = false;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        phoneMetadata = phoneMetadata2;
                        verificationMethodType = verificationMethodType2;
                        str = str4;
                        str2 = str5;
                        verificationIdentity = verificationIdentity2;
                        break;
                    case 0:
                        VerificationIdentity$$serializer verificationIdentity$$serializer = VerificationIdentity$$serializer.INSTANCE;
                        verificationIdentity2 = (VerificationIdentity) ((i & 1) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 0, verificationIdentity$$serializer, verificationIdentity2) : beginStructure.decodeSerializableElement(serialDescriptor, 0, verificationIdentity$$serializer));
                        i2 = i | 1;
                        break;
                    case 1:
                        z = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                        i2 = i | 2;
                        break;
                    case 2:
                        C20377bk c20377bk = C20377bk.f66866a;
                        str5 = (String) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, c20377bk, str5) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, c20377bk));
                        i2 = i | 4;
                        break;
                    case 3:
                        C20377bk c20377bk2 = C20377bk.f66866a;
                        str4 = (String) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, c20377bk2, str4) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, c20377bk2));
                        i2 = i | 8;
                        break;
                    case 4:
                        PhoneMetadata$$serializer phoneMetadata$$serializer = PhoneMetadata$$serializer.INSTANCE;
                        phoneMetadata2 = (PhoneMetadata) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, phoneMetadata$$serializer, phoneMetadata2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, phoneMetadata$$serializer));
                        i2 = i | 16;
                        break;
                    case 5:
                        VerificationMethodType.Companion companion = VerificationMethodType.Companion;
                        verificationMethodType2 = (VerificationMethodType) ((i & 32) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 5, companion, verificationMethodType2) : beginStructure.decodeSerializableElement(serialDescriptor, 5, companion));
                        i2 = i | 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new FlashCallVerificationInitializationData(i, verificationIdentity, z, str2, str, phoneMetadata, verificationMethodType, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final FlashCallVerificationInitializationData patch(Decoder decoder, FlashCallVerificationInitializationData old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (FlashCallVerificationInitializationData) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, FlashCallVerificationInitializationData value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        FlashCallVerificationInitializationData.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
