package com.freshchat.consumer.sdk;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatMessage.class */
public class FreshchatMessage {
    private String message;
    private String tag;

    public String getMessage() {
        return this.message;
    }

    public String getTag() {
        return this.tag;
    }

    public FreshchatMessage setMessage(String str) {
        this.message = str;
        return this;
    }

    public FreshchatMessage setTag(String str) {
        this.tag = str;
        return this;
    }
}
