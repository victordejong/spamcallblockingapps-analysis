package com.freshchat.consumer.sdk.beans;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/MessageInternalMeta.class */
public class MessageInternalMeta {
    private CalendarMessageMeta calendarMessageMeta;

    public CalendarMessageMeta getCalendarMessageMeta() {
        return this.calendarMessageMeta;
    }

    public void setCalendarMessageMeta(CalendarMessageMeta calendarMessageMeta) {
        this.calendarMessageMeta = calendarMessageMeta;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessageInternalMeta{calendarMessageMeta = ");
        m8728C.append(this.calendarMessageMeta);
        m8728C.append('}');
        return m8728C.toString();
    }
}
