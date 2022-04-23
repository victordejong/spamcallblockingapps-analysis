package com.sinch.verification.flashcall.report;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� \u00182\u00020\u0001:\u0002\u0017\u0018B-\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\u0004\u0010\rR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u000e\u0010\f\u001a\u0004\b\u0006\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;", "", "seen1", "", "isLateCall", "", "isNoCall", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(IZZLkotlinx/serialization/SerializationConstructorMarker;)V", "(ZZ)V", "isLateCall$annotations", "()V", "()Z", "isNoCall$annotations", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "", "$serializer", "Companion", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/report/FlashCallReportDetails.class */
public final class FlashCallReportDetails {
    public static final Companion Companion = new Companion(null);
    private final boolean isLateCall;
    private final boolean isNoCall;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/report/FlashCallReportDetails$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallReportDetails> serializer() {
            return FlashCallReportDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallReportDetails(int i, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.isLateCall = z;
            if ((i & 2) != 0) {
                this.isNoCall = z2;
                return;
            }
            throw new MissingFieldException("noCall");
        }
        throw new MissingFieldException("lateCall");
    }

    public FlashCallReportDetails(boolean z, boolean z2) {
        this.isLateCall = z;
        this.isNoCall = z2;
    }

    public static /* synthetic */ FlashCallReportDetails copy$default(FlashCallReportDetails flashCallReportDetails, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = flashCallReportDetails.isLateCall;
        }
        if ((i & 2) != 0) {
            z2 = flashCallReportDetails.isNoCall;
        }
        return flashCallReportDetails.copy(z, z2);
    }

    public static /* synthetic */ void isLateCall$annotations() {
    }

    public static /* synthetic */ void isNoCall$annotations() {
    }

    public static final void write$Self(FlashCallReportDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeBooleanElement(serialDesc, 0, self.isLateCall);
        output.encodeBooleanElement(serialDesc, 1, self.isNoCall);
    }

    public final boolean component1() {
        return this.isLateCall;
    }

    public final boolean component2() {
        return this.isNoCall;
    }

    public final FlashCallReportDetails copy(boolean z, boolean z2) {
        return new FlashCallReportDetails(z, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlashCallReportDetails)) {
            return false;
        }
        FlashCallReportDetails flashCallReportDetails = (FlashCallReportDetails) obj;
        return this.isLateCall == flashCallReportDetails.isLateCall && this.isNoCall == flashCallReportDetails.isNoCall;
    }

    public final int hashCode() {
        boolean z = this.isLateCall;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.isNoCall;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        int i2 = z2 ? 1 : 0;
        int i3 = z2 ? 1 : 0;
        return (i2 * 31) + i;
    }

    public final boolean isLateCall() {
        return this.isLateCall;
    }

    public final boolean isNoCall() {
        return this.isNoCall;
    }

    public final String toString() {
        return "FlashCallReportDetails(isLateCall=" + this.isLateCall + ", isNoCall=" + this.isNoCall + ")";
    }
}
