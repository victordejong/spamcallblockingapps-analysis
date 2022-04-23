package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Profile.class */
public final class Profile extends GenericJson {
    @q
    private String emailAddress;
    @q
    @JsonString
    private BigInteger historyId;
    @q
    private Integer messagesTotal;
    @q
    private Integer threadsTotal;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Profile clone() {
        return (Profile) super.clone();
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    public final Integer getMessagesTotal() {
        return this.messagesTotal;
    }

    public final Integer getThreadsTotal() {
        return this.threadsTotal;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Profile set(String str, Object obj) {
        return (Profile) super.set(str, obj);
    }

    public final Profile setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public final Profile setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }

    public final Profile setMessagesTotal(Integer num) {
        this.messagesTotal = num;
        return this;
    }

    public final Profile setThreadsTotal(Integer num) {
        this.threadsTotal = num;
        return this;
    }
}
