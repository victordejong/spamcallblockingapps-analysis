package com.telguarder.features.rateAndFeedback;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/CommentsResult.class */
public class CommentsResult implements Serializable {
    public List<Comment> comments;
    public int totalCount;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/CommentsResult$Comment.class */
    public class Comment implements Serializable {
        public String country;
        public String language;
        public String text;
        public String timeStamp;

        public Comment() {
            CommentsResult.this = r4;
        }
    }
}
