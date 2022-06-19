package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONBidding.class */
public class JSONBidding {
    @JsonProperty("backfill")
    private JSONAdUnit backfill;
    @JsonProperty("bidders")
    private List<JSONBidder> bidders;
    @JsonProperty("post_bid_timeout")
    private long postBidTimeout;
    @JsonProperty("post_bidders")
    private List<JSONPostBidder> postBidders;
    @JsonProperty("timeout")
    private long timeout;
    @JsonProperty("waterfalls")
    private List<JSONAdUnit> waterfalls;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONBidding jSONBidding = (JSONBidding) obj;
        return this.timeout == jSONBidding.timeout && this.postBidTimeout == jSONBidding.postBidTimeout && Objects.equals(this.waterfalls, jSONBidding.waterfalls) && Objects.equals(this.bidders, jSONBidding.bidders) && Objects.equals(this.postBidders, jSONBidding.postBidders) && Objects.equals(this.backfill, jSONBidding.backfill);
    }

    public JSONAdUnit getBackfill() {
        return this.backfill;
    }

    public List<JSONBidder> getBidders() {
        return this.bidders;
    }

    public long getPostBidTimeout() {
        return this.postBidTimeout;
    }

    public List<JSONPostBidder> getPostBidders() {
        return this.postBidders;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public List<JSONAdUnit> getWaterfalls() {
        return this.waterfalls;
    }

    public int hashCode() {
        return Objects.hash(this.waterfalls, this.bidders, this.postBidders, this.backfill, Long.valueOf(this.timeout), Long.valueOf(this.postBidTimeout));
    }

    public void setBackfill(JSONAdUnit jSONAdUnit) {
        this.backfill = jSONAdUnit;
    }

    public void setBidders(List<JSONBidder> list) {
        this.bidders = list;
    }

    public void setPostBidTimeout(long j) {
        this.postBidTimeout = j;
    }

    public void setPostBidders(List<JSONPostBidder> list) {
        this.postBidders = list;
    }

    public void setTimeout(long j) {
        this.timeout = j;
    }

    public void setWaterfalls(List<JSONAdUnit> list) {
        this.waterfalls = list;
    }
}
