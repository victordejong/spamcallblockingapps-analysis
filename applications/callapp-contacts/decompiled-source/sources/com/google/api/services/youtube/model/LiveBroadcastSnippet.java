package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastSnippet.class */
public final class LiveBroadcastSnippet extends GenericJson {
    @q
    private l actualEndTime;
    @q
    private l actualStartTime;
    @q
    private String broadcastType;
    @q
    private String channelId;
    @q
    private String description;
    @q
    private Boolean isDefaultBroadcast;
    @q
    private String liveChatId;
    @q
    private l publishedAt;
    @q
    private l scheduledEndTime;
    @q
    private l scheduledStartTime;
    @q
    private ThumbnailDetails thumbnails;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveBroadcastSnippet clone() {
        return (LiveBroadcastSnippet) super.clone();
    }

    public final l getActualEndTime() {
        return this.actualEndTime;
    }

    public final l getActualStartTime() {
        return this.actualStartTime;
    }

    public final String getBroadcastType() {
        return this.broadcastType;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Boolean getIsDefaultBroadcast() {
        return this.isDefaultBroadcast;
    }

    public final String getLiveChatId() {
        return this.liveChatId;
    }

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final l getScheduledEndTime() {
        return this.scheduledEndTime;
    }

    public final l getScheduledStartTime() {
        return this.scheduledStartTime;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveBroadcastSnippet set(String str, Object obj) {
        return (LiveBroadcastSnippet) super.set(str, obj);
    }

    public final LiveBroadcastSnippet setActualEndTime(l lVar) {
        this.actualEndTime = lVar;
        return this;
    }

    public final LiveBroadcastSnippet setActualStartTime(l lVar) {
        this.actualStartTime = lVar;
        return this;
    }

    public final LiveBroadcastSnippet setBroadcastType(String str) {
        this.broadcastType = str;
        return this;
    }

    public final LiveBroadcastSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final LiveBroadcastSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final LiveBroadcastSnippet setIsDefaultBroadcast(Boolean bool) {
        this.isDefaultBroadcast = bool;
        return this;
    }

    public final LiveBroadcastSnippet setLiveChatId(String str) {
        this.liveChatId = str;
        return this;
    }

    public final LiveBroadcastSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final LiveBroadcastSnippet setScheduledEndTime(l lVar) {
        this.scheduledEndTime = lVar;
        return this;
    }

    public final LiveBroadcastSnippet setScheduledStartTime(l lVar) {
        this.scheduledStartTime = lVar;
        return this;
    }

    public final LiveBroadcastSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final LiveBroadcastSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
