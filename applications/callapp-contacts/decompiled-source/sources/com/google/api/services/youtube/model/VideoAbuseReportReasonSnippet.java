package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportReasonSnippet.class */
public final class VideoAbuseReportReasonSnippet extends GenericJson {
    @q
    private String label;
    @q
    private List<VideoAbuseReportSecondaryReason> secondaryReasons;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoAbuseReportReasonSnippet clone() {
        return (VideoAbuseReportReasonSnippet) super.clone();
    }

    public final String getLabel() {
        return this.label;
    }

    public final List<VideoAbuseReportSecondaryReason> getSecondaryReasons() {
        return this.secondaryReasons;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoAbuseReportReasonSnippet set(String str, Object obj) {
        return (VideoAbuseReportReasonSnippet) super.set(str, obj);
    }

    public final VideoAbuseReportReasonSnippet setLabel(String str) {
        this.label = str;
        return this;
    }

    public final VideoAbuseReportReasonSnippet setSecondaryReasons(List<VideoAbuseReportSecondaryReason> list) {
        this.secondaryReasons = list;
        return this;
    }
}
