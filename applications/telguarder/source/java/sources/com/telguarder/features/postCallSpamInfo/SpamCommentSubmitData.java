package com.telguarder.features.postCallSpamInfo;

import com.telguarder.features.numberLookup.PhoneEvent;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentSubmitData.class */
public class SpamCommentSubmitData extends SpamCommentData {
    public PhoneEvent mPhoneEvent;

    public SpamCommentSubmitData(PhoneEvent phoneEvent) {
        this.mItemType = 0;
        this.mPhoneEvent = phoneEvent;
    }
}
