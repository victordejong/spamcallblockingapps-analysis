package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemContentDetails.class */
public final class PlaylistItemContentDetails extends GenericJson {
    @q
    private String endAt;
    @q
    private String note;
    @q
    private String startAt;
    @q
    private String videoId;
    @q
    private l videoPublishedAt;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistItemContentDetails clone() {
        return (PlaylistItemContentDetails) super.clone();
    }

    public final String getEndAt() {
        return this.endAt;
    }

    public final String getNote() {
        return this.note;
    }

    public final String getStartAt() {
        return this.startAt;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final l getVideoPublishedAt() {
        return this.videoPublishedAt;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistItemContentDetails set(String str, Object obj) {
        return (PlaylistItemContentDetails) super.set(str, obj);
    }

    public final PlaylistItemContentDetails setEndAt(String str) {
        this.endAt = str;
        return this;
    }

    public final PlaylistItemContentDetails setNote(String str) {
        this.note = str;
        return this;
    }

    public final PlaylistItemContentDetails setStartAt(String str) {
        this.startAt = str;
        return this;
    }

    public final PlaylistItemContentDetails setVideoId(String str) {
        this.videoId = str;
        return this;
    }

    public final PlaylistItemContentDetails setVideoPublishedAt(l lVar) {
        this.videoPublishedAt = lVar;
        return this;
    }
}
