package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/FAQFetchRequest.class */
public class FAQFetchRequest implements AbstractC1906j {
    private String categoryId;
    private String faqId;

    public FAQFetchRequest(String str, String str2) {
        this.faqId = str;
        this.categoryId = str2;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public String getFaqId() {
        return this.faqId;
    }
}
