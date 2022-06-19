package com.freshchat.consumer.sdk.beans;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/MessageMask.class */
public class MessageMask {
    private String regex;
    private String replacementStr;

    public String getRegex() {
        return this.regex;
    }

    public String getReplacementStr() {
        return this.replacementStr;
    }

    public void setRegex(String str) {
        this.regex = str;
    }

    public void setReplacementStr(String str) {
        this.replacementStr = str;
    }
}
