package com.revenuecat.purchases;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Purchases$AttributionNetwork.class */
public enum Purchases$AttributionNetwork {
    ADJUST(1),
    APPSFLYER(2),
    BRANCH(3),
    TENJIN(4),
    FACEBOOK(5),
    MPARTICLE(6);
    
    private final int serverValue;

    Purchases$AttributionNetwork(int i) {
        this.serverValue = i;
    }

    public final int getServerValue() {
        return this.serverValue;
    }
}
