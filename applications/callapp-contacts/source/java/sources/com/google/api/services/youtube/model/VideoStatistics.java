package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoStatistics.class */
public final class VideoStatistics extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger commentCount;
    @AbstractC15247q
    @JsonString
    private BigInteger dislikeCount;
    @AbstractC15247q
    @JsonString
    private BigInteger favoriteCount;
    @AbstractC15247q
    @JsonString
    private BigInteger likeCount;
    @AbstractC15247q
    @JsonString
    private BigInteger viewCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoStatistics clone() {
        return (VideoStatistics) super.clone();
    }

    public final BigInteger getCommentCount() {
        return this.commentCount;
    }

    public final BigInteger getDislikeCount() {
        return this.dislikeCount;
    }

    public final BigInteger getFavoriteCount() {
        return this.favoriteCount;
    }

    public final BigInteger getLikeCount() {
        return this.likeCount;
    }

    public final BigInteger getViewCount() {
        return this.viewCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoStatistics set(String str, Object obj) {
        return (VideoStatistics) super.set(str, obj);
    }

    public final VideoStatistics setCommentCount(BigInteger bigInteger) {
        this.commentCount = bigInteger;
        return this;
    }

    public final VideoStatistics setDislikeCount(BigInteger bigInteger) {
        this.dislikeCount = bigInteger;
        return this;
    }

    public final VideoStatistics setFavoriteCount(BigInteger bigInteger) {
        this.favoriteCount = bigInteger;
        return this;
    }

    public final VideoStatistics setLikeCount(BigInteger bigInteger) {
        this.likeCount = bigInteger;
        return this;
    }

    public final VideoStatistics setViewCount(BigInteger bigInteger) {
        this.viewCount = bigInteger;
        return this;
    }
}
