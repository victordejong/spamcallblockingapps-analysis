package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.mopub.common.DataKeys;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONBidder.class */
public class JSONBidder {
    @JsonProperty("adType")
    private int adType;
    @JsonProperty("adUnitId")
    private String adUnitId;
    @JsonProperty("cachetime_in_minutes")
    private long cachetimeInMinutes;
    @JsonProperty(DataKeys.CALLAPP_DISABLE_REFRESH)
    private boolean callappDisableRefresh;
    @JsonProperty("classname")
    private String classname;
    @JsonProperty("dfpAdUnitId")
    private String dfpAdUnitId;
    @JsonProperty("is_refresh")
    private boolean isRefresh;
    @JsonProperty("moPubAdUnitId")
    private String moPubAdUnitId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONBidder jSONBidder = (JSONBidder) obj;
        return this.adType == jSONBidder.adType && this.cachetimeInMinutes == jSONBidder.cachetimeInMinutes && this.callappDisableRefresh == jSONBidder.callappDisableRefresh && this.isRefresh == jSONBidder.isRefresh && Objects.equals(this.classname, jSONBidder.classname) && Objects.equals(this.adUnitId, jSONBidder.adUnitId) && Objects.equals(this.moPubAdUnitId, jSONBidder.moPubAdUnitId) && Objects.equals(this.dfpAdUnitId, jSONBidder.dfpAdUnitId);
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public long getCachetimeInMinutes() {
        return this.cachetimeInMinutes;
    }

    public String getClassname() {
        return this.classname;
    }

    public String getDfpAdUnitId() {
        return this.dfpAdUnitId;
    }

    public String getMoPubAdUnitId() {
        return this.moPubAdUnitId;
    }

    public int hashCode() {
        return Objects.hash(this.classname, Integer.valueOf(this.adType), this.adUnitId, this.moPubAdUnitId, this.dfpAdUnitId, Long.valueOf(this.cachetimeInMinutes), Boolean.valueOf(this.callappDisableRefresh), Boolean.valueOf(this.isRefresh));
    }

    public boolean isCallappDisableRefresh() {
        return this.callappDisableRefresh;
    }

    public boolean isRefresh() {
        return this.isRefresh;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setAdUnitId(String str) {
        this.adUnitId = str;
    }

    public void setCachetimeInMinutes(long j) {
        this.cachetimeInMinutes = j;
    }

    public void setCallappDisableRefresh(boolean z) {
        this.callappDisableRefresh = z;
    }

    public void setClassname(String str) {
        this.classname = str;
    }

    public void setDfpAdUnitId(String str) {
        this.dfpAdUnitId = str;
    }

    public void setMoPubAdUnitId(String str) {
        this.moPubAdUnitId = str;
    }

    public void setRefresh(boolean z) {
        this.isRefresh = z;
    }
}
