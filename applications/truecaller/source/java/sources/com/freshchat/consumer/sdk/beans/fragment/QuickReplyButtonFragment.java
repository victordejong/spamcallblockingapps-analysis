package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment.class */
public class QuickReplyButtonFragment extends MessageFragment {
    private String customReplyText;
    private String label;
    private String payload;

    public QuickReplyButtonFragment() {
        super(FragmentType.QUICK_REPLY_BUTTON.asInt());
    }

    public String getCustomReplyText() {
        return this.customReplyText;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPayload() {
        return this.payload;
    }

    public void setCustomReplyText(String str) {
        this.customReplyText = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPayload(String str) {
        this.payload = str;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("QuickReplyButtonFragment{messageFragment='");
        C22128a.m8678P0(m8728C, super.toString(), '\'', ", label='");
        C22128a.m8678P0(m8728C, this.label, '\'', ", customReplyText='");
        C22128a.m8678P0(m8728C, this.customReplyText, '\'', ", payload='");
        return C22128a.m8626f(m8728C, this.payload, '\'', '}');
    }
}
