package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ThumbnailDetails.class */
public final class ThumbnailDetails extends GenericJson {
    @q(a = "default")
    private Thumbnail default__;
    @q
    private Thumbnail high;
    @q
    private Thumbnail maxres;
    @q
    private Thumbnail medium;
    @q
    private Thumbnail standard;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ThumbnailDetails clone() {
        return (ThumbnailDetails) super.clone();
    }

    public final Thumbnail getDefault() {
        return this.default__;
    }

    public final Thumbnail getHigh() {
        return this.high;
    }

    public final Thumbnail getMaxres() {
        return this.maxres;
    }

    public final Thumbnail getMedium() {
        return this.medium;
    }

    public final Thumbnail getStandard() {
        return this.standard;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ThumbnailDetails set(String str, Object obj) {
        return (ThumbnailDetails) super.set(str, obj);
    }

    public final ThumbnailDetails setDefault(Thumbnail thumbnail) {
        this.default__ = thumbnail;
        return this;
    }

    public final ThumbnailDetails setHigh(Thumbnail thumbnail) {
        this.high = thumbnail;
        return this;
    }

    public final ThumbnailDetails setMaxres(Thumbnail thumbnail) {
        this.maxres = thumbnail;
        return this;
    }

    public final ThumbnailDetails setMedium(Thumbnail thumbnail) {
        this.medium = thumbnail;
        return this;
    }

    public final ThumbnailDetails setStandard(Thumbnail thumbnail) {
        this.standard = thumbnail;
        return this;
    }
}
