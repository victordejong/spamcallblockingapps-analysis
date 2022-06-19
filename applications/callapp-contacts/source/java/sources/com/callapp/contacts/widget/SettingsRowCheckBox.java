package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowCheckBox.class */
public class SettingsRowCheckBox extends SettingsRowCompoundBtn {
    public SettingsRowCheckBox(Context context) {
        this(context, null);
    }

    public SettingsRowCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn
    CompoundButton getBtn() {
        return (CompoundButton) findViewById(2131363815);
    }

    @Override // com.callapp.contacts.widget.SettingsRowCompoundBtn, com.callapp.contacts.widget.SettingsRowView
    protected int getLayoutResourceId() {
        return 2131559008;
    }
}
