package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/ReplyList.class */
public final class ReplyList extends GenericJson {
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private List<Reply> replies;

    static {
        C15232j.m9242a(Reply.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
