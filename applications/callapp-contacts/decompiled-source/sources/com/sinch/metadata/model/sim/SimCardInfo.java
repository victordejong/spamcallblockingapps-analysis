package com.sinch.metadata.model.sim;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� \u001d2\u00020\u0001:\u0002\u001c\u001dB1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0017\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u001f\u0010\u0015\u001a\u00020��2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/sinch/metadata/model/sim/SimCardInfo;", "", "seen1", "", "simData", "Lcom/sinch/metadata/model/sim/SimMetadata;", "operatorData", "Lcom/sinch/metadata/model/sim/OperatorInfo;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILcom/sinch/metadata/model/sim/SimMetadata;Lcom/sinch/metadata/model/sim/OperatorInfo;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Lcom/sinch/metadata/model/sim/SimMetadata;Lcom/sinch/metadata/model/sim/OperatorInfo;)V", "operatorData$annotations", "()V", "getOperatorData", "()Lcom/sinch/metadata/model/sim/OperatorInfo;", "simData$annotations", "getSimData", "()Lcom/sinch/metadata/model/sim/SimMetadata;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "$serializer", "Companion", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimCardInfo.class */
public final class SimCardInfo {
    public static final Companion Companion = new Companion(null);
    private final OperatorInfo operatorData;
    private final SimMetadata simData;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/metadata/model/sim/SimCardInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/sim/SimCardInfo;", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimCardInfo$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SimCardInfo> serializer() {
            return SimCardInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SimCardInfo(int i, SimMetadata simMetadata, OperatorInfo operatorInfo, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.simData = simMetadata;
            if ((i & 2) != 0) {
                this.operatorData = operatorInfo;
                return;
            }
            throw new MissingFieldException("operator");
        }
        throw new MissingFieldException("sim");
    }

    public SimCardInfo(SimMetadata simMetadata, OperatorInfo operatorData) {
        p.c(operatorData, "operatorData");
        this.simData = simMetadata;
        this.operatorData = operatorData;
    }

    public static /* synthetic */ SimCardInfo copy$default(SimCardInfo simCardInfo, SimMetadata simMetadata, OperatorInfo operatorInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            simMetadata = simCardInfo.simData;
        }
        if ((i & 2) != 0) {
            operatorInfo = simCardInfo.operatorData;
        }
        return simCardInfo.copy(simMetadata, operatorInfo);
    }

    public static /* synthetic */ void operatorData$annotations() {
    }

    public static /* synthetic */ void simData$annotations() {
    }

    public static final void write$Self(SimCardInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeNullableSerializableElement(serialDesc, 0, SimMetadata$$serializer.INSTANCE, self.simData);
        output.encodeSerializableElement(serialDesc, 1, OperatorInfo$$serializer.INSTANCE, self.operatorData);
    }

    public final SimMetadata component1() {
        return this.simData;
    }

    public final OperatorInfo component2() {
        return this.operatorData;
    }

    public final SimCardInfo copy(SimMetadata simMetadata, OperatorInfo operatorData) {
        p.c(operatorData, "operatorData");
        return new SimCardInfo(simMetadata, operatorData);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimCardInfo)) {
            return false;
        }
        SimCardInfo simCardInfo = (SimCardInfo) obj;
        return p.a(this.simData, simCardInfo.simData) && p.a(this.operatorData, simCardInfo.operatorData);
    }

    public final OperatorInfo getOperatorData() {
        return this.operatorData;
    }

    public final SimMetadata getSimData() {
        return this.simData;
    }

    public final int hashCode() {
        SimMetadata simMetadata = this.simData;
        int i = 0;
        int hashCode = simMetadata != null ? simMetadata.hashCode() : 0;
        OperatorInfo operatorInfo = this.operatorData;
        if (operatorInfo != null) {
            i = operatorInfo.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "SimCardInfo(simData=" + this.simData + ", operatorData=" + this.operatorData + ")";
    }
}
