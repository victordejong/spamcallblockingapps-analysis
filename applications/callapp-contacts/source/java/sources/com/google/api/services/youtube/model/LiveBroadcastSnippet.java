package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastSnippet.class */
public final class LiveBroadcastSnippet extends GenericJson {
    @AbstractC15247q
    private C15237l actualEndTime;
    @AbstractC15247q
    private C15237l actualStartTime;
    @AbstractC15247q
    private String broadcastType;
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private Boolean isDefaultBroadcast;
    @AbstractC15247q
    private String liveChatId;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private C15237l scheduledEndTime;
    @AbstractC15247q
    private C15237l scheduledStartTime;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveBroadcastSnippet clone() {
        return (LiveBroadcastSnippet) super.clone();
    }

    public final C15237l getActualEndTime() {
        return this.actualEndTime;
    }

    public final C15237l getActualStartTime() {
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

    public final C15237l getPublishedAt() {
        return this.publishedAt;
    }

    public final C15237l getScheduledEndTime() {
        return this.scheduledEndTime;
    }

    public final C15237l getScheduledStartTime() {
        return this.scheduledStartTime;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveBroadcastSnippet set(String str, Object obj) {
        return (LiveBroadcastSnippet) super.set(str, obj);
    }

    public final LiveBroadcastSnippet setActualEndTime(C15237l c15237l) {
        this.actualEndTime = c15237l;
        return this;
    }

    public final LiveBroadcastSnippet setActualStartTime(C15237l c15237l) {
        this.actualStartTime = c15237l;
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

    public final LiveBroadcastSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final LiveBroadcastSnippet setScheduledEndTime(C15237l c15237l) {
        this.scheduledEndTime = c15237l;
        return this;
    }

    public final LiveBroadcastSnippet setScheduledStartTime(C15237l c15237l) {
        this.scheduledStartTime = c15237l;
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
