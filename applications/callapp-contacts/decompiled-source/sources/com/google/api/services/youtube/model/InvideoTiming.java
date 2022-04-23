package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/InvideoTiming.class */
public final class InvideoTiming extends GenericJson {
    @q
    @JsonString
    private BigInteger durationMs;
    @q
    @JsonString
    private BigInteger offsetMs;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final InvideoTiming clone() {
        return (InvideoTiming) super.clone();
    }

    public final BigInteger getDurationMs() {
        return this.durationMs;
    }

    public final BigInteger getOffsetMs() {
        return this.offsetMs;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final InvideoTiming set(String str, Object obj) {
        return (InvideoTiming) super.set(str, obj);
    }

    public final InvideoTiming setDurationMs(BigInteger bigInteger) {
        this.durationMs = bigInteger;
        return this;
    }

    public final InvideoTiming setOffsetMs(BigInteger bigInteger) {
        this.offsetMs = bigInteger;
        return this;
    }

    public final InvideoTiming setType(String str) {
        this.type = str;
        return this;
    }
}
