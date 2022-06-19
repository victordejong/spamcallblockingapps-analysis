package com.truecaller.aftercall;

import p193e.p194a.p1066n.C18334g0;
/* JADX WARN: Init of enum CONTACT_PERMISSION can be incorrect */
/* JADX WARN: Init of enum PHONE_PERMISSION can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/truecaller/aftercall/PromotionType.class */
public enum PromotionType {
    SIGN_UP,
    PHONE_PERMISSION(r0),
    CONTACT_PERMISSION(r0),
    DIALER_OUTGOING_OUTSIDE(PromotionCategory.DIALER, "outgoingOutside", "featureDisableOutgoingOutside");
    
    public final PromotionCategory category;
    private final String isDisabledFeatureFlagKey;
    public final String settingKey;

    static {
        PromotionCategory promotionCategory = PromotionCategory.PERMISSION;
    }

    PromotionType() {
        this(PromotionCategory.NONE);
    }

    PromotionType(PromotionCategory promotionCategory) {
        this(promotionCategory, null, null);
    }

    PromotionType(PromotionCategory promotionCategory, String str, String str2) {
        this.category = promotionCategory;
        this.settingKey = str;
        this.isDisabledFeatureFlagKey = str2;
    }

    public boolean isEnabled() {
        String str = this.isDisabledFeatureFlagKey;
        boolean z = false;
        if (str == null || !C18334g0.m15277B(str, false)) {
            z = true;
        }
        return z;
    }
}
