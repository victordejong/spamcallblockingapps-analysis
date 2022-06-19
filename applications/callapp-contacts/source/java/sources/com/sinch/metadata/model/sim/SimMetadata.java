package com.sinch.metadata.model.sim;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u001e2\u00020\u0001:\u0002\u001d\u001eB=\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J'\u0010\u0017\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u001f"}, m4298d2 = {"Lcom/sinch/metadata/model/sim/SimMetadata;", "", "seen1", "", "countryId", "", "mcc", "mnc", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "countryId$annotations", "()V", "getCountryId", "()Ljava/lang/String;", "mcc$annotations", "getMcc", "mnc$annotations", "getMnc", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimMetadata.class */
public final class SimMetadata {
    public static final Companion Companion = new Companion(null);
    private final String countryId;
    private final String mcc;
    private final String mnc;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/metadata/model/sim/SimMetadata$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/sim/SimMetadata;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimMetadata$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SimMetadata> serializer() {
            return SimMetadata$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SimMetadata(int i, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.countryId = str;
            if ((i & 2) == 0) {
                throw new MissingFieldException("mcc");
            }
            this.mcc = str2;
            if ((i & 4) == 0) {
                throw new MissingFieldException("mnc");
            }
            this.mnc = str3;
            return;
        }
        throw new MissingFieldException("countryId");
    }

    public SimMetadata(String countryId, String mcc, String mnc) {
        C18524p.m3841c(countryId, "countryId");
        C18524p.m3841c(mcc, "mcc");
        C18524p.m3841c(mnc, "mnc");
        this.countryId = countryId;
        this.mcc = mcc;
        this.mnc = mnc;
    }

    public static /* synthetic */ SimMetadata copy$default(SimMetadata simMetadata, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = simMetadata.countryId;
        }
        if ((i & 2) != 0) {
            str2 = simMetadata.mcc;
        }
        if ((i & 4) != 0) {
            str3 = simMetadata.mnc;
        }
        return simMetadata.copy(str, str2, str3);
    }

    public static /* synthetic */ void countryId$annotations() {
    }

    public static /* synthetic */ void mcc$annotations() {
    }

    public static /* synthetic */ void mnc$annotations() {
    }

    public static final void write$Self(SimMetadata self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.countryId);
        output.encodeStringElement(serialDesc, 1, self.mcc);
        output.encodeStringElement(serialDesc, 2, self.mnc);
    }

    public final String component1() {
        return this.countryId;
    }

    public final String component2() {
        return this.mcc;
    }

    public final String component3() {
        return this.mnc;
    }

    public final SimMetadata copy(String countryId, String mcc, String mnc) {
        C18524p.m3841c(countryId, "countryId");
        C18524p.m3841c(mcc, "mcc");
        C18524p.m3841c(mnc, "mnc");
        return new SimMetadata(countryId, mcc, mnc);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SimMetadata)) {
                return false;
            }
            SimMetadata simMetadata = (SimMetadata) obj;
            return C18524p.m3850a((Object) this.countryId, (Object) simMetadata.countryId) && C18524p.m3850a((Object) this.mcc, (Object) simMetadata.mcc) && C18524p.m3850a((Object) this.mnc, (Object) simMetadata.mnc);
        }
        return true;
    }

    public final String getCountryId() {
        return this.countryId;
    }

    public final String getMcc() {
        return this.mcc;
    }

    public final String getMnc() {
        return this.mnc;
    }

    public final int hashCode() {
        String str = this.countryId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.mcc;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.mnc;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "SimMetadata(countryId=" + this.countryId + ", mcc=" + this.mcc + ", mnc=" + this.mnc + ")";
    }
}
