package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/ReplyList.class */
public final class ReplyList extends GenericJson {
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private List<Reply> replies;

    static {
        j.a(Reply.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ReplyList clone() {
        return (ReplyList) super.clone();
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final List<Reply> getReplies() {
        return this.replies;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ReplyList set(String str, Object obj) {
        return (ReplyList) super.set(str, obj);
    }

    public final ReplyList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ReplyList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final ReplyList setReplies(List<Reply> list) {
        this.replies = list;
        return this;
    }
}
