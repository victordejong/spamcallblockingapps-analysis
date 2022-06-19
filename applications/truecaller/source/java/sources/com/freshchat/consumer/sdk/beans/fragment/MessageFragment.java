package com.freshchat.consumer.sdk.beans.fragment;

import com.freshchat.consumer.sdk.p057j.C1626as;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/MessageFragment.class */
public abstract class MessageFragment {
    private String content;
    private String contentType;
    private int fragmentType;
    private String translatedContent;

    public MessageFragment(int i) {
        this.fragmentType = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MessageFragment messageFragment = (MessageFragment) obj;
        if (this.fragmentType != messageFragment.fragmentType || !C1626as.m40223o(this.content, messageFragment.content) || !C1626as.m40223o(this.contentType, messageFragment.contentType) || !C1626as.m40223o(this.translatedContent, messageFragment.translatedContent)) {
            z = false;
        }
        return z;
    }

    public String getContent() {
        return this.content;
    }

    public String getContentType() {
        return this.contentType;
    }

    public int getFragmentType() {
        return this.fragmentType;
    }

    public String getTranslatedContent() {
        return this.translatedContent;
    }

    public MessageFragment setContent(String str) {
        this.content = str;
        return this;
    }

    public MessageFragment setContentType(String str) {
        this.contentType = str;
        return this;
    }

    public void setTranslatedContent(String str) {
        this.translatedContent = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessageFragment{content='");
        C22128a.m8678P0(m8728C, this.content, '\'', ", contentType='");
        C22128a.m8678P0(m8728C, this.contentType, '\'', ", fragmentType=");
        m8728C.append(this.fragmentType);
        m8728C.append(", translatedContent='");
        return C22128a.m8626f(m8728C, this.translatedContent, '\'', '}');
    }
}
