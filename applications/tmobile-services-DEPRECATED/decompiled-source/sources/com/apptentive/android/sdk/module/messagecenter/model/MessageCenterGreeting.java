package com.apptentive.android.sdk.module.messagecenter.model;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageCenterGreeting.class */
public class MessageCenterGreeting implements MessageCenterListItem {
    public final String avatar;
    public final String body;
    public final String title;

    public MessageCenterGreeting(String str, String str2, String str3) {
        this.title = str;
        this.body = str2;
        this.avatar = str3;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        return 1;
    }
}
