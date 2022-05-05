package com.revenuecat.purchases;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PackageType.class */
public enum PackageType {
    UNKNOWN(null),
    CUSTOM(null),
    LIFETIME("$rc_lifetime"),
    ANNUAL("$rc_annual"),
    SIX_MONTH("$rc_six_month"),
    THREE_MONTH("$rc_three_month"),
    TWO_MONTH("$rc_two_month"),
    MONTHLY("$rc_monthly"),
    WEEKLY("$rc_weekly");
    
    private final String identifier;

    PackageType(String str) {
        this.identifier = str;
    }

    public final String getIdentifier() {
        return this.identifier;
    }
}
