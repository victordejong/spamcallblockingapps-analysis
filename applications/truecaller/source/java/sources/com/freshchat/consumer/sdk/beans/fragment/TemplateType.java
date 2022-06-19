package com.freshchat.consumer.sdk.beans.fragment;

import com.freshchat.consumer.sdk.p057j.C1626as;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/TemplateType.class */
public enum TemplateType {
    QUICK_REPLY_DROP_DOWN("quick_reply_dropdown", QuickReplyDropDownFragment.class),
    CAROUSEL("carousel", CarouselFragment.class),
    CAROUSEL_CARD_DEFAULT("carousel_card_default", CarouselCardDefaultFragment.class);
    
    private Class clz;
    private String str;

    TemplateType(String str, Class cls) {
        this.str = str;
        this.clz = cls;
    }

    public static TemplateType get(String str) {
        if (C1626as.isEmpty(str)) {
            return null;
        }
        TemplateType[] values = values();
        for (int i = 0; i < 3; i++) {
            TemplateType templateType = values[i];
            if (templateType.str.equals(str)) {
                return templateType;
            }
        }
        return null;
    }

    public String asString() {
        return this.str;
    }

    public Class getClz() {
        return this.clz;
    }
}
