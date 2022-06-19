package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamHealthStatus.class */
public final class LiveStreamHealthStatus extends GenericJson {
    @AbstractC15247q
    private List<LiveStreamConfigurationIssue> configurationIssues;
    @AbstractC15247q
    @JsonString
    private BigInteger lastUpdateTimeSeconds;
    @AbstractC15247q
    private String status;

    static {
        C15232j.m9242a(LiveStreamConfigurationIssue.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveStreamHealthStatus clone() {
        return (LiveStreamHealthStatus) super.clone();
    }

    public final List<LiveStreamConfigurationIssue> getConfigurationIssues() {
        return this.configurationIssues;
    }

    public final BigInteger getLastUpdateTimeSeconds() {
        return this.lastUpdateTimeSeconds;
    }

    public final String getStatus() {
        return this.status;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveStreamHealthStatus set(String str, Object obj) {
        return (LiveStreamHealthStatus) super.set(str, obj);
    }

    public final LiveStreamHealthStatus setConfigurationIssues(List<LiveStreamConfigurationIssue> list) {
        this.configurationIssues = list;
        return this;
    }

    public final LiveStreamHealthStatus setLastUpdateTimeSeconds(BigInteger bigInteger) {
        this.lastUpdateTimeSeconds = bigInteger;
        return this;
    }

    public final LiveStreamHealthStatus setStatus(String str) {
        this.status = str;
        return this;
    }
}
