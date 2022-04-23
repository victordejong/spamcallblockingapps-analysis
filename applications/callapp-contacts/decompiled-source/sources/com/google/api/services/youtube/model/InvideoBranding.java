package com.google.api.services.youtube.model;

import com.google.api.client.a.d;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/InvideoBranding.class */
public final class InvideoBranding extends GenericJson {
    @q
    private String imageBytes;
    @q
    private String imageUrl;
    @q
    private InvideoPosition position;
    @q
    private String targetChannelId;
    @q
    private InvideoTiming timing;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final InvideoBranding clone() {
        return (InvideoBranding) super.clone();
    }

    public final byte[] decodeImageBytes() {
        return d.a(this.imageBytes);
    }

    public final InvideoBranding encodeImageBytes(byte[] bArr) {
        this.imageBytes = d.a(bArr);
        return this;
    }

    public final String getImageBytes() {
        return this.imageBytes;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final InvideoPosition getPosition() {
        return this.position;
    }

    public final String getTargetChannelId() {
        return this.targetChannelId;
    }

    public final InvideoTiming getTiming() {
        return this.timing;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final InvideoBranding set(String str, Object obj) {
        return (InvideoBranding) super.set(str, obj);
    }

    public final InvideoBranding setImageBytes(String str) {
        this.imageBytes = str;
        return this;
    }

    public final InvideoBranding setImageUrl(String str) {
        this.imageUrl = str;
        return this;
    }

    public final InvideoBranding setPosition(InvideoPosition invideoPosition) {
        this.position = invideoPosition;
        return this;
    }

    public final InvideoBranding setTargetChannelId(String str) {
        this.targetChannelId = str;
        return this;
    }

    public final InvideoBranding setTiming(InvideoTiming invideoTiming) {
        this.timing = invideoTiming;
        return this;
    }
}
