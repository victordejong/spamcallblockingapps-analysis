package com.android.contacts.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.ListPreference;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/DisplayOrderPreference.class */
public final class DisplayOrderPreference extends ListPreference {
    private Context mContext;
    private ContactsPreferences mPreferences;

    public DisplayOrderPreference(Context context) {
        super(context);
        prepare();
    }

    public DisplayOrderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    private void prepare() {
        this.mContext = getContext();
        this.mPreferences = new ContactsPreferences(this.mContext);
        setEntries(new String[]{this.mContext.getString(2131755588), this.mContext.getString(2131755587)});
        setEntryValues(new String[]{"1", "2"});
        setValue(String.valueOf(this.mPreferences.getDisplayOrder()));
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    public final CharSequence getSummary() {
        String string;
        switch (this.mPreferences.getDisplayOrder()) {
            case 1:
                string = this.mContext.getString(2131755588);
                break;
            case 2:
                string = this.mContext.getString(2131755587);
                break;
            default:
                string = null;
                break;
        }
        return string;
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // android.preference.Preference
    protected final boolean persistString(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt == this.mPreferences.getDisplayOrder()) {
            return true;
        }
        this.mPreferences.setDisplayOrder(parseInt);
        notifyChanged();
        return true;
    }

    @Override // android.preference.Preference
    protected final boolean shouldPersist() {
        return false;
    }
}
