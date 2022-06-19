package com.applovin.impl.sdk.p053ad;
/* renamed from: com.applovin.impl.sdk.ad.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/b.class */
public enum EnumC1282b {
    UNKNOWN(0),
    APPLOVIN_PRIMARY_ZONE(1),
    APPLOVIN_CUSTOM_ZONE(2),
    APPLOVIN_MULTIZONE(3),
    REGULAR_AD_TOKEN(4),
    DECODED_AD_TOKEN_JSON(5);
    

    /* renamed from: g */
    private final int f4575g;

    EnumC1282b(int i) {
        this.f4575g = i;
    }

    /* renamed from: a */
    public static EnumC1282b m6015a(int i) {
        return i == 1 ? APPLOVIN_PRIMARY_ZONE : i == 2 ? APPLOVIN_CUSTOM_ZONE : i == 3 ? APPLOVIN_MULTIZONE : i == 4 ? REGULAR_AD_TOKEN : i == 5 ? DECODED_AD_TOKEN_JSON : UNKNOWN;
    }

    /* renamed from: a */
    public int m6016a() {
        return this.f4575g;
    }
}
