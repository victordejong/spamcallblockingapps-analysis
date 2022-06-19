package com.freshchat.consumer.sdk;

import com.freshchat.consumer.sdk.p057j.AbstractC1734z;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ConversationOptions.class */
public class ConversationOptions implements AbstractC1734z {
    private String filteredViewTitle;
    private Collection<String> tags = new ArrayList();

    public ConversationOptions filterByTags(Collection<String> collection, String str) {
        this.tags.clear();
        if (C1716k.m39902a(collection)) {
            this.tags.addAll(C1716k.m39898c(collection));
            this.filteredViewTitle = str;
        }
        return this;
    }

    public String getFilteredViewTitle() {
        return this.filteredViewTitle;
    }

    public Collection<String> getTags() {
        ArrayList arrayList = new ArrayList();
        if (C1716k.m39902a(this.tags)) {
            arrayList.addAll(this.tags);
        }
        return arrayList;
    }
}
