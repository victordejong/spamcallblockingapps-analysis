package com.freshchat.consumer.sdk.beans;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/ConversationReadStatus.class */
public class ConversationReadStatus {
    private long channelId;
    private long conversationId;
    private long readUpto;

    public ConversationReadStatus(long j, long j2) {
        this.channelId = j;
        this.conversationId = j2;
    }

    public ConversationReadStatus(long j, long j2, long j3) {
        this.channelId = j;
        this.conversationId = j2;
        this.readUpto = j3;
    }

    public long getChannelId() {
        return this.channelId;
    }

    public long getConversationId() {
        return this.conversationId;
    }

    public long getReadUpto() {
        return this.readUpto;
    }

    public void setChannelId(long j) {
        this.channelId = j;
    }

    public void setConversationId(long j) {
        this.conversationId = j;
    }

    public void setReadUpto(long j) {
        this.readUpto = j;
    }
}
