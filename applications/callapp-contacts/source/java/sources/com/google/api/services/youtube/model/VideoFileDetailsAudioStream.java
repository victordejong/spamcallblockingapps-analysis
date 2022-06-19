package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoFileDetailsAudioStream.class */
public final class VideoFileDetailsAudioStream extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger bitrateBps;
    @AbstractC15247q
    private Long channelCount;
    @AbstractC15247q
    private String codec;
    @AbstractC15247q
    private String vendor;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoFileDetailsAudioStream clone() {
        return (VideoFileDetailsAudioStream) super.clone();
    }

    public final BigInteger getBitrateBps() {
        return this.bitrateBps;
    }

    public final Long getChannelCount() {
        return this.channelCount;
    }

    public final String getCodec() {
        return this.codec;
    }

    public final String getVendor() {
        return this.vendor;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoFileDetailsAudioStream set(String str, Object obj) {
        return (VideoFileDetailsAudioStream) super.set(str, obj);
    }

    public final VideoFileDetailsAudioStream setBitrateBps(BigInteger bigInteger) {
        this.bitrateBps = bigInteger;
        return this;
    }

    public final VideoFileDetailsAudioStream setChannelCount(Long l) {
        this.channelCount = l;
        return this;
    }

    public final VideoFileDetailsAudioStream setCodec(String str) {
        this.codec = str;
        return this;
    }

    public final VideoFileDetailsAudioStream setVendor(String str) {
        this.vendor = str;
        return this;
    }
}
