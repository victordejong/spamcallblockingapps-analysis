package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemStatus.class */
public final class PlaylistItemStatus extends GenericJson {
    @q
    private String privacyStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistItemStatus clone() {
        return (PlaylistItemStatus) super.clone();
    }

    public final String getPrivacyStatus() {
        return this.privacyStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistItemStatus set(String str, Object obj) {
        return (PlaylistItemStatus) super.set(str, obj);
    }

    public final PlaylistItemStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }
}
