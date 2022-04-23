package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SuperStickerMetadata.class */
public final class SuperStickerMetadata extends GenericJson {
    @q
    private String altText;
    @q
    private String altTextLanguage;
    @q
    private String stickerId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SuperStickerMetadata clone() {
        return (SuperStickerMetadata) super.clone();
    }

    public final String getAltText() {
        return this.altText;
    }

    public final String getAltTextLanguage() {
        return this.altTextLanguage;
    }

    public final String getStickerId() {
        return this.stickerId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SuperStickerMetadata set(String str, Object obj) {
        return (SuperStickerMetadata) super.set(str, obj);
    }

    public final SuperStickerMetadata setAltText(String str) {
        this.altText = str;
        return this;
    }

    public final SuperStickerMetadata setAltTextLanguage(String str) {
        this.altTextLanguage = str;
        return this;
    }

    public final SuperStickerMetadata setStickerId(String str) {
        this.stickerId = str;
        return this;
    }
}
