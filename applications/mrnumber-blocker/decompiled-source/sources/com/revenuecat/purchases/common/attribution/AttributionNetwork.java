package com.revenuecat.purchases.common.attribution;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/attribution/AttributionNetwork.class */
public enum AttributionNetwork {
    ADJUST(1),
    APPSFLYER(2),
    BRANCH(3),
    TENJIN(4),
    FACEBOOK(5),
    MPARTICLE(6);
    
    private final int serverValue;

    AttributionNetwork(int i) {
        this.serverValue = i;
    }

    public final int getServerValue() {
        return this.serverValue;
    }
}
