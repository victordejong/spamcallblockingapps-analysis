package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportReasonListResponse.class */
public final class VideoAbuseReportReasonListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<VideoAbuseReportReason> items;
    @q
    private String kind;
    @q
    private String visitorId;

    static {
        j.a(VideoAbuseReportReason.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
