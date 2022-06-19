package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSectionListResponse.class */
public final class ChannelSectionListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<ChannelSection> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(ChannelSection.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSectionListResponse clone() {
        return (ChannelSectionListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<ChannelSection> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelSectionListResponse set(String str, Object obj) {
        return (ChannelSectionListResponse) super.set(str, obj);
    }

    public final ChannelSectionListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final ChannelSectionListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final ChannelSectionListResponse setItems(List<ChannelSection> list) {
        this.items = list;
        return this;
    }

    public final ChannelSectionListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ChannelSectionListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
