package com.sinch.verification.core.verification.response;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.VerificationStatus;
import com.sinch.verification.core.internal.VerificationStatus$$serializer;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.core.verification.model.VerificationSourceType$$serializer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.b.bk;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� 02\u00020\u0001:\u0002/0Ba\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BA\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003JK\u0010)\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\t\u0010.\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b \u0010\u0013\u001a\u0004\b!\u0010\"¨\u00061"}, d2 = {"Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "", "seen1", "", "id", "", Payload.SOURCE, "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "status", "Lcom/sinch/verification/core/internal/VerificationStatus;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "errorReason", "reference", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)V", "errorReason$annotations", "()V", "getErrorReason", "()Ljava/lang/String;", "id$annotations", "getId", "method$annotations", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "reference$annotations", "getReference", "source$annotations", "getSource", "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "status$annotations", "getStatus", "()Lcom/sinch/verification/core/internal/VerificationStatus;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/VerificationResponseData.class */
public final class VerificationResponseData {
    public static final Companion Companion = new Companion(null);
    private final String errorReason;
    private final String id;
    private final VerificationMethodType method;
    private final String reference;
    private final VerificationSourceType source;
    private final VerificationStatus status;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/VerificationResponseData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<VerificationResponseData> serializer() {
            return VerificationResponseData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ VerificationResponseData(int i, String str, VerificationSourceType verificationSourceType, VerificationStatus verificationStatus, VerificationMethodType verificationMethodType, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.id = str;
            if ((i & 2) != 0) {
                this.source = verificationSourceType;
            } else {
                this.source = null;
            }
            if ((i & 4) != 0) {
                this.status = verificationStatus;
                if ((i & 8) != 0) {
                    this.method = verificationMethodType;
                    if ((i & 16) != 0) {
                        this.errorReason = str2;
                    } else {
                        this.errorReason = null;
                    }
                    if ((i & 32) != 0) {
                        this.reference = str3;
                    } else {
                        this.reference = null;
                    }
                } else {
                    throw new MissingFieldException("method");
                }
            } else {
                throw new MissingFieldException("status");
            }
        } else {
            throw new MissingFieldException("id");
        }
    }

    public VerificationResponseData(String id, VerificationSourceType verificationSourceType, VerificationStatus status, VerificationMethodType method, String str, String str2) {
        p.c(id, "id");
        p.c(status, "status");
        p.c(method, "method");
        this.id = id;
        this.source = verificationSourceType;
        this.status = status;
        this.method = method;
        this.errorReason = str;
        this.reference = str2;
    }

    public /* synthetic */ VerificationResponseData(String str, VerificationSourceType verificationSourceType, VerificationStatus verificationStatus, VerificationMethodType verificationMethodType, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : verificationSourceType, verificationStatus, verificationMethodType, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3);
    }

    public static /* synthetic */ VerificationResponseData copy$default(VerificationResponseData verificationResponseData, String str, VerificationSourceType verificationSourceType, VerificationStatus verificationStatus, VerificationMethodType verificationMethodType, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verificationResponseData.id;
        }
        if ((i & 2) != 0) {
            verificationSourceType = verificationResponseData.source;
        }
        if ((i & 4) != 0) {
            verificationStatus = verificationResponseData.status;
        }
        if ((i & 8) != 0) {
            verificationMethodType = verificationResponseData.method;
        }
        if ((i & 16) != 0) {
            str2 = verificationResponseData.errorReason;
        }
        if ((i & 32) != 0) {
            str3 = verificationResponseData.reference;
        }
        return verificationResponseData.copy(str, verificationSourceType, verificationStatus, verificationMethodType, str2, str3);
    }

    public static /* synthetic */ void errorReason$annotations() {
    }

    public static /* synthetic */ void id$annotations() {
    }

    public static /* synthetic */ void method$annotations() {
    }

    public static /* synthetic */ void reference$annotations() {
    }

    public static /* synthetic */ void source$annotations() {
    }

    public static /* synthetic */ void status$annotations() {
    }

    public static final void write$Self(VerificationResponseData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.id);
        if ((!p.a(self.source, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 1)) {
            output.encodeNullableSerializableElement(serialDesc, 1, VerificationSourceType$$serializer.INSTANCE, self.source);
        }
        output.encodeSerializableElement(serialDesc, 2, VerificationStatus$$serializer.INSTANCE, self.status);
        output.encodeSerializableElement(serialDesc, 3, VerificationMethodType.Companion, self.method);
        if ((!p.a((Object) self.errorReason, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 4)) {
            output.encodeNullableSerializableElement(serialDesc, 4, bk.f38928a, self.errorReason);
        }
        if ((!p.a((Object) self.reference, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 5)) {
            output.encodeNullableSerializableElement(serialDesc, 5, bk.f38928a, self.reference);
        }
    }

    public final String component1() {
        return this.id;
    }

    public final VerificationSourceType component2() {
        return this.source;
    }

    public final VerificationStatus component3() {
        return this.status;
    }

    public final VerificationMethodType component4() {
        return this.method;
    }

    public final String component5() {
        return this.errorReason;
    }

    public final String component6() {
        return this.reference;
    }

    public final VerificationResponseData copy(String id, VerificationSourceType verificationSourceType, VerificationStatus status, VerificationMethodType method, String str, String str2) {
        p.c(id, "id");
        p.c(status, "status");
        p.c(method, "method");
        return new VerificationResponseData(id, verificationSourceType, status, method, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VerificationResponseData)) {
            return false;
        }
        VerificationResponseData verificationResponseData = (VerificationResponseData) obj;
        return p.a((Object) this.id, (Object) verificationResponseData.id) && p.a(this.source, verificationResponseData.source) && p.a(this.status, verificationResponseData.status) && p.a(this.method, verificationResponseData.method) && p.a((Object) this.errorReason, (Object) verificationResponseData.errorReason) && p.a((Object) this.reference, (Object) verificationResponseData.reference);
    }

    public final String getErrorReason() {
        return this.errorReason;
    }

    public final String getId() {
        return this.id;
    }

    public final VerificationMethodType getMethod() {
        return this.method;
    }

    public final String getReference() {
        return this.reference;
    }

    public final VerificationSourceType getSource() {
        return this.source;
    }

    public final VerificationStatus getStatus() {
        return this.status;
    }

    public final int hashCode() {
        String str = this.id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        VerificationSourceType verificationSourceType = this.source;
        int hashCode2 = verificationSourceType != null ? verificationSourceType.hashCode() : 0;
        VerificationStatus verificationStatus = this.status;
        int hashCode3 = verificationStatus != null ? verificationStatus.hashCode() : 0;
        VerificationMethodType verificationMethodType = this.method;
        int hashCode4 = verificationMethodType != null ? verificationMethodType.hashCode() : 0;
        String str2 = this.errorReason;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.reference;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public final String toString() {
        return "VerificationResponseData(id=" + this.id + ", source=" + this.source + ", status=" + this.status + ", method=" + this.method + ", errorReason=" + this.errorReason + ", reference=" + this.reference + ")";
    }
}
