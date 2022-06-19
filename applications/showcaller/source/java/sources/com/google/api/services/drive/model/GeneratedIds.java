package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/GeneratedIds.class */
public final class GeneratedIds extends C8666b {
    @AbstractC8720o
    private List<String> ids;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String space;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GeneratedIds clone() {
        return (GeneratedIds) super.clone();
    }

    public List<String> getIds() {
        return this.ids;
    }

    public String getKind() {
        return this.kind;
    }

    public String getSpace() {
        return this.space;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public GeneratedIds set(String str, Object obj) {
        return (GeneratedIds) super.set(str, obj);
    }

    public GeneratedIds setIds(List<String> list) {
        this.ids = list;
        return this;
    }

    public GeneratedIds setKind(String str) {
        this.kind = str;
        return this;
    }

    public GeneratedIds setSpace(String str) {
        this.space = str;
        return this;
    }
}
