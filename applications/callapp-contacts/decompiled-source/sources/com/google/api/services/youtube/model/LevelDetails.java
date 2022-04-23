package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LevelDetails.class */
public final class LevelDetails extends GenericJson {
    @q
    private String displayName;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LevelDetails clone() {
        return (LevelDetails) super.clone();
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LevelDetails set(String str, Object obj) {
        return (LevelDetails) super.set(str, obj);
    }

    public final LevelDetails setDisplayName(String str) {
        this.displayName = str;
        return this;
    }
}
