package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportSecondaryReason.class */
public final class VideoAbuseReportSecondaryReason extends GenericJson {
    @q
    private String id;
    @q
    private String label;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoAbuseReportSecondaryReason clone() {
        return (VideoAbuseReportSecondaryReason) super.clone();
    }

    public final String getId() {
        return this.id;
    }

    public final String getLabel() {
        return this.label;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoAbuseReportSecondaryReason set(String str, Object obj) {
        return (VideoAbuseReportSecondaryReason) super.set(str, obj);
    }

    public final VideoAbuseReportSecondaryReason setId(String str) {
        this.id = str;
        return this;
    }

    public final VideoAbuseReportSecondaryReason setLabel(String str) {
        this.label = str;
        return this;
    }
}
