package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportReasonListResponse.class */
public final class VideoAbuseReportReasonListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<VideoAbuseReportReason> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(VideoAbuseReportReason.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoAbuseReportReasonListResponse clone() {
        return (VideoAbuseReportReasonListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<VideoAbuseReportReason> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoAbuseReportReasonListResponse set(String str, Object obj) {
        return (VideoAbuseReportReasonListResponse) super.set(str, obj);
    }

    public final VideoAbuseReportReasonListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final VideoAbuseReportReasonListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final VideoAbuseReportReasonListResponse setItems(List<VideoAbuseReportReason> list) {
        this.items = list;
        return this;
    }

    public final VideoAbuseReportReasonListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final VideoAbuseReportReasonListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
