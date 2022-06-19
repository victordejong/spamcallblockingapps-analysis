package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15223d;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/InvideoBranding.class */
public final class InvideoBranding extends GenericJson {
    @AbstractC15247q
    private String imageBytes;
    @AbstractC15247q
    private String imageUrl;
    @AbstractC15247q
    private InvideoPosition position;
    @AbstractC15247q
    private String targetChannelId;
    @AbstractC15247q
    private InvideoTiming timing;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final InvideoBranding clone() {
        return (InvideoBranding) super.clone();
    }

    public final byte[] decodeImageBytes() {
        return C15223d.m9251a(this.imageBytes);
    }

    public final InvideoBranding encodeImageBytes(byte[] bArr) {
        this.imageBytes = C15223d.m9250a(bArr);
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
