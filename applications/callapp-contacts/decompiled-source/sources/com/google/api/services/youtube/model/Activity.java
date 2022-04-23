package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Activity.class */
public final class Activity extends GenericJson {
    @q
    private ActivityContentDetails contentDetails;
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private ActivitySnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Activity clone() {
        return (Activity) super.clone();
    }

    public final ActivityContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final ActivitySnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Activity set(String str, Object obj) {
        return (Activity) super.set(str, obj);
    }

    public final Activity setContentDetails(ActivityContentDetails activityContentDetails) {
        this.contentDetails = activityContentDetails;
        return this;
    }

    public final Activity setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Activity setId(String str) {
        this.id = str;
        return this;
    }

    public final Activity setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Activity setSnippet(ActivitySnippet activitySnippet) {
        this.snippet = activitySnippet;
        return this;
    }
}
