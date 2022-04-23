package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/ChangeList.class */
public final class ChangeList extends GenericJson {
    @q
    private List<Change> changes;
    @q
    private String kind;
    @q
    private String newStartPageToken;
    @q
    private String nextPageToken;

    static {
        j.a(Change.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChangeList clone() {
        return (ChangeList) super.clone();
    }

    public final List<Change> getChanges() {
        return this.changes;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNewStartPageToken() {
        return this.newStartPageToken;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChangeList set(String str, Object obj) {
        return (ChangeList) super.set(str, obj);
    }

    public final ChangeList setChanges(List<Change> list) {
        this.changes = list;
        return this;
    }

    public final ChangeList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ChangeList setNewStartPageToken(String str) {
        this.newStartPageToken = str;
        return this;
    }

    public final ChangeList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
