package com.facebook.share;
/* loaded from: classes-dex2jar.jar:com/facebook/share/Sharer.class */
public interface Sharer {

    /* loaded from: classes-dex2jar.jar:com/facebook/share/Sharer$Result.class */
    public static class Result {
        final String postId;

        public Result(String str) {
            this.postId = str;
        }

        public String getPostId() {
            return this.postId;
        }
    }

    boolean getShouldFailOnDataError();

    void setShouldFailOnDataError(boolean z);
}
