package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThreadReplies.class */
public final class CommentThreadReplies extends GenericJson {
    @AbstractC15247q
    private List<Comment> comments;

    static {
        C15232j.m9242a(Comment.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CommentThreadReplies clone() {
        return (CommentThreadReplies) super.clone();
    }

    public final List<Comment> getComments() {
        return this.comments;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CommentThreadReplies set(String str, Object obj) {
        return (CommentThreadReplies) super.set(str, obj);
    }

    public final CommentThreadReplies setComments(List<Comment> list) {
        this.comments = list;
        return this;
    }
}
