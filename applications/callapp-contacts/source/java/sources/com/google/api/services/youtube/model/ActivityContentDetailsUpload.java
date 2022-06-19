package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsUpload.class */
public final class ActivityContentDetailsUpload extends GenericJson {
    @AbstractC15247q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsUpload clone() {
        return (ActivityContentDetailsUpload) super.clone();
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsUpload set(String str, Object obj) {
        return (ActivityContentDetailsUpload) super.set(str, obj);
    }

    public final ActivityContentDetailsUpload setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
