package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ThumbnailSetResponse.class */
public final class ThumbnailSetResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<ThumbnailDetails> items;
    @q
    private String kind;
    @q
    private String visitorId;

    static {
        j.a(ThumbnailDetails.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
