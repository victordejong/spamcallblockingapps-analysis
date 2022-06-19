package com.sinch.metadata.model.sim;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\r\b\u0087\u0001\u0018�� \u000f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0002\u000e\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u0010"}, m4298d2 = {"Lcom/sinch/metadata/model/sim/SimState;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "UNKNOWN", "ABSENT", "PIN_REQUIRED", "PUK_REQUIRED", "NETWORK_LOCKED", "READY", "INVALID", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimState.class */
public enum SimState {
    UNKNOWN("SIM_STATE_UNKNOWN"),
    ABSENT("SIM_STATE_ABSENT"),
    PIN_REQUIRED("SIM_STATE_PIN_REQUIRED"),
    PUK_REQUIRED("SIM_STATE_PUK_REQUIRED"),
    NETWORK_LOCKED("SIM_STATE_NETWORK_LOCKED"),
    READY("SIM_STATE_READY"),
    INVALID("SIM_STATE_INVALID");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bHÆ\u0001¨\u0006\f"}, m4298d2 = {"Lcom/sinch/metadata/model/sim/SimState$Companion;", "", "()V", "basedOn", "Lcom/sinch/metadata/model/sim/SimState;", "telephonySimState", "", "forKey", "value", "", "serializer", "Lkotlinx/serialization/KSerializer;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/SimState$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SimState basedOn(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? SimState.INVALID : SimState.READY : SimState.NETWORK_LOCKED : SimState.PUK_REQUIRED : SimState.PIN_REQUIRED : SimState.ABSENT : SimState.UNKNOWN;
        }

        public final SimState forKey(String value) {
            SimState[] values;
            C18524p.m3841c(value, "value");
            for (SimState simState : SimState.values()) {
                if (C18524p.m3850a((Object) simState.getValue(), (Object) value)) {
                    return simState;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        public final KSerializer<SimState> serializer() {
            return SimState$$serializer.INSTANCE;
        }
    }

    SimState(String str) {
        this.value = str;
    }

    public static final SimState forKey(String str) {
        return Companion.forKey(str);
    }

    public final String getValue() {
        return this.value;
    }
}
