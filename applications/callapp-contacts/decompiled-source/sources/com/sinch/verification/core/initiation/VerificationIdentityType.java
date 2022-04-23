package com.sinch.verification.core.initiation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0002\b\tB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\n"}, d2 = {"Lcom/sinch/verification/core/initiation/VerificationIdentityType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "NUMBER", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationIdentityType.class */
public enum VerificationIdentityType {
    NUMBER("number");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/initiation/VerificationIdentityType$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/initiation/VerificationIdentityType;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationIdentityType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<VerificationIdentityType> serializer() {
            return VerificationIdentityType$$serializer.INSTANCE;
        }
    }

    VerificationIdentityType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
