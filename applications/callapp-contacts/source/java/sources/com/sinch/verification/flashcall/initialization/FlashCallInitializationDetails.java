package com.sinch.verification.flashcall.initialization;

import com.sinch.verification.core.initiation.response.InitiationDetails;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.p572b.C20349an;
import kotlinx.serialization.p572b.C20377bk;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\b\u0087\b\u0018�� 42\u00020\u0001:\u000234Ba\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eBC\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\t\u0010%\u001a\u00020\u0005HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010'\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003JT\u0010+\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b \u0010\u001cR \u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\b!\u0010\u0011\u001a\u0004\b\"\u0010\u0018R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b#\u0010\u0011\u001a\u0004\b$\u0010\u0013¨\u00065"}, m4298d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "Lcom/sinch/verification/core/initiation/response/InitiationDetails;", "seen1", "", "cliFilter", "", "interceptionTimeoutApi", "", "reportTimeoutApi", "denyCallAfter", "cli", "subVerificationId", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V", "cli$annotations", "()V", "getCli", "()Ljava/lang/String;", "cliFilter$annotations", "getCliFilter", "denyCallAfter$annotations", "getDenyCallAfter", "()Ljava/lang/Long;", "Ljava/lang/Long;", "interceptionTimeout", "getInterceptionTimeout", "()J", "interceptionTimeoutApi$annotations", "getInterceptionTimeoutApi", "reportTimeout", "getReportTimeout", "reportTimeoutApi$annotations", "getReportTimeoutApi", "subVerificationId$annotations", "getSubVerificationId", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "equals", "", "other", "", "hashCode", "toString", "$serializer", "Companion", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails.class */
public final class FlashCallInitializationDetails implements InitiationDetails {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_INTERCEPTION_TIMEOUT = 15000;
    private final String cli;
    private final String cliFilter;
    private final Long denyCallAfter;
    private final Long interceptionTimeoutApi;
    private final Long reportTimeoutApi;
    private final String subVerificationId;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;", "", "()V", "DEFAULT_INTERCEPTION_TIMEOUT", "", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<FlashCallInitializationDetails> serializer() {
            return FlashCallInitializationDetails$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ FlashCallInitializationDetails(int i, String str, Long l, Long l2, Long l3, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.cliFilter = str;
            if ((i & 2) == 0) {
                throw new MissingFieldException("interceptionTimeout");
            }
            this.interceptionTimeoutApi = l;
            if ((i & 4) == 0) {
                throw new MissingFieldException("reportTimeout");
            }
            this.reportTimeoutApi = l2;
            if ((i & 8) == 0) {
                throw new MissingFieldException("denyCallAfter");
            }
            this.denyCallAfter = l3;
            if ((i & 16) != 0) {
                this.cli = str2;
            } else {
                this.cli = null;
            }
            if ((i & 32) != 0) {
                this.subVerificationId = str3;
                return;
            } else {
                this.subVerificationId = null;
                return;
            }
        }
        throw new MissingFieldException("cliFilter");
    }

    public FlashCallInitializationDetails(String cliFilter, Long l, Long l2, Long l3, String str, String str2) {
        C18524p.m3841c(cliFilter, "cliFilter");
        this.cliFilter = cliFilter;
        this.interceptionTimeoutApi = l;
        this.reportTimeoutApi = l2;
        this.denyCallAfter = l3;
        this.cli = str;
        this.subVerificationId = str2;
    }

    public /* synthetic */ FlashCallInitializationDetails(String str, Long l, Long l2, Long l3, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, l2, l3, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3);
    }

    public static /* synthetic */ void cli$annotations() {
    }

    public static /* synthetic */ void cliFilter$annotations() {
    }

    public static /* synthetic */ FlashCallInitializationDetails copy$default(FlashCallInitializationDetails flashCallInitializationDetails, String str, Long l, Long l2, Long l3, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flashCallInitializationDetails.cliFilter;
        }
        if ((i & 2) != 0) {
            l = flashCallInitializationDetails.interceptionTimeoutApi;
        }
        if ((i & 4) != 0) {
            l2 = flashCallInitializationDetails.reportTimeoutApi;
        }
        if ((i & 8) != 0) {
            l3 = flashCallInitializationDetails.denyCallAfter;
        }
        if ((i & 16) != 0) {
            str2 = flashCallInitializationDetails.cli;
        }
        if ((i & 32) != 0) {
            str3 = flashCallInitializationDetails.getSubVerificationId();
        }
        return flashCallInitializationDetails.copy(str, l, l2, l3, str2, str3);
    }

    public static /* synthetic */ void denyCallAfter$annotations() {
    }

    public static /* synthetic */ void interceptionTimeoutApi$annotations() {
    }

    public static /* synthetic */ void reportTimeoutApi$annotations() {
    }

    public static /* synthetic */ void subVerificationId$annotations() {
    }

    public static final void write$Self(FlashCallInitializationDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.cliFilter);
        output.encodeNullableSerializableElement(serialDesc, 1, C20349an.f66823a, self.interceptionTimeoutApi);
        output.encodeNullableSerializableElement(serialDesc, 2, C20349an.f66823a, self.reportTimeoutApi);
        output.encodeNullableSerializableElement(serialDesc, 3, C20349an.f66823a, self.denyCallAfter);
        if ((!C18524p.m3850a((Object) self.cli, (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 4)) {
            output.encodeNullableSerializableElement(serialDesc, 4, C20377bk.f66866a, self.cli);
        }
        if ((!C18524p.m3850a((Object) self.getSubVerificationId(), (Object) null)) || output.shouldEncodeElementDefault(serialDesc, 5)) {
            output.encodeNullableSerializableElement(serialDesc, 5, C20377bk.f66866a, self.getSubVerificationId());
        }
    }

    public final String component1() {
        return this.cliFilter;
    }

    public final Long component2() {
        return this.interceptionTimeoutApi;
    }

    public final Long component3() {
        return this.reportTimeoutApi;
    }

    public final Long component4() {
        return this.denyCallAfter;
    }

    public final String component5() {
        return this.cli;
    }

    public final String component6() {
        return getSubVerificationId();
    }

    public final FlashCallInitializationDetails copy(String cliFilter, Long l, Long l2, Long l3, String str, String str2) {
        C18524p.m3841c(cliFilter, "cliFilter");
        return new FlashCallInitializationDetails(cliFilter, l, l2, l3, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashCallInitializationDetails)) {
                return false;
            }
            FlashCallInitializationDetails flashCallInitializationDetails = (FlashCallInitializationDetails) obj;
            return C18524p.m3850a((Object) this.cliFilter, (Object) flashCallInitializationDetails.cliFilter) && C18524p.m3850a(this.interceptionTimeoutApi, flashCallInitializationDetails.interceptionTimeoutApi) && C18524p.m3850a(this.reportTimeoutApi, flashCallInitializationDetails.reportTimeoutApi) && C18524p.m3850a(this.denyCallAfter, flashCallInitializationDetails.denyCallAfter) && C18524p.m3850a((Object) this.cli, (Object) flashCallInitializationDetails.cli) && C18524p.m3850a((Object) getSubVerificationId(), (Object) flashCallInitializationDetails.getSubVerificationId());
        }
        return true;
    }

    public final String getCli() {
        return this.cli;
    }

    public final String getCliFilter() {
        return this.cliFilter;
    }

    public final Long getDenyCallAfter() {
        return this.denyCallAfter;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public final long getInterceptionTimeout() {
        Long l = this.interceptionTimeoutApi;
        char longValue = l != null ? l.longValue() * 1000 : (char) 0;
        return longValue > 0 ? longValue : DEFAULT_INTERCEPTION_TIMEOUT;
    }

    public final Long getInterceptionTimeoutApi() {
        return this.interceptionTimeoutApi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    public final long getReportTimeout() {
        long interceptionTimeout = getInterceptionTimeout();
        Long l = this.reportTimeoutApi;
        return Math.max(interceptionTimeout, (l != null ? l.longValue() * 1000 : false) == true ? 1L : 0L);
    }

    public final Long getReportTimeoutApi() {
        return this.reportTimeoutApi;
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationDetails
    public final String getSubVerificationId() {
        return this.subVerificationId;
    }

    public final int hashCode() {
        String str = this.cliFilter;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Long l = this.interceptionTimeoutApi;
        int hashCode2 = l != null ? l.hashCode() : 0;
        Long l2 = this.reportTimeoutApi;
        int hashCode3 = l2 != null ? l2.hashCode() : 0;
        Long l3 = this.denyCallAfter;
        int hashCode4 = l3 != null ? l3.hashCode() : 0;
        String str2 = this.cli;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String subVerificationId = getSubVerificationId();
        if (subVerificationId != null) {
            i = subVerificationId.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public final String toString() {
        return "FlashCallInitializationDetails(cliFilter=" + this.cliFilter + ", interceptionTimeoutApi=" + this.interceptionTimeoutApi + ", reportTimeoutApi=" + this.reportTimeoutApi + ", denyCallAfter=" + this.denyCallAfter + ", cli=" + this.cli + ", subVerificationId=" + getSubVerificationId() + ")";
    }
}
