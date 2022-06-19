package com.callapp.contacts.model.call;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.framework.phone.Phone;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/call/CallData.class */
public class CallData implements Serializable {
    private static final long serialVersionUID = 8943522157501840952L;
    private boolean callAnswered;
    private String callId;
    private boolean callWaiting;
    private boolean isBlocked;
    private boolean isConferenceManager;
    private final boolean isIncoming;
    private boolean isVoiceMail;
    private boolean markedAsIncognito;
    private boolean missedCall;
    private final Phone number;
    private CallState oldState;
    private final SimManager.SimId simId;
    private CallState state;
    private long talkingStartTime;
    private int verificationStatus;

    public CallData(CallState callState) {
        this(null, callState, null);
    }

    public CallData(Phone phone, SimManager.SimId simId, CallState callState, Boolean bool) {
        this.talkingStartTime = 0L;
        this.callWaiting = false;
        this.missedCall = false;
        this.callAnswered = false;
        this.isBlocked = false;
        this.isVoiceMail = false;
        this.isConferenceManager = false;
        this.markedAsIncognito = false;
        this.verificationStatus = 0;
        this.number = phone;
        setState(callState);
        this.simId = simId;
        if (bool == null) {
            this.isIncoming = false;
        } else {
            this.isIncoming = bool.booleanValue();
        }
    }

    public CallData(Phone phone, CallState callState, Boolean bool) {
        this(phone, null, callState, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallData)) {
            return false;
        }
        CallData callData = (CallData) obj;
        if (callData.simId != this.simId) {
            return false;
        }
        Phone phone = this.number;
        return phone == null ? callData.number == null && getState() == callData.getState() : phone.equals(callData.number) && getState() == callData.getState();
    }

    public String getCallId() {
        return this.callId;
    }

    public boolean getMarkAsIncognito() {
        return this.markedAsIncognito;
    }

    public Phone getNumber() {
        return this.number;
    }

    public CallState getOldState() {
        CallState callState = this.oldState;
        CallState callState2 = callState;
        if (callState == null) {
            callState2 = this.state;
        }
        return callState2;
    }

    public SimManager.SimId getSimId() {
        return this.simId;
    }

    public CallState getState() {
        return this.state;
    }

    public long getTalkingStartTime() {
        return this.talkingStartTime;
    }

    public int getVerificationStatus() {
        return this.verificationStatus;
    }

    public int hashCode() {
        Phone phone = this.number;
        if (phone == null) {
            phone = Phone.f29662b;
        }
        int hashCode = phone.hashCode();
        int hashCode2 = getState().hashCode();
        SimManager.SimId simId = this.simId;
        return (((hashCode * 31) + hashCode2) * 31) + (simId != null ? simId.hashCode() : 0);
    }

    public boolean isBlocked() {
        return this.isBlocked;
    }

    public Boolean isCallAnswered() {
        return Boolean.valueOf(this.callAnswered);
    }

    public boolean isCallWaiting() {
        return this.callWaiting;
    }

    public boolean isConferenceManager() {
        return this.isConferenceManager;
    }

    public boolean isIncoming() {
        return this.isIncoming;
    }

    public Boolean isMissedCall() {
        return Boolean.valueOf(!this.callAnswered && this.missedCall);
    }

    public boolean isVoiceMail() {
        return this.isVoiceMail;
    }

    public void setBlocked(boolean z) {
        this.isBlocked = z;
    }

    public void setCallId(String str) {
        this.callId = str;
    }

    public void setCallWaiting(boolean z) {
        this.callWaiting = z;
    }

    public void setConferenceManager(boolean z) {
        this.isConferenceManager = z;
    }

    public void setIsVoiceMail(boolean z) {
        this.isVoiceMail = z;
    }

    public void setMarkedAsIncognito(boolean z) {
        this.markedAsIncognito = z;
    }

    public void setState(CallState callState) {
        CallState callState2 = this.state;
        if (callState2 != callState) {
            this.oldState = callState2;
            if (callState == CallState.TALKING) {
                if (this.talkingStartTime == 0) {
                    this.talkingStartTime = System.currentTimeMillis();
                }
                this.callAnswered = true;
                this.missedCall = false;
            } else if (this.state == CallState.RINGING_INCOMING && callState == CallState.POST_CALL) {
                this.missedCall = true;
            }
            this.state = callState;
        }
    }

    public void setVerificationStatus(int i) {
        this.verificationStatus = i;
    }

    public String toString() {
        return "CallData{talkingStartTime=" + this.talkingStartTime + ", number=" + this.number + ", state=" + this.state + ", callWaiting=" + this.callWaiting + ", isIncoming=" + this.isIncoming + ", missedCall=" + this.missedCall + ", callAnswered=" + this.callAnswered + ", isBlocked=" + this.isBlocked + ", isVoiceMail=" + this.isVoiceMail + ", isConferenceManager=" + this.isConferenceManager + ", simId=" + this.simId + ", markedAsIncognito=" + this.markedAsIncognito + ", callId='" + this.callId + "', oldState=" + this.oldState + ", verificationStatus=" + this.verificationStatus + '}';
    }
}
