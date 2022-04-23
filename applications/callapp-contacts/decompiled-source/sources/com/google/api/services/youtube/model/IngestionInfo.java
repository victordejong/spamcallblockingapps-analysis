package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/IngestionInfo.class */
public final class IngestionInfo extends GenericJson {
    @q
    private String backupIngestionAddress;
    @q
    private String ingestionAddress;
    @q
    private String streamName;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
