package com.freshchat.consumer.sdk.beans.fragment;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/UnknownFragment.class */
public class UnknownFragment extends MessageFragment {
    private String rawJsonOfUnsupportedType;

    public UnknownFragment(int i) {
        super(i);
    }

    public String getRawJsonOfUnsupportedType() {
        return this.rawJsonOfUnsupportedType;
    }

    public void setRawJsonOfUnsupportedType(String str) {
        this.rawJsonOfUnsupportedType = str;
    }
}
