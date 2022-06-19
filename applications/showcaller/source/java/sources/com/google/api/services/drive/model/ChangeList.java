package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/ChangeList.class */
public final class ChangeList extends C8666b {
    @AbstractC8720o
    private List<Change> changes;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String newStartPageToken;
    @AbstractC8720o
    private String nextPageToken;

    static {
        C8712j.m2874j(Change.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ChangeList clone() {
        return (ChangeList) super.clone();
    }

    public List<Change> getChanges() {
        return this.changes;
    }

    public String getKind() {
        return this.kind;
    }

    public String getNewStartPageToken() {
        return this.newStartPageToken;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public ChangeList set(String str, Object obj) {
        return (ChangeList) super.set(str, obj);
    }

    public ChangeList setChanges(List<Change> list) {
        this.changes = list;
        return this;
    }

    public ChangeList setKind(String str) {
        this.kind = str;
        return this;
    }

    public ChangeList setNewStartPageToken(String str) {
        this.newStartPageToken = str;
        return this;
    }

    public ChangeList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
