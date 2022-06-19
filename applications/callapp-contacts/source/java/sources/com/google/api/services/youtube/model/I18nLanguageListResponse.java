package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nLanguageListResponse.class */
public final class I18nLanguageListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<I18nLanguage> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(I18nLanguage.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final I18nLanguageListResponse clone() {
        return (I18nLanguageListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<I18nLanguage> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final I18nLanguageListResponse set(String str, Object obj) {
        return (I18nLanguageListResponse) super.set(str, obj);
    }

    public final I18nLanguageListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final I18nLanguageListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final I18nLanguageListResponse setItems(List<I18nLanguage> list) {
        this.items = list;
        return this;
    }

    public final I18nLanguageListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final I18nLanguageListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
