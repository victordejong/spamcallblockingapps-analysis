package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/CommentList.class */
public final class CommentList extends C8666b {
    @AbstractC8720o
    private List<Comment> comments;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;

    static {
        C8712j.m2874j(Comment.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public CommentList clone() {
        return (CommentList) super.clone();
    }

    public List<Comment> getComments() {
        return this.comments;
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public CommentList set(String str, Object obj) {
        return (CommentList) super.set(str, obj);
    }

    public CommentList setComments(List<Comment> list) {
        this.comments = list;
        return this;
    }

    public CommentList setKind(String str) {
        this.kind = str;
        return this;
    }

    public CommentList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
