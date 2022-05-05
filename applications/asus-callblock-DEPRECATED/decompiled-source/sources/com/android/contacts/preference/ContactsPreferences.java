package com.android.contacts.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/ContactsPreferences.class */
public final class ContactsPreferences implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final int DISPLAY_ORDER_ALTERNATIVE = 2;
    public static final String DISPLAY_ORDER_KEY = "android.contacts.DISPLAY_ORDER";
    public static final int DISPLAY_ORDER_PRIMARY = 1;
    public static final String PREF_DISPLAY_ONLY_PHONES = "only_phones";
    public static final boolean PREF_DISPLAY_ONLY_PHONES_DEFAULT = false;
    public static final String PREF_DISPLAY_WITH_ACCOUNT_ICON = "with_account_icon";
    public static final boolean PREF_DISPLAY_WITH_ACCOUNT_ICON_DEFAULT = false;
    public static final String PREF_EZ_MODE_ON = "ez_mode_on";
    public static final boolean PREF_EZ_MODE_ON_DEFAULT;
    public static final int SORT_ORDER_ALTERNATIVE = 2;
    public static final String SORT_ORDER_KEY = "android.contacts.SORT_ORDER";
    public static final int SORT_ORDER_PRIMARY = 1;
    private final Context mContext;
    private final SharedPreferences mPreferences;
    private int mSortOrder = -1;
    private int mDisplayOrder = -1;
    private ChangeListener mListener = null;
    private Handler mHandler = new Handler();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/preference/ContactsPreferences$ChangeListener.class */
    public interface ChangeListener {
        void onChange();
    }

    static {
        PREF_EZ_MODE_ON_DEFAULT = PhoneCapabilityTester.IsAsusDevice() || h.a();
    }

    public ContactsPreferences(Context context) {
        this.mContext = context;
        this.mPreferences = this.mContext.getSharedPreferences(context.getPackageName(), 0);
        maybeMigrateSystemSettings();
    }

    public static boolean getEzmodeOn(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(PREF_EZ_MODE_ON, PREF_EZ_MODE_ON_DEFAULT);
    }

    private void maybeMigrateSystemSettings() {
        if (!this.mPreferences.contains(SORT_ORDER_KEY)) {
            int defaultSortOrder = getDefaultSortOrder();
            try {
                defaultSortOrder = Settings.System.getInt(this.mContext.getContentResolver(), SORT_ORDER_KEY);
            } catch (Settings.SettingNotFoundException e) {
            }
            setSortOrder(defaultSortOrder);
        }
        if (!this.mPreferences.contains(DISPLAY_ORDER_KEY)) {
            int defaultDisplayOrder = getDefaultDisplayOrder();
            try {
                defaultDisplayOrder = Settings.System.getInt(this.mContext.getContentResolver(), DISPLAY_ORDER_KEY);
            } catch (Settings.SettingNotFoundException e2) {
            }
            setDisplayOrder(defaultDisplayOrder);
        }
    }

    public static void setEzmodeOn(boolean z, Context context) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putBoolean(PREF_EZ_MODE_ON, z);
        edit.commit();
        Log.d("ContactsPreferences", "setEzmodeOn: " + z);
    }

    public final int getDefaultDisplayOrder() {
        return this.mContext.getResources().getBoolean(2130968582) ? 1 : 2;
    }

    public final int getDefaultSortOrder() {
        return this.mContext.getResources().getBoolean(2130968583) ? 1 : 2;
    }

    public final boolean getDisplayOnlyPhone() {
        boolean z = PreferenceManager.getDefaultSharedPreferences(this.mContext).getBoolean(PREF_DISPLAY_ONLY_PHONES, false);
        Log.d("ContactsPreferences", "getDisplayOnlyPhone: " + z);
        return z;
    }

    public final int getDisplayOrder() {
        int i;
        if (!isDisplayOrderUserChangeable()) {
            i = getDefaultDisplayOrder();
        } else {
            if (this.mDisplayOrder == -1) {
                this.mDisplayOrder = this.mPreferences.getInt(DISPLAY_ORDER_KEY, getDefaultDisplayOrder());
            }
            i = this.mDisplayOrder;
        }
        return i;
    }

    public final boolean getDisplayWithAccountIcon() {
        boolean z = PreferenceManager.getDefaultSharedPreferences(this.mContext).getBoolean(PREF_DISPLAY_WITH_ACCOUNT_ICON, false);
        Log.d("ContactsPreferences", "getDisplayWithAccountIcon: " + z);
        return z;
    }

    public final int getSortOrder() {
        int i;
        if (!isSortOrderUserChangeable()) {
            i = getDefaultSortOrder();
        } else {
            if (this.mSortOrder == -1) {
                this.mSortOrder = this.mPreferences.getInt(SORT_ORDER_KEY, getDefaultSortOrder());
            }
            i = this.mSortOrder;
        }
        return i;
    }

    public final boolean isDisplayOrderUserChangeable() {
        return this.mContext.getResources().getBoolean(2130968584);
    }

    public final boolean isSortOrderUserChangeable() {
        return this.mContext.getResources().getBoolean(2130968592);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, final String str) {
        this.mHandler.post(new Runnable() { // from class: com.android.contacts.preference.ContactsPreferences.1
            @Override // java.lang.Runnable
            public void run() {
                if (ContactsPreferences.DISPLAY_ORDER_KEY.equals(str)) {
                    ContactsPreferences.this.mDisplayOrder = ContactsPreferences.this.getDisplayOrder();
                } else if (ContactsPreferences.SORT_ORDER_KEY.equals(str)) {
                    ContactsPreferences.this.mSortOrder = ContactsPreferences.this.getSortOrder();
                }
                if (ContactsPreferences.this.mListener != null) {
                    ContactsPreferences.this.mListener.onChange();
                }
            }
        });
    }

    public final void registerChangeListener(ChangeListener changeListener) {
        if (this.mListener != null) {
            unregisterChangeListener();
        }
        this.mListener = changeListener;
        this.mDisplayOrder = -1;
        this.mSortOrder = -1;
        this.mPreferences.registerOnSharedPreferenceChangeListener(this);
    }

    public final void setDisplayOnlyPhone(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.mContext).edit();
        edit.putBoolean(PREF_DISPLAY_ONLY_PHONES, z);
        edit.commit();
        Log.d("ContactsPreferences", "setDisplayOnlyPhone: " + z);
    }

    public final void setDisplayOrder(int i) {
        this.mDisplayOrder = i;
        SharedPreferences.Editor edit = this.mPreferences.edit();
        edit.putInt(DISPLAY_ORDER_KEY, i);
        edit.commit();
    }

    public final void setDisplayWithAccountIcon(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.mContext).edit();
        edit.putBoolean(PREF_DISPLAY_WITH_ACCOUNT_ICON, z);
        edit.commit();
        Log.d("ContactsPreferences", "setDisplayWithAccountIcon: " + z);
    }

    public final void setSortOrder(int i) {
        this.mSortOrder = i;
        SharedPreferences.Editor edit = this.mPreferences.edit();
        edit.putInt(SORT_ORDER_KEY, i);
        edit.commit();
    }

    public final void unregisterChangeListener() {
        if (this.mListener != null) {
            this.mListener = null;
        }
        this.mPreferences.unregisterOnSharedPreferenceChangeListener(this);
    }
}
