package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/StartPageToken.class */
public final class StartPageToken extends GenericJson {
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String startPageToken;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final StartPageToken clone() {
        return (StartPageToken) super.clone();
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getStartPageToken() {
        return this.startPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final StartPageToken set(String str, Object obj) {
        return (StartPageToken) super.set(str, obj);
    }

    public final StartPageToken setKind(String str) {
        this.kind = str;
        return this;
    }

    public final StartPageToken setStartPageToken(String str) {
        this.startPageToken = str;
        return this;
    }
}
