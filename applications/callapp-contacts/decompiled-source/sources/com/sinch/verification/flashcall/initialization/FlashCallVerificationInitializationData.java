package com.sinch.verification.flashcall.initialization;

import com.mopub.common.AdType;
import com.sinch.metadata.model.PhoneMetadata;
import com.sinch.metadata.model.PhoneMetadata$$serializer;
import com.sinch.verification.core.initiation.VerificationIdentity;
import com.sinch.verification.core.initiation.VerificationIdentity$$serializer;
import com.sinch.verification.core.initiation.VerificationInitiationData;
import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.b.bk;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010��\n\u0002\b\u0005\b\u0087\b\u0018�� 12\u00020\u0001:\u000201B_\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011B3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\fHÆ\u0003JA\u0010*\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0013\u0010+\u001a\u00020\u00072\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\tHÖ\u0001R\u001e\u0010\b\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010\r\u001a\u00020\u000e8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b \u0010\u0014\u001a\u0004\b!\u0010\"R\u001e\u0010\n\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010\u0016¨\u00062"}, d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "Lcom/sinch/verification/core/initiation/VerificationInitiationData;", "seen1", "", "identity", "Lcom/sinch/verification/core/initiation/VerificationIdentity;", "honourEarlyReject", "", AdType.CUSTOM, "", "reference", "metadata", "Lcom/sinch/metadata/model/PhoneMetadata;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)V", "custom$annotations", "()V", "getCustom", "()Ljava/lang/String;", "honourEarlyReject$annotations", "getHonourEarlyReject", "()Z", "identity$annotations", "getIdentity", "()Lcom/sinch/verification/core/initiation/VerificationIdentity;", "metadata$annotations", "getMetadata", "()Lcom/sinch/metadata/model/PhoneMetadata;", "method$annotations", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "reference$annotations", "getReference", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "toString", "$serializer", "Companion", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData.class */
public final class FlashCallVerificationInitializationData implements VerificationInitiationData {
    public static final Companion Companion = new Companion(null);
    private final String custom;
    private final boolean honourEarlyReject;
    private final VerificationIdentity identity;
    private final PhoneMetadata metadata;
    private final VerificationMethodType method;
    private final String reference;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallVerificationInitializationData> serializer() {
            return FlashCallVerificationInitializationData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallVerificationInitializationData(int i, VerificationIdentity verificationIdentity, boolean z, String str, String str2, PhoneMetadata phoneMetadata, VerificationMethodType verificationMethodType, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.identity = verificationIdentity;
            if ((i & 2) != 0) {
                this.honourEarlyReject = z;
                if ((i & 4) != 0) {
                    this.custom = str;
                    if ((i & 8) != 0) {
                        this.reference = str2;
                        if ((i & 16) != 0) {
                            this.metadata = phoneMetadata;
                            if ((i & 32) != 0) {
                                this.method = verificationMethodType;
                            } else {
                                this.method = VerificationMethodType.FLASHCALL;
                            }
                        } else {
                            throw new MissingFieldException("metadata");
                        }
                    } else {
                        throw new MissingFieldException("reference");
                    }
                } else {
                    throw new MissingFieldException(AdType.CUSTOM);
                }
            } else {
                throw new MissingFieldException("honourEarlyReject");
            }
        } else {
            throw new MissingFieldException("identity");
        }
    }

    public FlashCallVerificationInitializationData(VerificationIdentity identity, boolean z, String str, String str2, PhoneMetadata phoneMetadata) {
        p.c(identity, "identity");
        this.identity = identity;
        this.honourEarlyReject = z;
        this.custom = str;
        this.reference = str2;
        this.metadata = phoneMetadata;
        this.method = VerificationMethodType.FLASHCALL;
    }

    public static /* synthetic */ FlashCallVerificationInitializationData copy$default(FlashCallVerificationInitializationData flashCallVerificationInitializationData, VerificationIdentity verificationIdentity, boolean z, String str, String str2, PhoneMetadata phoneMetadata, int i, Object obj) {
        if ((i & 1) != 0) {
            verificationIdentity = flashCallVerificationInitializationData.getIdentity();
        }
        if ((i & 2) != 0) {
            z = flashCallVerificationInitializationData.getHonourEarlyReject();
        }
        if ((i & 4) != 0) {
            str = flashCallVerificationInitializationData.getCustom();
        }
        if ((i & 8) != 0) {
            str2 = flashCallVerificationInitializationData.getReference();
        }
        if ((i & 16) != 0) {
            phoneMetadata = flashCallVerificationInitializationData.getMetadata();
        }
        return flashCallVerificationInitializationData.copy(verificationIdentity, z, str, str2, phoneMetadata);
    }

    public static /* synthetic */ void custom$annotations() {
    }

    public static /* synthetic */ void honourEarlyReject$annotations() {
    }

    public static /* synthetic */ void identity$annotations() {
    }

    public static /* synthetic */ void metadata$annotations() {
    }

    public static /* synthetic */ void method$annotations() {
    }

    public static /* synthetic */ void reference$annotations() {
    }

    public static final void write$Self(FlashCallVerificationInitializationData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, VerificationIdentity$$serializer.INSTANCE, self.getIdentity());
        output.encodeBooleanElement(serialDesc, 1, self.getHonourEarlyReject());
        output.encodeNullableSerializableElement(serialDesc, 2, bk.f38928a, self.getCustom());
        output.encodeNullableSerializableElement(serialDesc, 3, bk.f38928a, self.getReference());
        output.encodeNullableSerializableElement(serialDesc, 4, PhoneMetadata$$serializer.INSTANCE, self.getMetadata());
        if ((!p.a(self.getMethod(), VerificationMethodType.FLASHCALL)) || output.shouldEncodeElementDefault(serialDesc, 5)) {
            output.encodeSerializableElement(serialDesc, 5, VerificationMethodType.Companion, self.getMethod());
        }
    }

    public final VerificationIdentity component1() {
        return getIdentity();
    }

    public final boolean component2() {
        return getHonourEarlyReject();
    }

    public final String component3() {
        return getCustom();
    }

    public final String component4() {
        return getReference();
    }

    public final PhoneMetadata component5() {
        return getMetadata();
    }

    public final FlashCallVerificationInitializationData copy(VerificationIdentity identity, boolean z, String str, String str2, PhoneMetadata phoneMetadata) {
        p.c(identity, "identity");
        return new FlashCallVerificationInitializationData(identity, z, str, str2, phoneMetadata);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlashCallVerificationInitializationData)) {
            return false;
        }
        FlashCallVerificationInitializationData flashCallVerificationInitializationData = (FlashCallVerificationInitializationData) obj;
        return p.a(getIdentity(), flashCallVerificationInitializationData.getIdentity()) && getHonourEarlyReject() == flashCallVerificationInitializationData.getHonourEarlyReject() && p.a((Object) getCustom(), (Object) flashCallVerificationInitializationData.getCustom()) && p.a((Object) getReference(), (Object) flashCallVerificationInitializationData.getReference()) && p.a(getMetadata(), flashCallVerificationInitializationData.getMetadata());
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final String getCustom() {
        return this.custom;
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final boolean getHonourEarlyReject() {
        return this.honourEarlyReject;
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final VerificationIdentity getIdentity() {
        return this.identity;
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final PhoneMetadata getMetadata() {
        return this.metadata;
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final VerificationMethodType getMethod() {
        return this.method;
    }

    @Override // com.sinch.verification.core.initiation.VerificationInitiationData
    public final String getReference() {
        return this.reference;
    }

    public final int hashCode() {
        VerificationIdentity identity = getIdentity();
        int i = 0;
        int hashCode = identity != null ? identity.hashCode() : 0;
        boolean honourEarlyReject = getHonourEarlyReject();
        int i2 = honourEarlyReject;
        if (honourEarlyReject) {
            i2 = 1;
        }
        String custom = getCustom();
        int hashCode2 = custom != null ? custom.hashCode() : 0;
        String reference = getReference();
        int hashCode3 = reference != null ? reference.hashCode() : 0;
        PhoneMetadata metadata = getMetadata();
        if (metadata != null) {
            i = metadata.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public final String toString() {
        return "FlashCallVerificationInitializationData(identity=" + getIdentity() + ", honourEarlyReject=" + getHonourEarlyReject() + ", custom=" + getCustom() + ", reference=" + getReference() + ", metadata=" + getMetadata() + ")";
    }
}
