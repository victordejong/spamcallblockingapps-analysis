package com.sinch.verification.core.verification.response;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.VerificationStatus;
import com.sinch.verification.core.internal.VerificationStatus$$serializer;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.core.verification.model.VerificationSourceType$$serializer;
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
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/core/verification/response/VerificationResponseData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/VerificationResponseData$$serializer.class */
public final class VerificationResponseData$$serializer implements AbstractC20409w<VerificationResponseData> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final VerificationResponseData$$serializer INSTANCE;

    static {
        VerificationResponseData$$serializer verificationResponseData$$serializer = new VerificationResponseData$$serializer();
        INSTANCE = verificationResponseData$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.verification.core.verification.response.VerificationResponseData", verificationResponseData$$serializer, 6);
        c20372bf.m723a("id", false);
        c20372bf.m723a(Payload.SOURCE, true);
        c20372bf.m723a("status", false);
        c20372bf.m723a("method", false);
        c20372bf.m723a("reason", true);
        c20372bf.m723a("reference", true);
        $$serialDesc = c20372bf;
    }

    private VerificationResponseData$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20377bk.f66866a, C20360aw.m724a(VerificationSourceType$$serializer.INSTANCE), VerificationStatus$$serializer.INSTANCE, VerificationMethodType.Companion, C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(C20377bk.f66866a)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final VerificationResponseData deserialize(Decoder decoder) {
        int i;
        String str;
        VerificationMethodType verificationMethodType;
        VerificationStatus verificationStatus;
        VerificationSourceType verificationSourceType;
        String str2;
        String str3;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
            verificationSourceType = (VerificationSourceType) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, VerificationSourceType$$serializer.INSTANCE);
            verificationStatus = (VerificationStatus) beginStructure.decodeSerializableElement(serialDescriptor, 2, VerificationStatus$$serializer.INSTANCE);
            verificationMethodType = (VerificationMethodType) beginStructure.decodeSerializableElement(serialDescriptor, 3, VerificationMethodType.Companion);
            str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, C20377bk.f66866a);
            str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, C20377bk.f66866a);
            i = Integer.MAX_VALUE;
        } else {
            str2 = null;
            verificationSourceType = null;
            String str4 = null;
            VerificationMethodType verificationMethodType2 = null;
            verificationStatus = null;
            String str5 = null;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        String str6 = str4;
                        verificationMethodType = verificationMethodType2;
                        str = str5;
                        str3 = str6;
                        break;
                    case 0:
                        str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i2 = i | 1;
                        break;
                    case 1:
                        VerificationSourceType$$serializer verificationSourceType$$serializer = VerificationSourceType$$serializer.INSTANCE;
                        verificationSourceType = (VerificationSourceType) ((i & 2) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer, verificationSourceType) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer));
                        i2 = i | 2;
                        break;
                    case 2:
                        VerificationStatus$$serializer verificationStatus$$serializer = VerificationStatus$$serializer.INSTANCE;
                        verificationStatus = (VerificationStatus) ((i & 4) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 2, verificationStatus$$serializer, verificationStatus) : beginStructure.decodeSerializableElement(serialDescriptor, 2, verificationStatus$$serializer));
                        i2 = i | 4;
                        break;
                    case 3:
                        VerificationMethodType.Companion companion = VerificationMethodType.Companion;
                        verificationMethodType2 = (VerificationMethodType) ((i & 8) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 3, companion, verificationMethodType2) : beginStructure.decodeSerializableElement(serialDescriptor, 3, companion));
                        i2 = i | 8;
                        break;
                    case 4:
                        C20377bk c20377bk = C20377bk.f66866a;
                        str5 = (String) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, c20377bk, str5) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, c20377bk));
                        i2 = i | 16;
                        break;
                    case 5:
                        C20377bk c20377bk2 = C20377bk.f66866a;
                        str4 = (String) ((i & 32) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 5, c20377bk2, str4) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, c20377bk2));
                        i2 = i | 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new VerificationResponseData(i, str2, verificationSourceType, verificationStatus, verificationMethodType, str, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final VerificationResponseData patch(Decoder decoder, VerificationResponseData old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (VerificationResponseData) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, VerificationResponseData value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        VerificationResponseData.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
