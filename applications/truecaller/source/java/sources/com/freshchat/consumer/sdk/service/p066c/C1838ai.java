package com.freshchat.consumer.sdk.service.p066c;

import com.freshchat.consumer.sdk.beans.config.AccountConfig;
/* renamed from: com.freshchat.consumer.sdk.service.c.ai */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/ai.class */
public /* synthetic */ class C1838ai {

    /* renamed from: rg */
    public static final /* synthetic */ int[] f4698rg;

    static {
        AccountConfig.FAQAPIVersion.values();
        int[] iArr = new int[2];
        f4698rg = iArr;
        try {
            AccountConfig.FAQAPIVersion fAQAPIVersion = AccountConfig.FAQAPIVersion.STANDALONE;
            iArr[0] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            int[] iArr2 = f4698rg;
            AccountConfig.FAQAPIVersion fAQAPIVersion2 = AccountConfig.FAQAPIVersion.KBASE_SERVICE;
            iArr2[1] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
