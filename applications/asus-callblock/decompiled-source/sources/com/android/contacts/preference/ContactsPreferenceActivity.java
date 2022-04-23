package com.android.contacts.preference;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.util.Log;
import android.view.MenuItem;
import android.widget.LinearLayout;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/ContactsPreferenceActivity.class */
public final class ContactsPreferenceActivity extends PreferenceActivity {
    private static final String TAG = ContactsPreferenceActivity.class.getSimpleName();
    private boolean mLastEzMode;
    private boolean mReloadDialtactsActivity = true;

    public static boolean isEmpty(Context context) {
        return !context.getResources().getBoolean(2130968592) && !context.getResources().getBoolean(2130968584);
    }

    private void savePreference() {
        Intent intent = new Intent(this, PeopleActivity.class);
        intent.setAction("back_to_pref_tab");
        intent.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
        setResult(-1, intent);
        ImplicitIntentsUtil.startActivityInApp(this, intent);
        finish();
    }

    @Override // android.preference.PreferenceActivity
    protected final boolean isValidFragment(String str) {
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final void onBackPressed() {
        if (this.mLastEzMode && !h.a(getApplicationContext())) {
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, PeopleActivity.class));
            finish();
        } else if (this.mReloadDialtactsActivity) {
            savePreference();
        } else {
            super.onBackPressed();
            finish();
        }
    }

    @Override // android.preference.PreferenceActivity
    public final void onBuildHeaders(List<PreferenceActivity.Header> list) {
        loadHeadersFromResource(2131951627, list);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.mReloadDialtactsActivity = !getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", false);
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
            try {
                ((LinearLayout) findViewById(getResources().getIdentifier("android:id/headers", null, null))).setBackgroundColor(getResources().getColor(2131034116));
                ((LinearLayout) findViewById(getResources().getIdentifier("android:id/prefs_frame", null, null))).setBackgroundColor(getResources().getColor(2131034116));
            } catch (Exception e) {
                Log.d(TAG, "Can not find resource by id " + e.toString());
            }
        }
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(4, 4);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setTitle(getResources().getString(2131755140));
        }
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            Log.d("ContactsPreferenceActivity", "getEzmodeOn():" + ContactsPreferences.getEzmodeOn(this));
            if (!ContactsPreferences.getEzmodeOn(this)) {
                Log.d("ContactsPreferenceActivity", "onCreate unbundle set defaulValue is false");
                ContactsPreferences.setEzmodeOn(false, this);
            }
        }
        this.mLastEzMode = h.a(getApplicationContext());
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
