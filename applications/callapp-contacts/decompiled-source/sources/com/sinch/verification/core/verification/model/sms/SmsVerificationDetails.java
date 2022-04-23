package com.sinch.verification.core.verification.model.sms;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u00162\u00020\u0001:\u0002\u0015\u0016B%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "", "seen1", "", "code", "", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;)V", "code$annotations", "()V", "getCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/sms/SmsVerificationDetails.class */
public final class SmsVerificationDetails {
    public static final Companion Companion = new Companion(null);
    private final String code;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/sms/SmsVerificationDetails$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SmsVerificationDetails> serializer() {
            return SmsVerificationDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SmsVerificationDetails(int i, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.code = str;
            return;
        }
        throw new MissingFieldException("code");
    }

    public SmsVerificationDetails(String code) {
        p.c(code, "code");
        this.code = code;
    }

    public static /* synthetic */ void code$annotations() {
    }

    public static /* synthetic */ SmsVerificationDetails copy$default(SmsVerificationDetails smsVerificationDetails, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = smsVerificationDetails.code;
        }
        return smsVerificationDetails.copy(str);
    }

    public static final void write$Self(SmsVerificationDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.code);
    }

    public final String component1() {
        return this.code;
    }

    public final SmsVerificationDetails copy(String code) {
        p.c(code, "code");
        return new SmsVerificationDetails(code);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof SmsVerificationDetails) && p.a((Object) this.code, (Object) ((SmsVerificationDetails) obj).code);
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
        return "SmsVerificationDetails(code=" + this.code + ")";
    }
}
