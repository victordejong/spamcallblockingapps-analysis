package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/GuideCategorySnippet.class */
public final class GuideCategorySnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final GuideCategorySnippet clone() {
        return (GuideCategorySnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final GuideCategorySnippet set(String str, Object obj) {
        return (GuideCategorySnippet) super.set(str, obj);
    }

    public final GuideCategorySnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final GuideCategorySnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
