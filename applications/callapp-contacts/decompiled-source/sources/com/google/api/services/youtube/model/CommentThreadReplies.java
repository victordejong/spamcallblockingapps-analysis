package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThreadReplies.class */
public final class CommentThreadReplies extends GenericJson {
    @q
    private List<Comment> comments;

    static {
        j.a(Comment.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final CommentThreadReplies clone() {
        return (CommentThreadReplies) super.clone();
    }

    public final List<Comment> getComments() {
        return this.comments;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final CommentThreadReplies set(String str, Object obj) {
        return (CommentThreadReplies) super.set(str, obj);
    }

    public final CommentThreadReplies setComments(List<Comment> list) {
        this.comments = list;
        return this;
    }
}
