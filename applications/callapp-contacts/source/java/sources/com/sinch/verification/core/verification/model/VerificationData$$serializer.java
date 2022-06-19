package com.sinch.verification.core.verification.model;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.verification.model.callout.CalloutVerificationDetails;
import com.sinch.verification.core.verification.model.callout.CalloutVerificationDetails$$serializer;
import com.sinch.verification.core.verification.model.flashcall.FlashCallVerificationDetails;
import com.sinch.verification.core.verification.model.flashcall.FlashCallVerificationDetails$$serializer;
import com.sinch.verification.core.verification.model.sms.SmsVerificationDetails;
import com.sinch.verification.core.verification.model.sms.SmsVerificationDetails$$serializer;
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
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/core/verification/model/VerificationData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/verification/model/VerificationData;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationData$$serializer.class */
public final class VerificationData$$serializer implements AbstractC20409w<VerificationData> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final VerificationData$$serializer INSTANCE;

    static {
        VerificationData$$serializer verificationData$$serializer = new VerificationData$$serializer();
        INSTANCE = verificationData$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.verification.core.verification.model.VerificationData", verificationData$$serializer, 5);
        c20372bf.m723a("method", false);
        c20372bf.m723a(Payload.SOURCE, true);
        c20372bf.m723a(MRAIDNativeFeature.SMS, true);
        c20372bf.m723a("flashcall", true);
        c20372bf.m723a("callout", true);
        $$serialDesc = c20372bf;
    }

    private VerificationData$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{VerificationMethodType.Companion, VerificationSourceType$$serializer.INSTANCE, C20360aw.m724a(SmsVerificationDetails$$serializer.INSTANCE), C20360aw.m724a(FlashCallVerificationDetails$$serializer.INSTANCE), C20360aw.m724a(CalloutVerificationDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final VerificationData deserialize(Decoder decoder) {
        VerificationMethodType verificationMethodType;
        int i;
        CalloutVerificationDetails calloutVerificationDetails;
        VerificationSourceType verificationSourceType;
        SmsVerificationDetails smsVerificationDetails;
        FlashCallVerificationDetails flashCallVerificationDetails;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            verificationMethodType = null;
            verificationSourceType = null;
            FlashCallVerificationDetails flashCallVerificationDetails2 = null;
            calloutVerificationDetails = null;
            SmsVerificationDetails smsVerificationDetails2 = null;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    SmsVerificationDetails smsVerificationDetails3 = smsVerificationDetails2;
                    flashCallVerificationDetails = flashCallVerificationDetails2;
                    smsVerificationDetails = smsVerificationDetails3;
                    break;
                } else if (decodeElementIndex == 0) {
                    VerificationMethodType.Companion companion = VerificationMethodType.Companion;
                    verificationMethodType = (VerificationMethodType) ((i & 1) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 0, companion, verificationMethodType) : beginStructure.decodeSerializableElement(serialDescriptor, 0, companion));
                    i2 = i | 1;
                } else if (decodeElementIndex == 1) {
                    VerificationSourceType$$serializer verificationSourceType$$serializer = VerificationSourceType$$serializer.INSTANCE;
                    verificationSourceType = (VerificationSourceType) ((i & 2) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer, verificationSourceType) : beginStructure.decodeSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer));
                    i2 = i | 2;
                } else if (decodeElementIndex == 2) {
                    SmsVerificationDetails$$serializer smsVerificationDetails$$serializer = SmsVerificationDetails$$serializer.INSTANCE;
                    smsVerificationDetails2 = (SmsVerificationDetails) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, smsVerificationDetails$$serializer, smsVerificationDetails2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, smsVerificationDetails$$serializer));
                    i2 = i | 4;
                } else if (decodeElementIndex == 3) {
                    FlashCallVerificationDetails$$serializer flashCallVerificationDetails$$serializer = FlashCallVerificationDetails$$serializer.INSTANCE;
                    flashCallVerificationDetails2 = (FlashCallVerificationDetails) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, flashCallVerificationDetails$$serializer, flashCallVerificationDetails2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, flashCallVerificationDetails$$serializer));
                    i2 = i | 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    CalloutVerificationDetails$$serializer calloutVerificationDetails$$serializer = CalloutVerificationDetails$$serializer.INSTANCE;
                    calloutVerificationDetails = (CalloutVerificationDetails) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, calloutVerificationDetails$$serializer, calloutVerificationDetails) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, calloutVerificationDetails$$serializer));
                    i2 = i | 16;
                }
            }
        } else {
            VerificationMethodType verificationMethodType2 = (VerificationMethodType) beginStructure.decodeSerializableElement(serialDescriptor, 0, VerificationMethodType.Companion);
            verificationSourceType = (VerificationSourceType) beginStructure.decodeSerializableElement(serialDescriptor, 1, VerificationSourceType$$serializer.INSTANCE);
            SmsVerificationDetails smsVerificationDetails4 = (SmsVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, SmsVerificationDetails$$serializer.INSTANCE);
            flashCallVerificationDetails = (FlashCallVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, FlashCallVerificationDetails$$serializer.INSTANCE);
            calloutVerificationDetails = (CalloutVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, CalloutVerificationDetails$$serializer.INSTANCE);
            i = Integer.MAX_VALUE;
            verificationMethodType = verificationMethodType2;
            smsVerificationDetails = smsVerificationDetails4;
        }
        beginStructure.endStructure(serialDescriptor);
        return new VerificationData(i, verificationMethodType, verificationSourceType, smsVerificationDetails, flashCallVerificationDetails, calloutVerificationDetails, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final VerificationData patch(Decoder decoder, VerificationData old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (VerificationData) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, VerificationData value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        VerificationData.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
