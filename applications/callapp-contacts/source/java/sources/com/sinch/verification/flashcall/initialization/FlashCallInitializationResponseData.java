package com.sinch.verification.flashcall.initialization;

import com.sinch.verification.core.initiation.response.InitiationResponseData;
import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\b\u0087\b\u0018�� \"2\u00020\u0001:\u0002!\"B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u001d\u0010\u001a\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00148\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u0017¨\u0006#"}, m4298d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "seen1", "", "id", "", "details", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)V", "details$annotations", "()V", "getDetails", "()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "id$annotations", "getId", "()Ljava/lang/String;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "method$annotations", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "$serializer", "Companion", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData.class */
public final class FlashCallInitializationResponseData implements InitiationResponseData {
    public static final Companion Companion = new Companion(null);
    private final FlashCallInitializationDetails details;

    /* renamed from: id */
    private final String f60701id;
    private final VerificationMethodType method;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallInitializationResponseData> serializer() {
            return FlashCallInitializationResponseData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallInitializationResponseData(int i, String str, FlashCallInitializationDetails flashCallInitializationDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.f60701id = str;
            if ((i & 2) == 0) {
                throw new MissingFieldException("flashCall");
            }
            this.details = flashCallInitializationDetails;
            this.method = VerificationMethodType.FLASHCALL;
            return;
        }
        throw new MissingFieldException("id");
    }

    public FlashCallInitializationResponseData(String id, FlashCallInitializationDetails details) {
        C18524p.m3841c(id, "id");
        C18524p.m3841c(details, "details");
        this.f60701id = id;
        this.details = details;
        this.method = VerificationMethodType.FLASHCALL;
    }

    public static /* synthetic */ FlashCallInitializationResponseData copy$default(FlashCallInitializationResponseData flashCallInitializationResponseData, String str, FlashCallInitializationDetails flashCallInitializationDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashCallInitializationResponseData.getId();
        }
        if ((i & 2) != 0) {
            flashCallInitializationDetails = flashCallInitializationResponseData.details;
        }
        return flashCallInitializationResponseData.copy(str, flashCallInitializationDetails);
    }

    public static /* synthetic */ void details$annotations() {
    }

    public static /* synthetic */ void id$annotations() {
    }

    public static /* synthetic */ void method$annotations() {
    }

    public static final void write$Self(FlashCallInitializationResponseData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.getId());
        output.encodeSerializableElement(serialDesc, 1, FlashCallInitializationDetails$$serializer.INSTANCE, self.details);
    }

    public final String component1() {
        return getId();
    }

    public final FlashCallInitializationDetails component2() {
        return this.details;
    }

    public final FlashCallInitializationResponseData copy(String id, FlashCallInitializationDetails details) {
        C18524p.m3841c(id, "id");
        C18524p.m3841c(details, "details");
        return new FlashCallInitializationResponseData(id, details);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashCallInitializationResponseData)) {
                return false;
            }
            FlashCallInitializationResponseData flashCallInitializationResponseData = (FlashCallInitializationResponseData) obj;
            return C18524p.m3850a((Object) getId(), (Object) flashCallInitializationResponseData.getId()) && C18524p.m3850a(this.details, flashCallInitializationResponseData.details);
        }
        return true;
    }

    public final FlashCallInitializationDetails getDetails() {
        return this.details;
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationResponseData
    public final String getId() {
        return this.f60701id;
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationResponseData
    public final VerificationMethodType getMethod() {
        return this.method;
    }

    public final int hashCode() {
        String id = getId();
        int i = 0;
        int hashCode = id != null ? id.hashCode() : 0;
        FlashCallInitializationDetails flashCallInitializationDetails = this.details;
        if (flashCallInitializationDetails != null) {
            i = flashCallInitializationDetails.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "FlashCallInitializationResponseData(id=" + getId() + ", details=" + this.details + ")";
    }
}
