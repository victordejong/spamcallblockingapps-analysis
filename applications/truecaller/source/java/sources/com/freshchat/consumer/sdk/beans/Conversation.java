package com.freshchat.consumer.sdk.beans;

import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Conversation.class */
public class Conversation {
    public static final int STATUS_OPEN = 0;
    public static final int STATUS_RESOLVED = 2;
    private long channelId;
    private long conversationId;
    private Csat csat;
    private boolean hasPendingCsat;
    private long logId;
    private List<Message> messages = new ArrayList();
    private List<Participant> participants = new ArrayList();
    private boolean requireDebugLog;
    private long status;

    public Conversation(long j) {
        this.conversationId = j;
    }

    public long getChannelId() {
        return this.channelId;
    }

    public long getConversationId() {
        return this.conversationId;
    }

    public Csat getCsat() {
        return this.csat;
    }

    public long getLogId() {
        return this.logId;
    }

    public List<Message> getMessages() {
        return this.messages;
    }

    public List<Participant> getParticipants() {
        return this.participants;
    }

    public long getStatus() {
        return this.status;
    }

    public boolean hasPendingCsat() {
        return this.hasPendingCsat;
    }

    public boolean isRequireDebugLog() {
        return this.requireDebugLog;
    }

    public Conversation setChannelId(long j) {
        this.channelId = j;
        return this;
    }

    public Conversation setConversationId(long j) {
        this.conversationId = j;
        return this;
    }

    public Conversation setCsat(Csat csat) {
        this.csat = csat;
        return this;
    }

    public Conversation setHasPendingCsat(boolean z) {
        this.hasPendingCsat = z;
        return this;
    }

    public void setLogId(long j) {
        this.logId = j;
    }

    public Conversation setMessages(List<Message> list) {
        this.messages = list;
        return this;
    }

    public void setParticipants(List<Participant> list) {
        this.participants = list;
    }

    public void setRequireDebugLog(boolean z) {
        this.requireDebugLog = z;
    }

    public void setStatus(long j) {
        this.status = j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Conversation{channelId='");
        m8728C.append(this.channelId);
        m8728C.append('\'');
        m8728C.append(", conversationId=");
        m8728C.append(this.conversationId);
        m8728C.append(", csat=");
        m8728C.append(this.csat);
        m8728C.append(", hasPendingCsat=");
        m8728C.append(this.hasPendingCsat);
        m8728C.append(", requireDebugLog=");
        m8728C.append(this.requireDebugLog);
        m8728C.append(", logId=");
        m8728C.append(this.logId);
        m8728C.append('}');
        return m8728C.toString();
    }
}
