package com.truecaller.voip.util;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u001b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/truecaller/voip/util/VoipAnalyticsState;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "INITIATED", "CONNECTING", "CONNECTED", "WAKE_UP_SENT", "WAKE_UP_RECEIVED", "INIT_FAILED", "INVITED", "BUSY", "BLOCKED", "RINGING", "FAILED", "ACCEPTED", "REJECTED", "ON_HOLD", "RESUMED", "CANCELLED", "END", "RECONNECTING", "RECONNECTED", "DISCONNECTED", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/util/VoipAnalyticsState.class */
public enum VoipAnalyticsState {
    INITIATED("Initiated"),
    CONNECTING("Connecting"),
    CONNECTED("Connected"),
    WAKE_UP_SENT("WakeUpSent"),
    WAKE_UP_RECEIVED("WakeUpReceived"),
    INIT_FAILED("InitFailed"),
    INVITED("Invited"),
    BUSY("Busy"),
    BLOCKED("Blocked"),
    RINGING("Ringing"),
    FAILED("Failed"),
    ACCEPTED("Accepted"),
    REJECTED("Rejected"),
    ON_HOLD("OnHold"),
    RESUMED("Resumed"),
    CANCELLED("Cancelled"),
    END("End"),
    RECONNECTING("Reconnecting"),
    RECONNECTED("Reconnected"),
    DISCONNECTED("Disconnected");
    
    private final String value;

    VoipAnalyticsState(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
