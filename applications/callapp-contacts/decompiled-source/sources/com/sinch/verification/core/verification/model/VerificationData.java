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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0017\u0018�� #2\u00020\u0001:\u0002\"#BU\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0011R\u001e\u0010\f\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\b\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/sinch/verification/core/verification/model/VerificationData;", "", "seen1", "", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", Payload.SOURCE, "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "smsDetails", "Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "flashcallDetails", "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "calloutDetails", "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILcom/sinch/verification/core/internal/VerificationMethodType;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Lcom/sinch/verification/core/internal/VerificationMethodType;)V", "calloutDetails$annotations", "()V", "getCalloutDetails", "()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "flashcallDetails$annotations", "getFlashcallDetails", "()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "method$annotations", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "smsDetails$annotations", "getSmsDetails", "()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "source$annotations", "getSource", "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationData.class */
public class VerificationData {
    public static final Companion Companion = new Companion(null);
    private final CalloutVerificationDetails calloutDetails;
    private final FlashCallVerificationDetails flashcallDetails;
    private final VerificationMethodType method;
    private final SmsVerificationDetails smsDetails;
    private final VerificationSourceType source;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/verification/model/VerificationData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/verification/model/VerificationData;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<VerificationData> serializer() {
            return VerificationData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ VerificationData(int i, VerificationMethodType verificationMethodType, VerificationSourceType verificationSourceType, SmsVerificationDetails smsVerificationDetails, FlashCallVerificationDetails flashCallVerificationDetails, CalloutVerificationDetails calloutVerificationDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.method = verificationMethodType;
            if ((i & 2) != 0) {
                this.source = verificationSourceType;
            } else {
                this.source = VerificationSourceType.MANUAL;
            }
            if ((i & 4) != 0) {
                this.smsDetails = smsVerificationDetails;
            } else {
                this.smsDetails = null;
            }
            if ((i & 8) != 0) {
                this.flashcallDetails = flashCallVerificationDetails;
            } else {
                this.flashcallDetails = null;
            }
            if ((i & 16) != 0) {
                this.calloutDetails = calloutVerificationDetails;
            } else {
                this.calloutDetails = null;
            }
        } else {
            throw new MissingFieldException("method");
        }
    }

    public VerificationData(VerificationMethodType method) {
        p.c(method, "method");
        this.method = method;
        this.source = VerificationSourceType.MANUAL;
    }

    public static /* synthetic */ void calloutDetails$annotations() {
    }

    public static /* synthetic */ void flashcallDetails$annotations() {
    }

    public static /* synthetic */ void method$annotations() {
    }

    public static /* synthetic */ void smsDetails$annotations() {
    }

    public static /* synthetic */ void source$annotations() {
    }

    public static final void write$Self(VerificationData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, VerificationMethodType.Companion, self.getMethod());
        if ((!p.a(self.getSource(), VerificationSourceType.MANUAL)) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeSerializableElement(serialDesc, 1, VerificationSourceType$$serializer.INSTANCE, self.getSource());
        }
        if ((!p.a(self.getSmsDetails(), (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 2)) {
            output.encodeNullableSerializableElement(serialDesc, 2, SmsVerificationDetails$$serializer.INSTANCE, self.getSmsDetails());
        }
        if ((!p.a(self.getFlashcallDetails(), (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 3)) {
            output.encodeNullableSerializableElement(serialDesc, 3, FlashCallVerificationDetails$$serializer.INSTANCE, self.getFlashcallDetails());
        }
        if ((!p.a(self.getCalloutDetails(), (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 4)) {
            output.encodeNullableSerializableElement(serialDesc, 4, CalloutVerificationDetails$$serializer.INSTANCE, self.getCalloutDetails());
        }
    }

    public CalloutVerificationDetails getCalloutDetails() {
        return this.calloutDetails;
    }

    public FlashCallVerificationDetails getFlashcallDetails() {
        return this.flashcallDetails;
    }

    public VerificationMethodType getMethod() {
        return this.method;
    }

    public SmsVerificationDetails getSmsDetails() {
        return this.smsDetails;
    }

    public VerificationSourceType getSource() {
        return this.source;
    }
}
