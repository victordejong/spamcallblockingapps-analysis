package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetails.class */
public final class ActivityContentDetails extends GenericJson {
    @q
    private ActivityContentDetailsBulletin bulletin;
    @q
    private ActivityContentDetailsChannelItem channelItem;
    @q
    private ActivityContentDetailsComment comment;
    @q
    private ActivityContentDetailsFavorite favorite;
    @q
    private ActivityContentDetailsLike like;
    @q
    private ActivityContentDetailsPlaylistItem playlistItem;
    @q
    private ActivityContentDetailsPromotedItem promotedItem;
    @q
    private ActivityContentDetailsRecommendation recommendation;
    @q
    private ActivityContentDetailsSocial social;
    @q
    private ActivityContentDetailsSubscription subscription;
    @q
    private ActivityContentDetailsUpload upload;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ActivityContentDetails clone() {
        return (ActivityContentDetails) super.clone();
    }

    public final ActivityContentDetailsBulletin getBulletin() {
        return this.bulletin;
    }

    public final ActivityContentDetailsChannelItem getChannelItem() {
        return this.channelItem;
    }

    public final ActivityContentDetailsComment getComment() {
        return this.comment;
    }

    public final ActivityContentDetailsFavorite getFavorite() {
        return this.favorite;
    }

    public final ActivityContentDetailsLike getLike() {
        return this.like;
    }

    public final ActivityContentDetailsPlaylistItem getPlaylistItem() {
        return this.playlistItem;
    }

    public final ActivityContentDetailsPromotedItem getPromotedItem() {
        return this.promotedItem;
    }

    public final ActivityContentDetailsRecommendation getRecommendation() {
        return this.recommendation;
    }

    public final ActivityContentDetailsSocial getSocial() {
        return this.social;
    }

    public final ActivityContentDetailsSubscription getSubscription() {
        return this.subscription;
    }

    public final ActivityContentDetailsUpload getUpload() {
        return this.upload;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ActivityContentDetails set(String str, Object obj) {
        return (ActivityContentDetails) super.set(str, obj);
    }

    public final ActivityContentDetails setBulletin(ActivityContentDetailsBulletin activityContentDetailsBulletin) {
        this.bulletin = activityContentDetailsBulletin;
        return this;
    }

    public final ActivityContentDetails setChannelItem(ActivityContentDetailsChannelItem activityContentDetailsChannelItem) {
        this.channelItem = activityContentDetailsChannelItem;
        return this;
    }

    public final ActivityContentDetails setComment(ActivityContentDetailsComment activityContentDetailsComment) {
        this.comment = activityContentDetailsComment;
        return this;
    }

    public final ActivityContentDetails setFavorite(ActivityContentDetailsFavorite activityContentDetailsFavorite) {
        this.favorite = activityContentDetailsFavorite;
        return this;
    }

    public final ActivityContentDetails setLike(ActivityContentDetailsLike activityContentDetailsLike) {
        this.like = activityContentDetailsLike;
        return this;
    }

    public final ActivityContentDetails setPlaylistItem(ActivityContentDetailsPlaylistItem activityContentDetailsPlaylistItem) {
        this.playlistItem = activityContentDetailsPlaylistItem;
        return this;
    }

    public final ActivityContentDetails setPromotedItem(ActivityContentDetailsPromotedItem activityContentDetailsPromotedItem) {
        this.promotedItem = activityContentDetailsPromotedItem;
        return this;
    }

    public final ActivityContentDetails setRecommendation(ActivityContentDetailsRecommendation activityContentDetailsRecommendation) {
        this.recommendation = activityContentDetailsRecommendation;
        return this;
    }

    public final ActivityContentDetails setSocial(ActivityContentDetailsSocial activityContentDetailsSocial) {
        this.social = activityContentDetailsSocial;
        return this;
    }

    public final ActivityContentDetails setSubscription(ActivityContentDetailsSubscription activityContentDetailsSubscription) {
        this.subscription = activityContentDetailsSubscription;
        return this;
    }

    public final ActivityContentDetails setUpload(ActivityContentDetailsUpload activityContentDetailsUpload) {
        this.upload = activityContentDetailsUpload;
        return this;
    }
}
