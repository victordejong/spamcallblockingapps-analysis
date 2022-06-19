package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Profile.class */
public final class Profile extends GenericJson {
    @AbstractC15247q
    private String emailAddress;
    @AbstractC15247q
    @JsonString
    private BigInteger historyId;
    @AbstractC15247q
    private Integer messagesTotal;
    @AbstractC15247q
    private Integer threadsTotal;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
