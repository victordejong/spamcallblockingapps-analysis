package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/BotFAQFetchRequest.class */
public class BotFAQFetchRequest implements AbstractC1906j {
    private String placeholderReferenceId;
    private String referenceId;

    public BotFAQFetchRequest(String str, String str2) {
        this.referenceId = str;
        this.placeholderReferenceId = str2;
    }

    public String getPlaceholderReferenceId() {
        return this.placeholderReferenceId;
    }

    public String getReferenceId() {
        return this.referenceId;
    }
}
