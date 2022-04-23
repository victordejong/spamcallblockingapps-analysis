package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoFileDetailsVideoStream.class */
public final class VideoFileDetailsVideoStream extends GenericJson {
    @q
    private Double aspectRatio;
    @q
    @JsonString
    private BigInteger bitrateBps;
    @q
    private String codec;
    @q
    private Double frameRateFps;
    @q
    private Long heightPixels;
    @q
    private String rotation;
    @q
    private String vendor;
    @q
    private Long widthPixels;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoFileDetailsVideoStream set(String str, Object obj) {
        return (VideoFileDetailsVideoStream) super.set(str, obj);
    }

    public final VideoFileDetailsVideoStream setAspectRatio(Double d2) {
        this.aspectRatio = d2;
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

    public final VideoFileDetailsVideoStream setFrameRateFps(Double d2) {
        this.frameRateFps = d2;
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
