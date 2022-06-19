package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoGetRatingResponse.class */
public final class VideoGetRatingResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<VideoRating> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String visitorId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoGetRatingResponse clone() {
        return (VideoGetRatingResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<VideoRating> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoGetRatingResponse set(String str, Object obj) {
        return (VideoGetRatingResponse) super.set(str, obj);
    }

    public final VideoGetRatingResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final VideoGetRatingResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final VideoGetRatingResponse setItems(List<VideoRating> list) {
        this.items = list;
        return this;
    }

    public final VideoGetRatingResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final VideoGetRatingResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
