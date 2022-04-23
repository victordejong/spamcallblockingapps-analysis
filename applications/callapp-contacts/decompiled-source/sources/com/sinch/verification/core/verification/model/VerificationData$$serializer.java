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
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.a;
import kotlinx.serialization.b.aw;
import kotlinx.serialization.b.bf;
import kotlinx.serialization.b.w;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/sinch/verification/core/verification/model/VerificationData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/verification/model/VerificationData;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationData$$serializer.class */
public final class VerificationData$$serializer implements w<VerificationData> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final VerificationData$$serializer INSTANCE;

    static {
        VerificationData$$serializer verificationData$$serializer = new VerificationData$$serializer();
        INSTANCE = verificationData$$serializer;
        bf bfVar = new bf("com.sinch.verification.core.verification.model.VerificationData", verificationData$$serializer, 5);
        bfVar.a("method", false);
        bfVar.a(Payload.SOURCE, true);
        bfVar.a(MRAIDNativeFeature.SMS, true);
        bfVar.a("flashcall", true);
        bfVar.a("callout", true);
        $$serialDesc = bfVar;
    }

    private VerificationData$$serializer() {
    }

    @Override // kotlinx.serialization.b.w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{VerificationMethodType.Companion, VerificationSourceType$$serializer.INSTANCE, aw.a(SmsVerificationDetails$$serializer.INSTANCE), aw.a(FlashCallVerificationDetails$$serializer.INSTANCE), aw.a(CalloutVerificationDetails$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.d
    public final VerificationData deserialize(Decoder decoder) {
        VerificationMethodType verificationMethodType;
        int i;
        CalloutVerificationDetails calloutVerificationDetails;
        VerificationSourceType verificationSourceType;
        SmsVerificationDetails smsVerificationDetails;
        FlashCallVerificationDetails flashCallVerificationDetails;
        p.c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            verificationMethodType = null;
            verificationSourceType = null;
            FlashCallVerificationDetails flashCallVerificationDetails2 = null;
            calloutVerificationDetails = null;
            SmsVerificationDetails smsVerificationDetails2 = null;
            i = 0;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    flashCallVerificationDetails = flashCallVerificationDetails2;
                    smsVerificationDetails = smsVerificationDetails2;
                    break;
                } else if (decodeElementIndex == 0) {
                    VerificationMethodType.Companion companion = VerificationMethodType.Companion;
                    verificationMethodType = (VerificationMethodType) ((i & 1) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 0, companion, verificationMethodType) : beginStructure.decodeSerializableElement(serialDescriptor, 0, companion));
                    i |= 1;
                } else if (decodeElementIndex == 1) {
                    VerificationSourceType$$serializer verificationSourceType$$serializer = VerificationSourceType$$serializer.INSTANCE;
                    verificationSourceType = (VerificationSourceType) ((i & 2) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer, verificationSourceType) : beginStructure.decodeSerializableElement(serialDescriptor, 1, verificationSourceType$$serializer));
                    i |= 2;
                } else if (decodeElementIndex == 2) {
                    SmsVerificationDetails$$serializer smsVerificationDetails$$serializer = SmsVerificationDetails$$serializer.INSTANCE;
                    smsVerificationDetails2 = (SmsVerificationDetails) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, smsVerificationDetails$$serializer, smsVerificationDetails2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, smsVerificationDetails$$serializer));
                    i |= 4;
                } else if (decodeElementIndex == 3) {
                    FlashCallVerificationDetails$$serializer flashCallVerificationDetails$$serializer = FlashCallVerificationDetails$$serializer.INSTANCE;
                    flashCallVerificationDetails2 = (FlashCallVerificationDetails) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, flashCallVerificationDetails$$serializer, flashCallVerificationDetails2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, flashCallVerificationDetails$$serializer));
                    i |= 8;
                } else if (decodeElementIndex == 4) {
                    CalloutVerificationDetails$$serializer calloutVerificationDetails$$serializer = CalloutVerificationDetails$$serializer.INSTANCE;
                    calloutVerificationDetails = (CalloutVerificationDetails) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, calloutVerificationDetails$$serializer, calloutVerificationDetails) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, calloutVerificationDetails$$serializer));
                    i |= 16;
                } else {
                    throw new UnknownFieldException(decodeElementIndex);
                }
            }
        } else {
            verificationMethodType = (VerificationMethodType) beginStructure.decodeSerializableElement(serialDescriptor, 0, VerificationMethodType.Companion);
            verificationSourceType = (VerificationSourceType) beginStructure.decodeSerializableElement(serialDescriptor, 1, VerificationSourceType$$serializer.INSTANCE);
            smsVerificationDetails = (SmsVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, SmsVerificationDetails$$serializer.INSTANCE);
            flashCallVerificationDetails = (FlashCallVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, FlashCallVerificationDetails$$serializer.INSTANCE);
            calloutVerificationDetails = (CalloutVerificationDetails) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, CalloutVerificationDetails$$serializer.INSTANCE);
            i = Integer.MAX_VALUE;
        }
        beginStructure.endStructure(serialDescriptor);
        return new VerificationData(i, verificationMethodType, verificationSourceType, smsVerificationDetails, flashCallVerificationDetails, calloutVerificationDetails, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final VerificationData patch(Decoder decoder, VerificationData old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (VerificationData) w.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, VerificationData value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        VerificationData.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
