package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/InvideoPosition.class */
public final class InvideoPosition extends GenericJson {
    @q
    private String cornerPosition;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final InvideoPosition clone() {
        return (InvideoPosition) super.clone();
    }

    public final String getCornerPosition() {
        return this.cornerPosition;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final InvideoPosition set(String str, Object obj) {
        return (InvideoPosition) super.set(str, obj);
    }

    public final InvideoPosition setCornerPosition(String str) {
        this.cornerPosition = str;
        return this;
    }

    public final InvideoPosition setType(String str) {
        this.type = str;
        return this;
    }
}
