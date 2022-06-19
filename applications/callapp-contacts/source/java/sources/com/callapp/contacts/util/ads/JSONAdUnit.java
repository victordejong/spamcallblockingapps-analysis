package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdUnit.class */
public class JSONAdUnit {
    public static final int BANNER_250 = 2;
    public static final int BANNER_50 = 1;
    public static final int INTERSTITIAL = 4;
    public static final int NATIVE = 0;
    public static final int NATIVE_BANNER = 3;
    @JsonProperty("adType")
    private int adType;
    @JsonProperty("adUnitId")
    private String adUnitId;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdUnit$AdType.class */
    public @interface AdType {
    }

    public JSONAdUnit() {
    }

    public JSONAdUnit(String str, int i) {
        this.adUnitId = str;
        this.adType = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONAdUnit jSONAdUnit = (JSONAdUnit) obj;
        if (this.adType == jSONAdUnit.adType) {
            return Objects.equals(this.adUnitId, jSONAdUnit.adUnitId);
        }
        return false;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public int hashCode() {
        String str = this.adUnitId;
        return ((str != null ? str.hashCode() : 0) * 31) + this.adType;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setAdUnitId(String str) {
        this.adUnitId = str;
    }
}
