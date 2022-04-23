package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress.class */
public final class VideoProcessingDetailsProcessingProgress extends GenericJson {
    @q
    @JsonString
    private BigInteger partsProcessed;
    @q
    @JsonString
    private BigInteger partsTotal;
    @q
    @JsonString
    private BigInteger timeLeftMs;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoProcessingDetailsProcessingProgress clone() {
        return (VideoProcessingDetailsProcessingProgress) super.clone();
    }

    public final BigInteger getPartsProcessed() {
        return this.partsProcessed;
    }

    public final BigInteger getPartsTotal() {
        return this.partsTotal;
    }

    public final BigInteger getTimeLeftMs() {
        return this.timeLeftMs;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoProcessingDetailsProcessingProgress set(String str, Object obj) {
        return (VideoProcessingDetailsProcessingProgress) super.set(str, obj);
    }

    public final VideoProcessingDetailsProcessingProgress setPartsProcessed(BigInteger bigInteger) {
        this.partsProcessed = bigInteger;
        return this;
    }

    public final VideoProcessingDetailsProcessingProgress setPartsTotal(BigInteger bigInteger) {
        this.partsTotal = bigInteger;
        return this;
    }

    public final VideoProcessingDetailsProcessingProgress setTimeLeftMs(BigInteger bigInteger) {
        this.timeLeftMs = bigInteger;
        return this;
    }
}
