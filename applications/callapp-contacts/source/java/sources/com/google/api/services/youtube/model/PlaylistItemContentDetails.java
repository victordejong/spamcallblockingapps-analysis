package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemContentDetails.class */
public final class PlaylistItemContentDetails extends GenericJson {
    @AbstractC15247q
    private String endAt;
    @AbstractC15247q
    private String note;
    @AbstractC15247q
    private String startAt;
    @AbstractC15247q
    private String videoId;
    @AbstractC15247q
    private C15237l videoPublishedAt;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getVideoPublishedAt() {
        return this.videoPublishedAt;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final PlaylistItemContentDetails setVideoPublishedAt(C15237l c15237l) {
        this.videoPublishedAt = c15237l;
        return this;
    }
}
