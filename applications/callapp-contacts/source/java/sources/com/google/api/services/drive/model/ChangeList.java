package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/ChangeList.class */
public final class ChangeList extends GenericJson {
    @AbstractC15247q
    private List<Change> changes;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String newStartPageToken;
    @AbstractC15247q
    private String nextPageToken;

    static {
        C15232j.m9242a(Change.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
