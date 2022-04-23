package com.callapp.common.model.message;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/message/ClientData.class */
public class ClientData implements Serializable {
    private static final long serialVersionUID = -237347469124266197L;
    private CallAppClient client;
    private Integer group;
    private long lastActiveTime;
    private String phoneNumber;
    private String registrationId;
    private String token;

    public CallAppClient getClient() {
        return this.client;
    }

    public Integer getGroup() {
        return this.group;
    }

    public long getLastActiveTime() {
        return this.lastActiveTime;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getRegistrationId() {
        return this.registrationId;
    }

    public String getToken() {
        return this.token;
    }

    public ClientData setClient(CallAppClient callAppClient) {
        this.client = callAppClient;
        return this;
    }

    public ClientData setGroup(Integer num) {
        this.group = num;
        return this;
    }

    public ClientData setLastActiveTime(long j) {
        this.lastActiveTime = j;
        return this;
    }

    public ClientData setPhoneNumber(String str) {
        this.phoneNumber = str;
        return this;
    }

    public ClientData setRegistrationId(String str) {
        this.registrationId = str;
        return this;
    }

    public ClientData setToken(String str) {
        this.token = str;
        return this;
    }
}
