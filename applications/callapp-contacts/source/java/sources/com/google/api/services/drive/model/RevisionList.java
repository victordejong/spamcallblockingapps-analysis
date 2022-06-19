package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/RevisionList.class */
public final class RevisionList extends GenericJson {
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private List<Revision> revisions;

    static {
        C15232j.m9242a(Revision.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final RevisionList clone() {
        return (RevisionList) super.clone();
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final List<Revision> getRevisions() {
        return this.revisions;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final RevisionList set(String str, Object obj) {
        return (RevisionList) super.set(str, obj);
    }

    public final RevisionList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final RevisionList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final RevisionList setRevisions(List<Revision> list) {
        this.revisions = list;
        return this;
    }
}
