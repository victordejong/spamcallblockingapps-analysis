package com.truecaller.analytics.call;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fR\u0013\u0010\u0003\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0005\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/analytics/call/CallDirection;", "", "", "isOutgoing", "()Z", "isIncoming", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "INCOMING", "OUTGOING", "analytics-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/call/CallDirection.class */
public enum CallDirection {
    INCOMING("incoming"),
    OUTGOING("outgoing");
    
    private final String value;

    CallDirection(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean isIncoming() {
        return this == INCOMING;
    }

    public final boolean isOutgoing() {
        return this == OUTGOING;
    }
}
