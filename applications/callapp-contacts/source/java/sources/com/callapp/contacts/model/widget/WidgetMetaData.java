package com.callapp.contacts.model.widget;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/widget/WidgetMetaData.class */
public class WidgetMetaData {
    public final int backgroundColorRes;
    public final int groupId;
    public final String key;
    public String label;
    public final int menuResId;
    public final int primaryIconResId;

    public WidgetMetaData(int i, int i2, int i3, String str, String str2, int i4) {
        this.key = str2;
        this.primaryIconResId = i2;
        this.menuResId = i3;
        this.label = str;
        if (i == 0) {
            this.backgroundColorRes = 0;
        } else {
            this.backgroundColorRes = i;
        }
        this.groupId = i4;
    }
}
