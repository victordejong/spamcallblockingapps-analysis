package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SuperChatEvent.class */
public final class SuperChatEvent extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55593id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private SuperChatEventSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SuperChatEvent clone() {
        return (SuperChatEvent) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55593id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final SuperChatEventSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SuperChatEvent set(String str, Object obj) {
        return (SuperChatEvent) super.set(str, obj);
    }

    public final SuperChatEvent setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final SuperChatEvent setId(String str) {
        this.f55593id = str;
        return this;
    }

    public final SuperChatEvent setKind(String str) {
        this.kind = str;
        return this;
    }

    public final SuperChatEvent setSnippet(SuperChatEventSnippet superChatEventSnippet) {
        this.snippet = superChatEventSnippet;
        return this;
    }
}
