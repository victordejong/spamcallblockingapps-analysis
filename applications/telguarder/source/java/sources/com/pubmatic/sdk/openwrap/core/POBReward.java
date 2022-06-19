package com.pubmatic.sdk.openwrap.core;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBReward.class */
public class POBReward {
    public static final int DEFAULT_REWARD_AMOUNT_VALUE = 0;
    public static final String DEFAULT_REWARD_TYPE_LABEL = "";

    /* renamed from: a */
    private String f760a;

    /* renamed from: b */
    private int f761b;

    public POBReward(String str, int i) {
        this.f760a = str;
        this.f761b = i;
    }

    public int getAmount() {
        return this.f761b;
    }

    public String getCurrencyType() {
        return this.f760a;
    }

    public String toString() {
        return "POBReward{currencyType='" + this.f760a + "', amount='" + this.f761b + "'}";
    }
}
