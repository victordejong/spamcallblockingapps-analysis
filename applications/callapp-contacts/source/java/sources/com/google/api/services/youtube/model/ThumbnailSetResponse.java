package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ThumbnailSetResponse.class */
public final class ThumbnailSetResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<ThumbnailDetails> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(ThumbnailDetails.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ThumbnailSetResponse clone() {
        return (ThumbnailSetResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<ThumbnailDetails> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ThumbnailSetResponse set(String str, Object obj) {
        return (ThumbnailSetResponse) super.set(str, obj);
    }

    public final ThumbnailSetResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final ThumbnailSetResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final ThumbnailSetResponse setItems(List<ThumbnailDetails> list) {
        this.items = list;
        return this;
    }

    public final ThumbnailSetResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ThumbnailSetResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
