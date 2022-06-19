package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/T9Preference.class */
public class T9Preference extends CallAppListPreference {
    public T9Preference(Context context) {
        super(context);
    }

    public T9Preference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.callapp.contacts.widget.CallAppListPreference, android.preference.ListPreference
    public void setValue(String str) {
        super.setValue(str);
        T9Helper.m30362a();
    }
}
