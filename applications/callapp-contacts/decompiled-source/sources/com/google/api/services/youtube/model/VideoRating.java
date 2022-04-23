package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoRating.class */
public final class VideoRating extends GenericJson {
    @q
    private String rating;
    @q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoRating clone() {
        return (VideoRating) super.clone();
    }

    public final String getRating() {
        return this.rating;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoRating set(String str, Object obj) {
        return (VideoRating) super.set(str, obj);
    }

    public final VideoRating setRating(String str) {
        this.rating = str;
        return this;
    }

    public final VideoRating setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
