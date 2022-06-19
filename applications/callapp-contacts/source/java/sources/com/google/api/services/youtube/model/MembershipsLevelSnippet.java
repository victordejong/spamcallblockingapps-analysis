package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsLevelSnippet.class */
public final class MembershipsLevelSnippet extends GenericJson {
    @AbstractC15247q
    private String creatorChannelId;
    @AbstractC15247q
    private LevelDetails levelDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MembershipsLevelSnippet clone() {
        return (MembershipsLevelSnippet) super.clone();
    }

    public final String getCreatorChannelId() {
        return this.creatorChannelId;
    }

    public final LevelDetails getLevelDetails() {
        return this.levelDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
