package com.android.contacts.preference;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import com.android.contacts.skin.a;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/EzmodeOpenPreference.class */
public class EzmodeOpenPreference extends CheckBoxPreference {
    private Context mContext;

    public EzmodeOpenPreference(Context context) {
        super(context);
        prepare();
    }

    public EzmodeOpenPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    public EzmodeOpenPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        prepare();
    }

    private void prepare() {
        this.mContext = getContext();
    }

    @Override // android.preference.TwoStatePreference, android.preference.Preference
    protected void onClick() {
        super.onClick();
        ContactsPreferences.setEzmodeOn(isChecked(), this.mContext);
        a.a(this.mContext, a.a());
    }
}
