package com.sinch.verification.core.verification.model;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\u0001\u0018�� \f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0002\u000b\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\r"}, m4298d2 = {"Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "INTERCEPTION", "MANUAL", "LOG", "SEAMLESS", "$serializer", "Companion", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationSourceType.class */
public enum VerificationSourceType {
    INTERCEPTION("intercept"),
    MANUAL("manual"),
    LOG("log"),
    SEAMLESS("seamless???");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bHÆ\u0001¨\u0006\t"}, m4298d2 = {"Lcom/sinch/verification/core/verification/model/VerificationSourceType$Companion;", "", "()V", "forKey", "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "value", "", "serializer", "Lkotlinx/serialization/KSerializer;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/model/VerificationSourceType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VerificationSourceType forKey(String value) {
            VerificationSourceType[] values;
            C18524p.m3841c(value, "value");
            for (VerificationSourceType verificationSourceType : VerificationSourceType.values()) {
                if (C18524p.m3850a((Object) verificationSourceType.getValue(), (Object) value)) {
                    return verificationSourceType;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        public final KSerializer<VerificationSourceType> serializer() {
            return VerificationSourceType$$serializer.INSTANCE;
        }
    }

    VerificationSourceType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
