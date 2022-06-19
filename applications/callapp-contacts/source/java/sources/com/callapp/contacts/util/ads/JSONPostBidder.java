package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.mopub.common.DataKeys;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONPostBidder.class */
public class JSONPostBidder {
    @JsonProperty("adunit_timeout")
    private long adUnitTimeout;
    @JsonProperty("adUnits")
    private List<JSONPostBidderAdUnit> adUnits;
    @JsonProperty("cachetime_in_minutes")
    private long cachetimeInMinutes;
    @JsonProperty(DataKeys.CALLAPP_DISABLE_REFRESH)
    private boolean callappDisableRefresh;
    @JsonProperty("classname")
    private String classname;
    private int index;
    @JsonProperty("is_refresh")
    private boolean isRefresh;
    @JsonProperty("multiplier")
    private double multiplier = 1.0d;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONPostBidder jSONPostBidder = (JSONPostBidder) obj;
        return this.cachetimeInMinutes == jSONPostBidder.cachetimeInMinutes && this.isRefresh == jSONPostBidder.isRefresh && this.adUnitTimeout == jSONPostBidder.adUnitTimeout && this.callappDisableRefresh == jSONPostBidder.callappDisableRefresh && Double.compare(jSONPostBidder.multiplier, this.multiplier) == 0 && Objects.equals(this.classname, jSONPostBidder.classname) && Objects.equals(this.adUnits, jSONPostBidder.adUnits);
    }

    public long getAdUnitTimeout() {
        return this.adUnitTimeout;
    }

    public List<JSONPostBidderAdUnit> getAdUnits() {
        return this.adUnits;
    }

    public long getCachetimeInMinutes() {
        return this.cachetimeInMinutes;
    }

    public String getClassname() {
        return this.classname;
    }

    public int getIndex() {
        return this.index;
    }

    public double getMultiplier() {
        return this.multiplier;
    }

    public int hashCode() {
        return Objects.hash(this.classname, this.adUnits, Long.valueOf(this.cachetimeInMinutes), Boolean.valueOf(this.isRefresh), Long.valueOf(this.adUnitTimeout), Boolean.valueOf(this.callappDisableRefresh), Double.valueOf(this.multiplier));
    }

    public boolean isCallappDisableRefresh() {
        return this.callappDisableRefresh;
    }

    public boolean isRefresh() {
        return this.isRefresh;
    }

    public void setAdUnitTimeout(long j) {
        this.adUnitTimeout = j;
    }

    public void setAdUnits(List<JSONPostBidderAdUnit> list) {
        this.adUnits = list;
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

    public void setIndex(int i) {
        this.index = i;
    }

    public void setMultiplier(double d) {
        this.multiplier = d;
    }

    public void setRefresh(boolean z) {
        this.isRefresh = z;
    }
}
