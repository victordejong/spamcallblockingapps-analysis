package com.telguarder.features.postCallSpamInfo;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentListItemData.class */
public class SpamCommentListItemData extends SpamCommentData {
    public String mCommentDate;
    public String mCommentText;

    public SpamCommentListItemData(String str, String str2) {
        this.mCommentText = str;
        this.mCommentDate = str2;
        this.mItemType = 3;
    }
}
