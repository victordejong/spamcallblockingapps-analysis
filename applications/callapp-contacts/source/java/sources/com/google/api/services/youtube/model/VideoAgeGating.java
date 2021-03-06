package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAgeGating.class */
public final class VideoAgeGating extends GenericJson {
    @AbstractC15247q
    private Boolean alcoholContent;
    @AbstractC15247q
    private Boolean restricted;
    @AbstractC15247q
    private String videoGameRating;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoAgeGating clone() {
        return (VideoAgeGating) super.clone();
    }

    public final Boolean getAlcoholContent() {
        return this.alcoholContent;
    }

    public final Boolean getRestricted() {
        return this.restricted;
    }

    public final String getVideoGameRating() {
        return this.videoGameRating;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoAgeGating set(String str, Object obj) {
        return (VideoAgeGating) super.set(str, obj);
    }

    public final VideoAgeGating setAlcoholContent(Boolean bool) {
        this.alcoholContent = bool;
        return this;
    }

    public final VideoAgeGating setRestricted(Boolean bool) {
        this.restricted = bool;
        return this;
    }

    public final VideoAgeGating setVideoGameRating(String str) {
        this.videoGameRating = str;
        return this;
    }
}
