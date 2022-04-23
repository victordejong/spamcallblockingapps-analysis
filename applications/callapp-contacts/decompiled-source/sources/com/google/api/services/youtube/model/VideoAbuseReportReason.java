package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportReason.class */
public final class VideoAbuseReportReason extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private VideoAbuseReportReasonSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoAbuseReportReason clone() {
        return (VideoAbuseReportReason) super.clone();
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

    public final VideoAbuseReportReasonSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoAbuseReportReason set(String str, Object obj) {
        return (VideoAbuseReportReason) super.set(str, obj);
    }

    public final VideoAbuseReportReason setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final VideoAbuseReportReason setId(String str) {
        this.id = str;
        return this;
    }

    public final VideoAbuseReportReason setKind(String str) {
        this.kind = str;
        return this;
    }

    public final VideoAbuseReportReason setSnippet(VideoAbuseReportReasonSnippet videoAbuseReportReasonSnippet) {
        this.snippet = videoAbuseReportReasonSnippet;
        return this;
    }
}
