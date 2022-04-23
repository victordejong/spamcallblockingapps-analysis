package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSectionLocalization.class */
public final class ChannelSectionLocalization extends GenericJson {
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelSectionLocalization clone() {
        return (ChannelSectionLocalization) super.clone();
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelSectionLocalization set(String str, Object obj) {
        return (ChannelSectionLocalization) super.set(str, obj);
    }

    public final ChannelSectionLocalization setTitle(String str) {
        this.title = str;
        return this;
    }
}
