package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment.class */
public class CallbackButtonFragment extends MessageFragment {
    private String label;
    private String payload;

    public CallbackButtonFragment() {
        super(FragmentType.CALLBACK_BUTTON.asInt());
    }

    public String getLabel() {
        return this.label;
    }

    public String getPayload() {
        return this.payload;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPayload(String str) {
        this.payload = str;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallbackButtonFragment{content='");
        m8728C.append(getContent());
        m8728C.append('\'');
        m8728C.append(", contentType='");
        m8728C.append(getContentType());
        m8728C.append('\'');
        m8728C.append(", fragmentType=");
        m8728C.append(getFragmentType());
        m8728C.append(", label='");
        C22128a.m8678P0(m8728C, this.label, '\'', ", payload='");
        return C22128a.m8626f(m8728C, this.payload, '\'', '}');
    }
}
