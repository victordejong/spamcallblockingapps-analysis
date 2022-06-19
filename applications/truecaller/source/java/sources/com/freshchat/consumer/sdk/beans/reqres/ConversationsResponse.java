package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.Conversation;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/ConversationsResponse.class */
public class ConversationsResponse {
    private List<Conversation> conversations = new ArrayList();
    private int statusCode;

    public List<Conversation> getConversations() {
        return this.conversations;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setConversations(List<Conversation> list) {
        this.conversations = list;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }
}
