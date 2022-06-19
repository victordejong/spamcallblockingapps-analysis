package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamConfigurationIssue.class */
public final class LiveStreamConfigurationIssue extends GenericJson {
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String reason;
    @AbstractC15247q
    private String severity;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveStreamConfigurationIssue clone() {
        return (LiveStreamConfigurationIssue) super.clone();
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getReason() {
        return this.reason;
    }

    public final String getSeverity() {
        return this.severity;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveStreamConfigurationIssue set(String str, Object obj) {
        return (LiveStreamConfigurationIssue) super.set(str, obj);
    }

    public final LiveStreamConfigurationIssue setDescription(String str) {
        this.description = str;
        return this;
    }

    public final LiveStreamConfigurationIssue setReason(String str) {
        this.reason = str;
        return this;
    }

    public final LiveStreamConfigurationIssue setSeverity(String str) {
        this.severity = str;
        return this;
    }

    public final LiveStreamConfigurationIssue setType(String str) {
        this.type = str;
        return this;
    }
}
