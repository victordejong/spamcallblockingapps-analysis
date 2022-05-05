package com.android.contacts.asuscallerid;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import com.asus.a.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AboutCallGuardDialogPreference.class */
public class AboutCallGuardDialogPreference extends DialogPreference {
    public AboutCallGuardDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AboutCallGuardDialogPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected void onClick() {
        c.s(getContext());
    }
}
