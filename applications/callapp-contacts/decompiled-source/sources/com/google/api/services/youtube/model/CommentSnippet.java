package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentSnippet.class */
public final class CommentSnippet extends GenericJson {
    @q
    private Object authorChannelId;
    @q
    private String authorChannelUrl;
    @q
    private String authorDisplayName;
    @q
    private String authorProfileImageUrl;
    @q
    private Boolean canRate;
    @q
    private String channelId;
    @q
    private Long likeCount;
    @q
    private String moderationStatus;
    @q
    private String parentId;
    @q
    private l publishedAt;
    @q
    private String textDisplay;
    @q
    private String textOriginal;
    @q
    private l updatedAt;
    @q
    private String videoId;
    @q
    private String viewerRating;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final CommentSnippet clone() {
        return (CommentSnippet) super.clone();
    }

    public final Object getAuthorChannelId() {
        return this.authorChannelId;
    }

    public final String getAuthorChannelUrl() {
        return this.authorChannelUrl;
    }

    public final String getAuthorDisplayName() {
        return this.authorDisplayName;
    }

    public final String getAuthorProfileImageUrl() {
        return this.authorProfileImageUrl;
    }

    public final Boolean getCanRate() {
        return this.canRate;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final Long getLikeCount() {
        return this.likeCount;
    }

    public final String getModerationStatus() {
        return this.moderationStatus;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final String getTextDisplay() {
        return this.textDisplay;
    }

    public final String getTextOriginal() {
        return this.textOriginal;
    }

    public final l getUpdatedAt() {
        return this.updatedAt;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getViewerRating() {
        return this.viewerRating;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final CommentSnippet set(String str, Object obj) {
        return (CommentSnippet) super.set(str, obj);
    }

    public final CommentSnippet setAuthorChannelId(Object obj) {
        this.authorChannelId = obj;
        return this;
    }

    public final CommentSnippet setAuthorChannelUrl(String str) {
        this.authorChannelUrl = str;
        return this;
    }

    public final CommentSnippet setAuthorDisplayName(String str) {
        this.authorDisplayName = str;
        return this;
    }

    public final CommentSnippet setAuthorProfileImageUrl(String str) {
        this.authorProfileImageUrl = str;
        return this;
    }

    public final CommentSnippet setCanRate(Boolean bool) {
        this.canRate = bool;
        return this;
    }

    public final CommentSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final CommentSnippet setLikeCount(Long l) {
        this.likeCount = l;
        return this;
    }

    public final CommentSnippet setModerationStatus(String str) {
        this.moderationStatus = str;
        return this;
    }

    public final CommentSnippet setParentId(String str) {
        this.parentId = str;
        return this;
    }

    public final CommentSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final CommentSnippet setTextDisplay(String str) {
        this.textDisplay = str;
        return this;
    }

    public final CommentSnippet setTextOriginal(String str) {
        this.textOriginal = str;
        return this;
    }

    public final CommentSnippet setUpdatedAt(l lVar) {
        this.updatedAt = lVar;
        return this;
    }

    public final CommentSnippet setVideoId(String str) {
        this.videoId = str;
        return this;
    }

    public final CommentSnippet setViewerRating(String str) {
        this.viewerRating = str;
        return this;
    }
}
