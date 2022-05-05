package com.apptentive.android.sdk.module.messagecenter.model;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/ContextMessage.class */
public class ContextMessage implements MessageCenterListItem {
    private String body;

    public ContextMessage(String str) {
        this.body = str;
    }

    public String getBody() {
        return this.body;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        return 3;
    }
}
