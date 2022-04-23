package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoProjectDetails.class */
public final class VideoProjectDetails extends GenericJson {
    @q
    private List<String> tags;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoProjectDetails clone() {
        return (VideoProjectDetails) super.clone();
    }

    public final List<String> getTags() {
        return this.tags;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoProjectDetails set(String str, Object obj) {
        return (VideoProjectDetails) super.set(str, obj);
    }

    public final VideoProjectDetails setTags(List<String> list) {
        this.tags = list;
        return this;
    }
}
