package com.android.contacts.preference;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/AsusDisplayWithPhoneOnlyPreference.class */
public class AsusDisplayWithPhoneOnlyPreference extends CheckBoxPreference {
    private Context mContext;
    private ContactsPreferences mPreferences;

    public AsusDisplayWithPhoneOnlyPreference(Context context) {
        super(context);
        prepare();
    }

    public AsusDisplayWithPhoneOnlyPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    public AsusDisplayWithPhoneOnlyPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        prepare();
    }

    private void prepare() {
        this.mContext = getContext();
        this.mPreferences = new ContactsPreferences(this.mContext);
    }

    @Override // android.preference.TwoStatePreference, android.preference.Preference
    protected void onClick() {
        super.onClick();
        this.mPreferences.setDisplayOnlyPhone(isChecked());
    }
}
