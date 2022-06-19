package com.freshchat.consumer.sdk.p057j;

import android.os.Bundle;
import com.freshchat.consumer.sdk.ConversationOptions;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.j.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/l.class */
public class C1717l {
    /* renamed from: a */
    public static Bundle m39892a(ConversationOptions conversationOptions) {
        Bundle bundle = new Bundle();
        if (conversationOptions != null) {
            ArrayList<String> arrayList = new ArrayList<>(conversationOptions.getTags());
            if (C1716k.m39902a(arrayList)) {
                bundle.putStringArrayList("CONVERSATION_TAG_LIST", arrayList);
            }
            if (C1626as.m40233a(conversationOptions.getFilteredViewTitle())) {
                bundle.putString("CONVERSATION_TAG_VIEW_TITLE", conversationOptions.getFilteredViewTitle());
            }
        }
        return bundle;
    }

    /* renamed from: c */
    public static ConversationOptions m39891c(Bundle bundle) {
        ConversationOptions conversationOptions = new ConversationOptions();
        if (bundle != null && bundle.containsKey("CONVERSATION_TAG_LIST")) {
            conversationOptions.filterByTags(bundle.getStringArrayList("CONVERSATION_TAG_LIST"), bundle.getString("CONVERSATION_TAG_VIEW_TITLE"));
        }
        return conversationOptions;
    }
}
