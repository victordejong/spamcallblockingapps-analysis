package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/RevisionList.class */
public final class RevisionList extends C8666b {
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;
    @AbstractC8720o
    private List<Revision> revisions;

    static {
        C8712j.m2874j(Revision.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public RevisionList clone() {
        return (RevisionList) super.clone();
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public List<Revision> getRevisions() {
        return this.revisions;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public RevisionList set(String str, Object obj) {
        return (RevisionList) super.set(str, obj);
    }

    public RevisionList setKind(String str) {
        this.kind = str;
        return this;
    }

    public RevisionList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public RevisionList setRevisions(List<Revision> list) {
        this.revisions = list;
        return this;
    }
}
