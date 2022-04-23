package com.sinch.verification.flashcall.report;

import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� \u001c2\u00020\u0001:\u0002\u001b\u001cB1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/sinch/verification/flashcall/report/FlashCallReportData;", "", "seen1", "", "details", "Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILcom/sinch/verification/flashcall/report/FlashCallReportDetails;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)V", "details$annotations", "()V", "getDetails", "()Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;", "method$annotations", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "$serializer", "Companion", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/report/FlashCallReportData.class */
public final class FlashCallReportData {
    public static final Companion Companion = new Companion(null);
    private final FlashCallReportDetails details;
    private final VerificationMethodType method;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/flashcall/report/FlashCallReportData;", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/report/FlashCallReportData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallReportData> serializer() {
            return FlashCallReportData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallReportData(int i, FlashCallReportDetails flashCallReportDetails, VerificationMethodType verificationMethodType, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.details = flashCallReportDetails;
            if ((i & 2) != 0) {
                this.method = verificationMethodType;
            } else {
                this.method = VerificationMethodType.FLASHCALL;
            }
        } else {
            throw new MissingFieldException("data");
        }
    }

    public FlashCallReportData(FlashCallReportDetails details) {
        p.c(details, "details");
        this.details = details;
        this.method = VerificationMethodType.FLASHCALL;
    }

    public static /* synthetic */ FlashCallReportData copy$default(FlashCallReportData flashCallReportData, FlashCallReportDetails flashCallReportDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            flashCallReportDetails = flashCallReportData.details;
        }
        return flashCallReportData.copy(flashCallReportDetails);
    }

    public static /* synthetic */ void details$annotations() {
    }

    public static /* synthetic */ void method$annotations() {
    }

    public static final void write$Self(FlashCallReportData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, FlashCallReportDetails$$serializer.INSTANCE, self.details);
        if ((!p.a(self.method, VerificationMethodType.FLASHCALL)) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeSerializableElement(serialDesc, 1, VerificationMethodType.Companion, self.method);
        }
    }

    public final FlashCallReportDetails component1() {
        return this.details;
    }

    public final FlashCallReportData copy(FlashCallReportDetails details) {
        p.c(details, "details");
        return new FlashCallReportData(details);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof FlashCallReportData) && p.a(this.details, ((FlashCallReportData) obj).details);
        }
        return true;
    }

    public final FlashCallReportDetails getDetails() {
        return this.details;
    }

    public final VerificationMethodType getMethod() {
        return this.method;
    }

    public final int hashCode() {
        FlashCallReportDetails flashCallReportDetails = this.details;
        if (flashCallReportDetails != null) {
            return flashCallReportDetails.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "FlashCallReportData(details=" + this.details + ")";
    }
}
