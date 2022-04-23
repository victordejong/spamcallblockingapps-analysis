package com.sinch.verification.flashcall.verification;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.verification.model.VerificationData;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.core.verification.model.callout.CalloutVerificationDetails;
import com.sinch.verification.core.verification.model.flashcall.FlashCallVerificationDetails;
import com.sinch.verification.core.verification.model.sms.SmsVerificationDetails;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;", "Lcom/sinch/verification/core/verification/model/VerificationData;", Payload.SOURCE, "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "flashcallDetails", "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V", "calloutDetails", "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "getCalloutDetails", "()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "getFlashcallDetails", "()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "smsDetails", "Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "getSmsDetails", "()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "getSource", "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/FlashCallVerificationData.class */
public final class FlashCallVerificationData extends VerificationData {
    private final CalloutVerificationDetails calloutDetails;
    private final FlashCallVerificationDetails flashcallDetails;
    private final SmsVerificationDetails smsDetails;
    private final VerificationSourceType source;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallVerificationData(VerificationSourceType source, FlashCallVerificationDetails flashcallDetails) {
        super(VerificationMethodType.FLASHCALL);
        p.c(source, "source");
        p.c(flashcallDetails, "flashcallDetails");
        this.source = source;
        this.flashcallDetails = flashcallDetails;
    }

    public static /* synthetic */ FlashCallVerificationData copy$default(FlashCallVerificationData flashCallVerificationData, VerificationSourceType verificationSourceType, FlashCallVerificationDetails flashCallVerificationDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            verificationSourceType = flashCallVerificationData.getSource();
        }
        if ((i & 2) != 0) {
            flashCallVerificationDetails = flashCallVerificationData.getFlashcallDetails();
        }
        return flashCallVerificationData.copy(verificationSourceType, flashCallVerificationDetails);
    }

    public final VerificationSourceType component1() {
        return getSource();
    }

    public final FlashCallVerificationDetails component2() {
        return getFlashcallDetails();
    }

    public final FlashCallVerificationData copy(VerificationSourceType source, FlashCallVerificationDetails flashcallDetails) {
        p.c(source, "source");
        p.c(flashcallDetails, "flashcallDetails");
        return new FlashCallVerificationData(source, flashcallDetails);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlashCallVerificationData)) {
            return false;
        }
        FlashCallVerificationData flashCallVerificationData = (FlashCallVerificationData) obj;
        return p.a(getSource(), flashCallVerificationData.getSource()) && p.a(getFlashcallDetails(), flashCallVerificationData.getFlashcallDetails());
    }

    @Override // com.sinch.verification.core.verification.model.VerificationData
    public final CalloutVerificationDetails getCalloutDetails() {
        return this.calloutDetails;
    }

    @Override // com.sinch.verification.core.verification.model.VerificationData
    public final FlashCallVerificationDetails getFlashcallDetails() {
        return this.flashcallDetails;
    }

    @Override // com.sinch.verification.core.verification.model.VerificationData
    public final SmsVerificationDetails getSmsDetails() {
        return this.smsDetails;
    }

    @Override // com.sinch.verification.core.verification.model.VerificationData
    public final VerificationSourceType getSource() {
        return this.source;
    }

    public final int hashCode() {
        VerificationSourceType source = getSource();
        int i = 0;
        int hashCode = source != null ? source.hashCode() : 0;
        FlashCallVerificationDetails flashcallDetails = getFlashcallDetails();
        if (flashcallDetails != null) {
            i = flashcallDetails.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "FlashCallVerificationData(source=" + getSource() + ", flashcallDetails=" + getFlashcallDetails() + ")";
    }
}
