package com.google.api.services.drive.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/GeneratedIds.class */
public final class GeneratedIds extends GenericJson {
    @q
    private List<String> ids;
    @q
    private String kind;
    @q
    private String space;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final GeneratedIds clone() {
        return (GeneratedIds) super.clone();
    }

    public final List<String> getIds() {
        return this.ids;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getSpace() {
        return this.space;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final GeneratedIds set(String str, Object obj) {
        return (GeneratedIds) super.set(str, obj);
    }

    public final GeneratedIds setIds(List<String> list) {
        this.ids = list;
        return this;
    }

    public final GeneratedIds setKind(String str) {
        this.kind = str;
        return this;
    }

    public final GeneratedIds setSpace(String str) {
        this.space = str;
        return this;
    }
}
