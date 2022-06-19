package com.truecaller.premium.data;

import w3.c.a.a.a.h;
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/data/PremiumScope.class */
public enum PremiumScope {
    NONE("NoneScope"),
    PAID_PREMIUM("paid_premium"),
    OFFER_WALL("offerwall"),
    PROMOTION("promotion"),
    CUSTOMER_SUPPORT("customer_support"),
    PRO_CAMPAIGNS("pro-campaigns"),
    REFERRALS("referrals"),
    PARTNER("partner"),
    TC_PAY("tc-pay"),
    TC_SUPPORT("tc-support"),
    TESTING("testing"),
    OTHER("Other"),
    UNRECOGNIZED("UNRECOGNIZED");
    
    private final String scope;

    PremiumScope(String str) {
        this.scope = str;
    }

    public static PremiumScope fromRemote(String str) {
        PremiumScope[] values = values();
        for (int i = 0; i < 13; i++) {
            PremiumScope premiumScope = values[i];
            if (h.f(premiumScope.scope, str)) {
                return premiumScope;
            }
        }
        return NONE;
    }

    public String getScope() {
        return this.scope;
    }
}
