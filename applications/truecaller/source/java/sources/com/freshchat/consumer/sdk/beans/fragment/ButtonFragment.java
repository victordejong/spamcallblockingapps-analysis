package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/ButtonFragment.class */
public class ButtonFragment extends MessageFragment {
    private String androidUri;
    private String iosUri;
    private String label;

    public ButtonFragment() {
        super(FragmentType.BUTTON.asInt());
    }

    public String getAndroidUri() {
        return this.androidUri;
    }

    public String getIosUri() {
        return this.iosUri;
    }

    public String getLabel() {
        return this.label;
    }

    public void setAndroidUri(String str) {
        this.androidUri = str;
    }

    public void setIosUri(String str) {
        this.iosUri = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ButtonFragment{label='");
        C22128a.m8678P0(m8728C, this.label, '\'', ", androidUri='");
        C22128a.m8678P0(m8728C, this.androidUri, '\'', ", iosUri='");
        C22128a.m8678P0(m8728C, this.iosUri, '\'', "} ");
        m8728C.append(super.toString());
        return m8728C.toString();
    }
}
