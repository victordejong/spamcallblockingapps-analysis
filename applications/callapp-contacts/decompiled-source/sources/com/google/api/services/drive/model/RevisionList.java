package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/RevisionList.class */
public final class RevisionList extends GenericJson {
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private List<Revision> revisions;

    static {
        j.a(Revision.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
