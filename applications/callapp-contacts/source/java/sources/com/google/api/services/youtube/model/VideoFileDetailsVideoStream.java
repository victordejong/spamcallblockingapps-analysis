package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoFileDetailsVideoStream.class */
public final class VideoFileDetailsVideoStream extends GenericJson {
    @AbstractC15247q
    private Double aspectRatio;
    @AbstractC15247q
    @JsonString
    private BigInteger bitrateBps;
    @AbstractC15247q
    private String codec;
    @AbstractC15247q
    private Double frameRateFps;
    @AbstractC15247q
    private Long heightPixels;
    @AbstractC15247q
    private String rotation;
    @AbstractC15247q
    private String vendor;
    @AbstractC15247q
    private Long widthPixels;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoFileDetailsVideoStream clone() {
        return (VideoFileDetailsVideoStream) super.clone();
    }

    public final Double getAspectRatio() {
        return this.aspectRatio;
    }

    public final BigInteger getBitrateBps() {
        return this.bitrateBps;
    }

    public final String getCodec() {
        return this.codec;
    }

    public final Double getFrameRateFps() {
        return this.frameRateFps;
    }

    public final Long getHeightPixels() {
        return this.heightPixels;
    }

    public final String getRotation() {
        return this.rotation;
    }

    public final String getVendor() {
        return this.vendor;
    }

    public final Long getWidthPixels() {
        return this.widthPixels;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoFileDetailsVideoStream set(String str, Object obj) {
        return (VideoFileDetailsVideoStream) super.set(str, obj);
    }

    public final VideoFileDetailsVideoStream setAspectRatio(Double d) {
        this.aspectRatio = d;
        return this;
    }

    public final VideoFileDetailsVideoStream setBitrateBps(BigInteger bigInteger) {
        this.bitrateBps = bigInteger;
        return this;
    }

    public final VideoFileDetailsVideoStream setCodec(String str) {
        this.codec = str;
        return this;
    }

    public final VideoFileDetailsVideoStream setFrameRateFps(Double d) {
        this.frameRateFps = d;
        return this;
    }

    public final VideoFileDetailsVideoStream setHeightPixels(Long l) {
        this.heightPixels = l;
        return this;
    }

    public final VideoFileDetailsVideoStream setRotation(String str) {
        this.rotation = str;
        return this;
    }

    public final VideoFileDetailsVideoStream setVendor(String str) {
        this.vendor = str;
        return this;
    }

    public final VideoFileDetailsVideoStream setWidthPixels(Long l) {
        this.widthPixels = l;
        return this;
    }
}
