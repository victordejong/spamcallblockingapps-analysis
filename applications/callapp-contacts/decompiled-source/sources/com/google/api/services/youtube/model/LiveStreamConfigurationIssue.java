package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamConfigurationIssue.class */
public final class LiveStreamConfigurationIssue extends GenericJson {
    @q
    private String description;
    @q
    private String reason;
    @q
    private String severity;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
