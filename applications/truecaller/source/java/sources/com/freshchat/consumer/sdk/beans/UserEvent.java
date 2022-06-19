package com.freshchat.consumer.sdk.beans;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/UserEvent.class */
public class UserEvent {
    private String eventName;
    private long occTime;
    private Map<String, Object> properties;

    public UserEvent(String str, Map<String, Object> map, long j) {
        this.eventName = str;
        this.properties = map;
        this.occTime = j;
    }

    public String getEventName() {
        return this.eventName;
    }

    public long getOccTime() {
        return this.occTime;
    }

    public Map<String, Object> getProperties() {
        return this.properties;
    }
}
