package com.telguarder.features.postCallSpamInfo;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentProgressData.class */
public class SpamCommentProgressData extends SpamCommentData {
    public ProgressState mProgressState;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState.class */
    public enum ProgressState {
        RED_REQUEST_IN_PROGRESS,
        ORANGE_REQUEST_IN_PROGRESS,
        NO_COMMENTS_FOUND
    }

    public SpamCommentProgressData() {
        this.mItemType = 2;
    }
}
