package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastStatistics.class */
public final class LiveBroadcastStatistics extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger concurrentViewers;
    @AbstractC15247q
    @JsonString
    private BigInteger totalChatCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveBroadcastStatistics clone() {
        return (LiveBroadcastStatistics) super.clone();
    }

    public final BigInteger getConcurrentViewers() {
        return this.concurrentViewers;
    }

    public final BigInteger getTotalChatCount() {
        return this.totalChatCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveBroadcastStatistics set(String str, Object obj) {
        return (LiveBroadcastStatistics) super.set(str, obj);
    }

    public final LiveBroadcastStatistics setConcurrentViewers(BigInteger bigInteger) {
        this.concurrentViewers = bigInteger;
        return this;
    }

    public final LiveBroadcastStatistics setTotalChatCount(BigInteger bigInteger) {
        this.totalChatCount = bigInteger;
        return this;
    }
}
