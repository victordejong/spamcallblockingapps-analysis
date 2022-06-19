package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelLocalization.class */
public final class ChannelLocalization extends GenericJson {
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelLocalization clone() {
        return (ChannelLocalization) super.clone();
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelLocalization set(String str, Object obj) {
        return (ChannelLocalization) super.set(str, obj);
    }

    public final ChannelLocalization setDescription(String str) {
        this.description = str;
        return this;
    }

    public final ChannelLocalization setTitle(String str) {
        this.title = str;
        return this;
    }
}
