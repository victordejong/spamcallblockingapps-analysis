package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelStatistics.class */
public final class ChannelStatistics extends GenericJson {
    @q
    @JsonString
    private BigInteger commentCount;
    @q
    private Boolean hiddenSubscriberCount;
    @q
    @JsonString
    private BigInteger subscriberCount;
    @q
    @JsonString
    private BigInteger videoCount;
    @q
    @JsonString
    private BigInteger viewCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelStatistics clone() {
        return (ChannelStatistics) super.clone();
    }

    public final BigInteger getCommentCount() {
        return this.commentCount;
    }

    public final Boolean getHiddenSubscriberCount() {
        return this.hiddenSubscriberCount;
    }

    public final BigInteger getSubscriberCount() {
        return this.subscriberCount;
    }

    public final BigInteger getVideoCount() {
        return this.videoCount;
    }

    public final BigInteger getViewCount() {
        return this.viewCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelStatistics set(String str, Object obj) {
        return (ChannelStatistics) super.set(str, obj);
    }

    public final ChannelStatistics setCommentCount(BigInteger bigInteger) {
        this.commentCount = bigInteger;
        return this;
    }

    public final ChannelStatistics setHiddenSubscriberCount(Boolean bool) {
        this.hiddenSubscriberCount = bool;
        return this;
    }

    public final ChannelStatistics setSubscriberCount(BigInteger bigInteger) {
        this.subscriberCount = bigInteger;
        return this;
    }

    public final ChannelStatistics setVideoCount(BigInteger bigInteger) {
        this.videoCount = bigInteger;
        return this;
    }

    public final ChannelStatistics setViewCount(BigInteger bigInteger) {
        this.viewCount = bigInteger;
        return this;
    }
}
