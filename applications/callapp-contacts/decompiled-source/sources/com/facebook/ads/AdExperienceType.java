package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/AdExperienceType.class */
public enum AdExperienceType {
    AD_EXPERIENCE_TYPE_REWARDED("ad_experience_config_rewarded"),
    AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL("ad_experience_config_rewarded_interstitial"),
    AD_EXPERIENCE_TYPE_INTERSTITIAL("ad_experience_config_interstitial");
    
    private String adExperienceType;

    AdExperienceType(String str) {
        this.adExperienceType = str;
    }

    public final String getAdExperienceType() {
        return this.adExperienceType;
    }
}
