package com.sinch.verification.core.initiation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u001c2\u00020\u0001:\u0002\u001b\u001cB1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u001d\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/sinch/verification/core/initiation/VerificationIdentity;", "", "seen1", "", "endpoint", "", "type", "Lcom/sinch/verification/core/initiation/VerificationIdentityType;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)V", "endpoint$annotations", "()V", "getEndpoint", "()Ljava/lang/String;", "type$annotations", "getType", "()Lcom/sinch/verification/core/initiation/VerificationIdentityType;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationIdentity.class */
public final class VerificationIdentity {
    public static final Companion Companion = new Companion(null);
    private final String endpoint;
    private final VerificationIdentityType type;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/initiation/VerificationIdentity;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/VerificationIdentity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<VerificationIdentity> serializer() {
            return VerificationIdentity$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ VerificationIdentity(int i, String str, VerificationIdentityType verificationIdentityType, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.endpoint = str;
            if ((i & 2) != 0) {
                this.type = verificationIdentityType;
            } else {
                this.type = VerificationIdentityType.NUMBER;
            }
        } else {
            throw new MissingFieldException("endpoint");
        }
    }

    public VerificationIdentity(String endpoint, VerificationIdentityType type) {
        p.c(endpoint, "endpoint");
        p.c(type, "type");
        this.endpoint = endpoint;
        this.type = type;
    }

    public /* synthetic */ VerificationIdentity(String str, VerificationIdentityType verificationIdentityType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? VerificationIdentityType.NUMBER : verificationIdentityType);
    }

    public static /* synthetic */ VerificationIdentity copy$default(VerificationIdentity verificationIdentity, String str, VerificationIdentityType verificationIdentityType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verificationIdentity.endpoint;
        }
        if ((i & 2) != 0) {
            verificationIdentityType = verificationIdentity.type;
        }
        return verificationIdentity.copy(str, verificationIdentityType);
    }

    public static /* synthetic */ void endpoint$annotations() {
    }

    public static /* synthetic */ void type$annotations() {
    }

    public static final void write$Self(VerificationIdentity self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.endpoint);
        if ((!p.a(self.type, VerificationIdentityType.NUMBER)) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeSerializableElement(serialDesc, 1, VerificationIdentityType$$serializer.INSTANCE, self.type);
        }
    }

    public final String component1() {
        return this.endpoint;
    }

    public final VerificationIdentityType component2() {
        return this.type;
    }

    public final VerificationIdentity copy(String endpoint, VerificationIdentityType type) {
        p.c(endpoint, "endpoint");
        p.c(type, "type");
        return new VerificationIdentity(endpoint, type);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VerificationIdentity)) {
            return false;
        }
        VerificationIdentity verificationIdentity = (VerificationIdentity) obj;
        return p.a((Object) this.endpoint, (Object) verificationIdentity.endpoint) && p.a(this.type, verificationIdentity.type);
    }

    public final String getEndpoint() {
        return this.endpoint;
    }

    public final VerificationIdentityType getType() {
        return this.type;
    }

    public final int hashCode() {
        String str = this.endpoint;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        VerificationIdentityType verificationIdentityType = this.type;
        if (verificationIdentityType != null) {
            i = verificationIdentityType.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "VerificationIdentity(endpoint=" + this.endpoint + ", type=" + this.type + ")";
    }
}
