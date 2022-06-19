package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/CommentList.class */
public final class CommentList extends GenericJson {
    @AbstractC15247q
    private List<Comment> comments;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;

    static {
        C15232j.m9242a(Comment.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CommentList clone() {
        return (CommentList) super.clone();
    }

    public final List<Comment> getComments() {
        return this.comments;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CommentList set(String str, Object obj) {
        return (CommentList) super.set(str, obj);
    }

    public final CommentList setComments(List<Comment> list) {
        this.comments = list;
        return this;
    }

    public final CommentList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final CommentList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
