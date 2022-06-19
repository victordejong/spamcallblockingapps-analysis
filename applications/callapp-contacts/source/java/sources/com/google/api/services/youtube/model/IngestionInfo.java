package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/IngestionInfo.class */
public final class IngestionInfo extends GenericJson {
    @AbstractC15247q
    private String backupIngestionAddress;
    @AbstractC15247q
    private String ingestionAddress;
    @AbstractC15247q
    private String streamName;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final IngestionInfo clone() {
        return (IngestionInfo) super.clone();
    }

    public final String getBackupIngestionAddress() {
        return this.backupIngestionAddress;
    }

    public final String getIngestionAddress() {
        return this.ingestionAddress;
    }

    public final String getStreamName() {
        return this.streamName;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final IngestionInfo set(String str, Object obj) {
        return (IngestionInfo) super.set(str, obj);
    }

    public final IngestionInfo setBackupIngestionAddress(String str) {
        this.backupIngestionAddress = str;
        return this;
    }

    public final IngestionInfo setIngestionAddress(String str) {
        this.ingestionAddress = str;
        return this;
    }

    public final IngestionInfo setStreamName(String str) {
        this.streamName = str;
        return this;
    }
}
