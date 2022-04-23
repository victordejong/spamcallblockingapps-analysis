package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/CommentList.class */
public final class CommentList extends GenericJson {
    @q
    private List<Comment> comments;
    @q
    private String kind;
    @q
    private String nextPageToken;

    static {
        j.a(Comment.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
