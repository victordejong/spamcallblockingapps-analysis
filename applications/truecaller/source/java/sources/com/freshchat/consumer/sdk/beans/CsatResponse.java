package com.freshchat.consumer.sdk.beans;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/CsatResponse.class */
public class CsatResponse {
    private long conversationId;
    private long csatId;
    private boolean issueResolved;
    private String response;
    private int stars;

    public long getConversationId() {
        return this.conversationId;
    }

    public long getCsatId() {
        return this.csatId;
    }

    public String getResponse() {
        return this.response;
    }

    public int getStars() {
        return this.stars;
    }

    public boolean issueResolved() {
        return this.issueResolved;
    }

    public CsatResponse setConversationId(long j) {
        this.conversationId = j;
        return this;
    }

    public CsatResponse setCsatId(long j) {
        this.csatId = j;
        return this;
    }

    public CsatResponse setIssueResolved(boolean z) {
        this.issueResolved = z;
        return this;
    }

    public CsatResponse setResponse(String str) {
        this.response = str;
        return this;
    }

    public CsatResponse setStars(int i) {
        this.stars = i;
        return this;
    }
}
