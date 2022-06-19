package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamContentDetails.class */
public final class LiveStreamContentDetails extends GenericJson {
    @AbstractC15247q
    private String closedCaptionsIngestionUrl;
    @AbstractC15247q
    private Boolean isReusable;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveStreamContentDetails clone() {
        return (LiveStreamContentDetails) super.clone();
    }

    public final String getClosedCaptionsIngestionUrl() {
        return this.closedCaptionsIngestionUrl;
    }

    public final Boolean getIsReusable() {
        return this.isReusable;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveStreamContentDetails set(String str, Object obj) {
        return (LiveStreamContentDetails) super.set(str, obj);
    }

    public final LiveStreamContentDetails setClosedCaptionsIngestionUrl(String str) {
        this.closedCaptionsIngestionUrl = str;
        return this;
    }

    public final LiveStreamContentDetails setIsReusable(Boolean bool) {
        this.isReusable = bool;
        return this;
    }
}
