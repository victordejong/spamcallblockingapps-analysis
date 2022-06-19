package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/StartPageToken.class */
public final class StartPageToken extends C8666b {
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String startPageToken;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public StartPageToken clone() {
        return (StartPageToken) super.clone();
    }

    public String getKind() {
        return this.kind;
    }

    public String getStartPageToken() {
        return this.startPageToken;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public StartPageToken set(String str, Object obj) {
        return (StartPageToken) super.set(str, obj);
    }

    public StartPageToken setKind(String str) {
        this.kind = str;
        return this;
    }

    public StartPageToken setStartPageToken(String str) {
        this.startPageToken = str;
        return this;
    }
}
