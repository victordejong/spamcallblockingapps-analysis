package com.callapp.contacts.widget;

import android.content.Context;
import android.preference.ListPreference;
import android.util.AttributeSet;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppListPreference.class */
public class CallAppListPreference extends ListPreference {
    public CallAppListPreference(Context context) {
        this(context, null);
    }

    public CallAppListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected void onClick() {
        super.onClick();
    }

    @Override // android.preference.ListPreference
    public void setValue(String str) {
        if (getValue() != null) {
            AnalyticsManager.get().m28449a(Constants.SETTINGS, getKey(), str);
        }
        super.setValue(str);
        notifyChanged();
    }
}
