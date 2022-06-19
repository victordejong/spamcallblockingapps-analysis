package com.freshchat.consumer.sdk.service.p068e;
/* renamed from: com.freshchat.consumer.sdk.service.e.am */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/am.class */
public class C1890am implements AbstractC1906j {
    private final String categoryId;
    private final String faqId;
    private final String lastUpdatedAt;
    private final String locale;

    /* renamed from: rk */
    private final EnumC1891a f4732rk;

    /* renamed from: com.freshchat.consumer.sdk.service.e.am$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/am$a.class */
    public enum EnumC1891a {
        THUMBS_UP("thumbs_up"),
        THUMBS_DOWN("thumbs_down");
        
        private final String value;

        EnumC1891a(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public C1890am(String str, String str2, String str3, EnumC1891a enumC1891a, String str4) {
        this.categoryId = str;
        this.faqId = str2;
        this.locale = str3;
        this.f4732rk = enumC1891a;
        this.lastUpdatedAt = str4;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public String getFaqId() {
        return this.faqId;
    }

    public String getLastUpdatedAt() {
        return this.lastUpdatedAt;
    }

    public String getLocale() {
        return this.locale;
    }

    /* renamed from: iX */
    public EnumC1891a m39346iX() {
        return this.f4732rk;
    }
}
