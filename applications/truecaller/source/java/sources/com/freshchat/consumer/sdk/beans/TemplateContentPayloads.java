package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/TemplateContentPayloads.class */
public class TemplateContentPayloads {
    private List<MessageFragment> callbacks;
    private List<MessageFragment> description;
    private List<MessageFragment> title;

    public List<MessageFragment> getCallbacks() {
        return this.callbacks;
    }

    public List<MessageFragment> getDescription() {
        return this.description;
    }

    public List<MessageFragment> getTitle() {
        return this.title;
    }
}
