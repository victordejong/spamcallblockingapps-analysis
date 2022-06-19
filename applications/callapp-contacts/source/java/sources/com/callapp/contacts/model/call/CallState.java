package com.callapp.contacts.model.call;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/call/CallState.class */
public enum CallState {
    NO_CALLS,
    RINGING_INCOMING,
    RINGING_OUTGOING,
    TALKING,
    ON_HOLD,
    ON_CONFERENCE,
    CONNECTING,
    DISCONNECTED,
    PRE_CALL,
    POST_CALL;

    public final boolean isConnectingOrConnected() {
        return this == TALKING || this == RINGING_OUTGOING || this == RINGING_INCOMING;
    }

    public final boolean isConnectingOrOutgoing() {
        return this == CONNECTING || this == RINGING_OUTGOING;
    }

    public final boolean isDisconnected() {
        return this == DISCONNECTED;
    }

    public final boolean isIdle() {
        return this == PRE_CALL || this == POST_CALL || this == DISCONNECTED;
    }

    public final boolean isIncoming() {
        return this == RINGING_INCOMING;
    }

    public final boolean isOnHold() {
        return this == ON_HOLD;
    }

    public final boolean isOutgoing() {
        return this == RINGING_OUTGOING;
    }

    public final boolean isPostCall() {
        return this == POST_CALL;
    }

    public final boolean isPreCall() {
        return this == PRE_CALL;
    }

    public final boolean isRinging() {
        return this == RINGING_INCOMING || this == RINGING_OUTGOING;
    }

    public final boolean isTalking() {
        return this == TALKING;
    }
}
