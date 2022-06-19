package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistStatus.class */
public final class PlaylistStatus extends GenericJson {
    @AbstractC15247q
    private String privacyStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PlaylistStatus clone() {
        return (PlaylistStatus) super.clone();
    }

    public final String getPrivacyStatus() {
        return this.privacyStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final PlaylistStatus set(String str, Object obj) {
        return (PlaylistStatus) super.set(str, obj);
    }

    public final PlaylistStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }
}
