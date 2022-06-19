package com.callapp.contacts.activity.settings;

import android.content.Context;
import android.preference.SwitchPreference;
import android.util.AttributeSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/CustomSwitchPreference.class */
public class CustomSwitchPreference extends SwitchPreference {
    public CustomSwitchPreference(Context context) {
        this(context, null);
    }

    public CustomSwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843629);
    }

    public CustomSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
