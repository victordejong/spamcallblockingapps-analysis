package com.freshchat.consumer.sdk.service.p068e;
/* renamed from: com.freshchat.consumer.sdk.service.e.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/n.class */
public class C1910n implements AbstractC1906j {
    private String categoryId;

    /* renamed from: gu */
    private EnumC1911a f4755gu;

    /* renamed from: v */
    private String f4756v;

    /* renamed from: com.freshchat.consumer.sdk.service.e.n$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/n$a.class */
    public enum EnumC1911a {
        Upvote,
        Downvote
    }

    public C1910n(String str, String str2, EnumC1911a enumC1911a) {
        this.categoryId = str;
        this.f4756v = str2;
        this.f4755gu = enumC1911a;
    }

    /* renamed from: dJ */
    public String m39324dJ() {
        return this.f4756v;
    }

    /* renamed from: dK */
    public EnumC1911a m39323dK() {
        return this.f4755gu;
    }

    public String getCategoryId() {
        return this.categoryId;
    }
}
