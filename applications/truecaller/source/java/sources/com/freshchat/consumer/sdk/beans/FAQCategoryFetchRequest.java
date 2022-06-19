package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/FAQCategoryFetchRequest.class */
public class FAQCategoryFetchRequest implements AbstractC1906j {
    private int pageIndex;
    private List<String> tags;

    public FAQCategoryFetchRequest(int i, List<String> list) {
        this.pageIndex = i;
        this.tags = list;
    }

    public int getPageIndex() {
        return this.pageIndex;
    }

    public List<String> getTags() {
        return this.tags;
    }
}
