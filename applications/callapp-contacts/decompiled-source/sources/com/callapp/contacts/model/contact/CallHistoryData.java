package com.callapp.contacts.model.contact;

import com.callapp.contacts.manager.sim.SimManager;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/CallHistoryData.class */
public class CallHistoryData implements Serializable {
    private final long callId;
    private final int callType;
    private final long duration;
    private final Date lastCallTimeStamp;
    private SimManager.SimId simId;

    public CallHistoryData(long j, Date date, int i, long j2, SimManager.SimId simId) {
        this.callId = j;
        this.callType = i;
        this.lastCallTimeStamp = date;
        this.duration = j2;
        this.simId = simId;
    }

    public SimManager.SimId getCallHistorySimId() {
        return this.simId;
    }

    public long getCallId() {
        return this.callId;
    }

    public int getCallType() {
        return this.callType;
    }

    public long getDuration() {
        return this.duration;
    }

    public Date getLastCallTimeStamp() {
        return this.lastCallTimeStamp;
    }
}
