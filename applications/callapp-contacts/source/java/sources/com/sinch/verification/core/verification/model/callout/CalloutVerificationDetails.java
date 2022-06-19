package com.sinch.verification.core.verification.model.callout;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u00162\u00020\u0001:\u0002\u0015\u0016B%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, m4298d2 = {"Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "", "seen1", "", "code", "", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;)V", "code$annotations", "()V", "getCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/callout/CalloutVerificationDetails.class */
public final class CalloutVerificationDetails {
    public static final Companion Companion = new Companion(null);
    private final String code;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/callout/CalloutVerificationDetails$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<CalloutVerificationDetails> serializer() {
            return CalloutVerificationDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ CalloutVerificationDetails(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.code = str;
            return;
        }
        throw new MissingFieldException("code");
    }

    public CalloutVerificationDetails(String code) {
        C18524p.m3841c(code, "code");
        this.code = code;
    }

    public static /* synthetic */ void code$annotations() {
    }

    public static /* synthetic */ CalloutVerificationDetails copy$default(CalloutVerificationDetails calloutVerificationDetails, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = calloutVerificationDetails.code;
        }
        return calloutVerificationDetails.copy(str);
    }

    public static final void write$Self(CalloutVerificationDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.code);
    }

    public final String component1() {
        return this.code;
    }

    public final CalloutVerificationDetails copy(String code) {
        C18524p.m3841c(code, "code");
        return new CalloutVerificationDetails(code);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof CalloutVerificationDetails) && C18524p.m3850a((Object) this.code, (Object) ((CalloutVerificationDetails) obj).code);
        }
        return true;
    }

    public final String getCode() {
        return this.code;
    }

    public final int hashCode() {
        String str = this.code;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "CalloutVerificationDetails(code=" + this.code + ")";
    }
}
