package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/GeneratedIds.class */
public final class GeneratedIds extends GenericJson {
    @AbstractC15247q
    private List<String> ids;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String space;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
