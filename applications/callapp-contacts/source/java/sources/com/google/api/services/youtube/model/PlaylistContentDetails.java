package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistContentDetails.class */
public final class PlaylistContentDetails extends GenericJson {
    @AbstractC15247q
    private Long itemCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PlaylistContentDetails clone() {
        return (PlaylistContentDetails) super.clone();
    }

    public final Long getItemCount() {
        return this.itemCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final PlaylistContentDetails set(String str, Object obj) {
        return (PlaylistContentDetails) super.set(str, obj);
    }

    public final PlaylistContentDetails setItemCount(Long l) {
        this.itemCount = l;
        return this;
    }
}
