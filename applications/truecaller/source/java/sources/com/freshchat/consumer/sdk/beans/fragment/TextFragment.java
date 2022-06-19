package com.freshchat.consumer.sdk.beans.fragment;

import com.freshchat.consumer.sdk.p057j.C1626as;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/TextFragment.class */
public class TextFragment extends MessageFragment {
    public TextFragment() {
        super(FragmentType.TEXT.asInt());
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String getContent() {
        String content = super.getContent();
        String str = content;
        if (C1626as.m40233a(content)) {
            str = content.replaceAll(StringConstant.NEW_LINE, "<br>");
        }
        return str;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TextFragment{} ");
        m8728C.append(super.toString());
        return m8728C.toString();
    }
}
