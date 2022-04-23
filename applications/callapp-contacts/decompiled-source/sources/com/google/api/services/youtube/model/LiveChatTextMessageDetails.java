package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatTextMessageDetails.class */
public final class LiveChatTextMessageDetails extends GenericJson {
    @q
    private String messageText;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatTextMessageDetails clone() {
        return (LiveChatTextMessageDetails) super.clone();
    }

    public final String getMessageText() {
        return this.messageText;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatTextMessageDetails set(String str, Object obj) {
        return (LiveChatTextMessageDetails) super.set(str, obj);
    }

    public final LiveChatTextMessageDetails setMessageText(String str) {
        this.messageText = str;
        return this;
    }
}
