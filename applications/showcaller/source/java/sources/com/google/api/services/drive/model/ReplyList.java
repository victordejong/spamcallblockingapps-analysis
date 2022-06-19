package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/ReplyList.class */
public final class ReplyList extends C8666b {
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;
    @AbstractC8720o
    private List<Reply> replies;

    static {
        C8712j.m2874j(Reply.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ReplyList clone() {
        return (ReplyList) super.clone();
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public List<Reply> getReplies() {
        return this.replies;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public ReplyList set(String str, Object obj) {
        return (ReplyList) super.set(str, obj);
    }

    public ReplyList setKind(String str) {
        this.kind = str;
        return this;
    }

    public ReplyList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public ReplyList setReplies(List<Reply> list) {
        this.replies = list;
        return this;
    }
}
