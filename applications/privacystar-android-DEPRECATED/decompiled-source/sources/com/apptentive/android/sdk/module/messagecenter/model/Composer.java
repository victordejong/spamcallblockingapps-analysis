package com.apptentive.android.sdk.module.messagecenter.model;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/Composer.class */
public class Composer implements MessageCenterListItem {
    public String closeBody;
    public String closeCancel;
    public String closeDiscard;
    public String messageHint;
    public String sendButton;
    public String title;

    public Composer(String str, String str2, String str3, String str4, String str5, String str6) {
        this.title = str;
        this.closeDiscard = str3;
        this.closeBody = str2;
        this.closeCancel = str4;
        this.sendButton = str5;
        this.messageHint = str6;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        return 7;
    }
}
