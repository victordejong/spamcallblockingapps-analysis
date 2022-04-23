package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsLevelSnippet.class */
public final class MembershipsLevelSnippet extends GenericJson {
    @q
    private String creatorChannelId;
    @q
    private LevelDetails levelDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MembershipsLevelSnippet clone() {
        return (MembershipsLevelSnippet) super.clone();
    }

    public final String getCreatorChannelId() {
        return this.creatorChannelId;
    }

    public final LevelDetails getLevelDetails() {
        return this.levelDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final MembershipsLevelSnippet set(String str, Object obj) {
        return (MembershipsLevelSnippet) super.set(str, obj);
    }

    public final MembershipsLevelSnippet setCreatorChannelId(String str) {
        this.creatorChannelId = str;
        return this;
    }

    public final MembershipsLevelSnippet setLevelDetails(LevelDetails levelDetails) {
        this.levelDetails = levelDetails;
        return this;
    }
}
