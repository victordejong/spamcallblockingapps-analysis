package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoMonetizationDetails.class */
public final class VideoMonetizationDetails extends GenericJson {
    @q
    private AccessPolicy access;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoMonetizationDetails clone() {
        return (VideoMonetizationDetails) super.clone();
    }

    public final AccessPolicy getAccess() {
        return this.access;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoMonetizationDetails set(String str, Object obj) {
        return (VideoMonetizationDetails) super.set(str, obj);
    }

    public final VideoMonetizationDetails setAccess(AccessPolicy accessPolicy) {
        this.access = accessPolicy;
        return this;
    }
}
