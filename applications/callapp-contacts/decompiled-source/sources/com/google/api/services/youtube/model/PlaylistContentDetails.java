package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistContentDetails.class */
public final class PlaylistContentDetails extends GenericJson {
    @q
    private Long itemCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistContentDetails clone() {
        return (PlaylistContentDetails) super.clone();
    }

    public final Long getItemCount() {
        return this.itemCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistContentDetails set(String str, Object obj) {
        return (PlaylistContentDetails) super.set(str, obj);
    }

    public final PlaylistContentDetails setItemCount(Long l) {
        this.itemCount = l;
        return this;
    }
}
