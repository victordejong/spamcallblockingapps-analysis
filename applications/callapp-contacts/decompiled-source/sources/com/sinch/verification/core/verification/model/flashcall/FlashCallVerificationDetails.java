package com.sinch.verification.core.verification.model.flashcall;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u00162\u00020\u0001:\u0002\u0015\u0016B%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "", "seen1", "", "cli", "", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;)V", "cli$annotations", "()V", "getCli", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails.class */
public final class FlashCallVerificationDetails {
    public static final Companion Companion = new Companion(null);
    private final String cli;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallVerificationDetails> serializer() {
            return FlashCallVerificationDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallVerificationDetails(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.cli = str;
            return;
        }
        throw new MissingFieldException("cli");
    }

    public FlashCallVerificationDetails(String cli) {
        p.c(cli, "cli");
        this.cli = cli;
    }

    public static /* synthetic */ void cli$annotations() {
    }

    public static /* synthetic */ FlashCallVerificationDetails copy$default(FlashCallVerificationDetails flashCallVerificationDetails, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashCallVerificationDetails.cli;
        }
        return flashCallVerificationDetails.copy(str);
    }

    public static final void write$Self(FlashCallVerificationDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.cli);
    }

    public final String component1() {
        return this.cli;
    }

    public final FlashCallVerificationDetails copy(String cli) {
        p.c(cli, "cli");
        return new FlashCallVerificationDetails(cli);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof FlashCallVerificationDetails) && p.a((Object) this.cli, (Object) ((FlashCallVerificationDetails) obj).cli);
        }
        return true;
    }

    public final String getCli() {
        return this.cli;
    }

    public final int hashCode() {
        String str = this.cli;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "FlashCallVerificationDetails(cli=" + this.cli + ")";
    }
}
