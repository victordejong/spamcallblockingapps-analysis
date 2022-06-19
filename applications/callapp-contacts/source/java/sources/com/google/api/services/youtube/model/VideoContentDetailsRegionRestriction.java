package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoContentDetailsRegionRestriction.class */
public final class VideoContentDetailsRegionRestriction extends GenericJson {
    @AbstractC15247q
    private List<String> allowed;
    @AbstractC15247q
    private List<String> blocked;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoContentDetailsRegionRestriction clone() {
        return (VideoContentDetailsRegionRestriction) super.clone();
    }

    public final List<String> getAllowed() {
        return this.allowed;
    }

    public final List<String> getBlocked() {
        return this.blocked;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoContentDetailsRegionRestriction set(String str, Object obj) {
        return (VideoContentDetailsRegionRestriction) super.set(str, obj);
    }

    public final VideoContentDetailsRegionRestriction setAllowed(List<String> list) {
        this.allowed = list;
        return this;
    }

    public final VideoContentDetailsRegionRestriction setBlocked(List<String> list) {
        this.blocked = list;
        return this;
    }
}
