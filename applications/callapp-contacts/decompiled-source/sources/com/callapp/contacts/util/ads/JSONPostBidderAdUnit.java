package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONPostBidderAdUnit.class */
public class JSONPostBidderAdUnit {
    @JsonProperty("adUnitId")
    private String adUnitId;
    @JsonProperty("dfpAdUnitId")
    private String dfpAdUnitId;
    @JsonProperty("moPubAdUnitId")
    private String moPubAdUnitId;
    @JsonProperty("multiAdType")
    private List<Integer> multiAdType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONPostBidderAdUnit jSONPostBidderAdUnit = (JSONPostBidderAdUnit) obj;
        return Objects.equals(this.multiAdType, jSONPostBidderAdUnit.multiAdType) && Objects.equals(this.adUnitId, jSONPostBidderAdUnit.adUnitId) && Objects.equals(this.moPubAdUnitId, jSONPostBidderAdUnit.moPubAdUnitId) && Objects.equals(this.dfpAdUnitId, jSONPostBidderAdUnit.dfpAdUnitId);
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public String getDfpAdUnitId() {
        return this.dfpAdUnitId;
    }

    public String getMoPubAdUnitId() {
        return this.moPubAdUnitId;
    }

    public List<Integer> getMultiAdType() {
        return this.multiAdType;
    }

    public int hashCode() {
        return Objects.hash(this.multiAdType, this.adUnitId, this.moPubAdUnitId, this.dfpAdUnitId);
    }

    public void setAdUnitId(String str) {
        this.adUnitId = str;
    }

    public void setDfpAdUnitId(String str) {
        this.dfpAdUnitId = str;
    }

    public void setMoPubAdUnitId(String str) {
        this.moPubAdUnitId = str;
    }

    public void setMultiAdType(List<Integer> list) {
        this.multiAdType = list;
    }

    public String toString() {
        return "JSONPostBidderAdUnit{multiAdType=" + this.multiAdType + ", adUnitId='" + this.adUnitId + "', moPubAdUnitId='" + this.moPubAdUnitId + "', dfpAdUnitId='" + this.dfpAdUnitId + "'}";
    }
}
