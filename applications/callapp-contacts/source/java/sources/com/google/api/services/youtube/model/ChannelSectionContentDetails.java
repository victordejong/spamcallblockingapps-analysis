package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSectionContentDetails.class */
public final class ChannelSectionContentDetails extends GenericJson {
    @AbstractC15247q
    private List<String> channels;
    @AbstractC15247q
    private List<String> playlists;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSectionContentDetails clone() {
        return (ChannelSectionContentDetails) super.clone();
    }

    public final List<String> getChannels() {
        return this.channels;
    }

    public final List<String> getPlaylists() {
        return this.playlists;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelSectionContentDetails set(String str, Object obj) {
        return (ChannelSectionContentDetails) super.set(str, obj);
    }

    public final ChannelSectionContentDetails setChannels(List<String> list) {
        this.channels = list;
        return this;
    }

    public final ChannelSectionContentDetails setPlaylists(List<String> list) {
        this.playlists = list;
        return this;
    }
}
