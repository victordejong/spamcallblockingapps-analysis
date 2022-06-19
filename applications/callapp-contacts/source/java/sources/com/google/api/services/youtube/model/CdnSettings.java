package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CdnSettings.class */
public final class CdnSettings extends GenericJson {
    @AbstractC15247q
    private String format;
    @AbstractC15247q
    private String frameRate;
    @AbstractC15247q
    private IngestionInfo ingestionInfo;
    @AbstractC15247q
    private String ingestionType;
    @AbstractC15247q
    private String resolution;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CdnSettings clone() {
        return (CdnSettings) super.clone();
    }

    public final String getFormat() {
        return this.format;
    }

    public final String getFrameRate() {
        return this.frameRate;
    }

    public final IngestionInfo getIngestionInfo() {
        return this.ingestionInfo;
    }

    public final String getIngestionType() {
        return this.ingestionType;
    }

    public final String getResolution() {
        return this.resolution;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CdnSettings set(String str, Object obj) {
        return (CdnSettings) super.set(str, obj);
    }

    public final CdnSettings setFormat(String str) {
        this.format = str;
        return this;
    }

    public final CdnSettings setFrameRate(String str) {
        this.frameRate = str;
        return this;
    }

    public final CdnSettings setIngestionInfo(IngestionInfo ingestionInfo) {
        this.ingestionInfo = ingestionInfo;
        return this;
    }

    public final CdnSettings setIngestionType(String str) {
        this.ingestionType = str;
        return this;
    }

    public final CdnSettings setResolution(String str) {
        this.resolution = str;
        return this;
    }
}
