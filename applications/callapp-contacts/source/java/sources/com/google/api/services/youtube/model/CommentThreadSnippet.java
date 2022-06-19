package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThreadSnippet.class */
public final class CommentThreadSnippet extends GenericJson {
    @AbstractC15247q
    private Boolean canReply;
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private Boolean isPublic;
    @AbstractC15247q
    private Comment topLevelComment;
    @AbstractC15247q
    private Long totalReplyCount;
    @AbstractC15247q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CommentThreadSnippet clone() {
        return (CommentThreadSnippet) super.clone();
    }

    public final Boolean getCanReply() {
        return this.canReply;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final Boolean getIsPublic() {
        return this.isPublic;
    }

    public final Comment getTopLevelComment() {
        return this.topLevelComment;
    }

    public final Long getTotalReplyCount() {
        return this.totalReplyCount;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CommentThreadSnippet set(String str, Object obj) {
        return (CommentThreadSnippet) super.set(str, obj);
    }

    public final CommentThreadSnippet setCanReply(Boolean bool) {
        this.canReply = bool;
        return this;
    }

    public final CommentThreadSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final CommentThreadSnippet setIsPublic(Boolean bool) {
        this.isPublic = bool;
        return this;
    }

    public final CommentThreadSnippet setTopLevelComment(Comment comment) {
        this.topLevelComment = comment;
        return this;
    }

    public final CommentThreadSnippet setTotalReplyCount(Long l) {
        this.totalReplyCount = l;
        return this;
    }

    public final CommentThreadSnippet setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
