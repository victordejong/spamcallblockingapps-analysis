package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReportSecondaryReason.class */
public final class VideoAbuseReportSecondaryReason extends GenericJson {
    @AbstractC15247q

    /* renamed from: id */
    private String f55596id;
    @AbstractC15247q
    private String label;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoAbuseReportSecondaryReason clone() {
        return (VideoAbuseReportSecondaryReason) super.clone();
    }

    public final String getId() {
        return this.f55596id;
    }

    public final String getLabel() {
        return this.label;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoAbuseReportSecondaryReason set(String str, Object obj) {
        return (VideoAbuseReportSecondaryReason) super.set(str, obj);
    }

    public final VideoAbuseReportSecondaryReason setId(String str) {
        this.f55596id = str;
        return this;
    }

    public final VideoAbuseReportSecondaryReason setLabel(String str) {
        this.label = str;
        return this;
    }
}
