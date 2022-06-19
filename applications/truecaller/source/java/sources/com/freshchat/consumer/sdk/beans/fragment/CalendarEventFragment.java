package com.freshchat.consumer.sdk.beans.fragment;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment.class */
public class CalendarEventFragment extends MessageFragment {
    private long endMillis;
    private String eventId;
    private int eventProviderType;
    private Set<Long> participantIds;
    private long startMillis;
    private String userTimeZone;

    public CalendarEventFragment() {
        super(FragmentType.CALENDAR_EVENT.asInt());
    }

    public long getEndMillis() {
        return this.endMillis;
    }

    public String getEventId() {
        return this.eventId;
    }

    public int getEventProviderType() {
        return this.eventProviderType;
    }

    public Set<Long> getParticipantIds() {
        return this.participantIds;
    }

    public long getStartMillis() {
        return this.startMillis;
    }

    public String getUserTimeZone() {
        return this.userTimeZone;
    }

    public void setEndMillis(long j) {
        this.endMillis = j;
    }

    public void setEventId(String str) {
        this.eventId = str;
    }

    public void setEventProviderType(int i) {
        this.eventProviderType = i;
    }

    public void setParticipantIds(Set<Long> set) {
        this.participantIds = set;
    }

    public void setStartMillis(long j) {
        this.startMillis = j;
    }

    public void setUserTimeZone(String str) {
        this.userTimeZone = str;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CalendarEventFragment{eventId='");
        C22128a.m8678P0(m8728C, this.eventId, '\'', ", eventProviderType=");
        m8728C.append(this.eventProviderType);
        m8728C.append(", startMillis=");
        m8728C.append(this.startMillis);
        m8728C.append(", endMillis=");
        m8728C.append(this.endMillis);
        m8728C.append(", userTimeZone='");
        C22128a.m8678P0(m8728C, this.userTimeZone, '\'', ", participantIds=");
        m8728C.append(this.participantIds);
        m8728C.append('}');
        return m8728C.toString();
    }
}
