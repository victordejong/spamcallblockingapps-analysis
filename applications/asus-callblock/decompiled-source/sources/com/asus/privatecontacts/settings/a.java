package com.asus.privatecontacts.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.util.Log;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.asus.privatecontacts.e;
import com.asus.privatecontacts.provider.c;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/a.class */
public class a extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: b  reason: collision with root package name */
    private static final String f3080b = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    AbstractC0088a f3081a;
    private Context c;
    private CheckBoxPreference d;
    private CustomSwitchPreference e;
    private CheckBoxPreference f;
    private PreferenceCategory g;
    private Preference h;
    private Preference.OnPreferenceClickListener i = new Preference.OnPreferenceClickListener() { // from class: com.asus.privatecontacts.settings.a.1
        @Override // android.preference.Preference.OnPreferenceClickListener
        public final boolean onPreferenceClick(Preference preference) {
            if (a.this.f3081a == null) {
                return true;
            }
            a.this.f3081a.a();
            return true;
        }
    };
    private Preference.OnPreferenceClickListener j = new Preference.OnPreferenceClickListener() { // from class: com.asus.privatecontacts.settings.a.2
        @Override // android.preference.Preference.OnPreferenceClickListener
        public final boolean onPreferenceClick(Preference preference) {
            Activity activity = a.this.getActivity();
            if (activity == null) {
                return true;
            }
            ((e) activity).setStayPrivate(true);
            ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), new Intent(activity, PrivateEditProfileActivity.class));
            return true;
        }
    };

    /* renamed from: com.asus.privatecontacts.settings.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/a$a.class */
    public interface AbstractC0088a {
        void a();
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        this.c = activity;
        super.onAttach(activity);
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c.a(getPreferenceManager());
        addPreferencesFromResource(2131951628);
        this.h = getPreferenceManager().findPreference("key_reset_pin");
        this.h.setOnPreferenceClickListener(this.i);
        this.d = (CheckBoxPreference) getPreferenceManager().findPreference("key_hide_caller_number");
        this.e = (CustomSwitchPreference) getPreferenceManager().findPreference("key_custom_profile_switch");
        this.e.setOnPreferenceClickListener(this.j);
        boolean b2 = c.b(this.c);
        c.a();
        this.e.setEnabled(true);
        if (b2) {
            this.d.setChecked(false);
            this.d.setEnabled(false);
        } else {
            this.d.setEnabled(true);
        }
        this.g = (PreferenceCategory) getPreferenceManager().findPreference("key_incoming_calls");
        this.f = (CheckBoxPreference) getPreferenceManager().findPreference("key_always_block_calls");
        this.g.removePreference(this.f);
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Intent intent = new Intent();
        intent.setAction("com.asus.privatecontacts.action.PrivatePreferenceChanged");
        intent.putExtra("key_private_preference_changed", str);
        int intValue = c.f3071a.get(str).intValue();
        switch (intValue) {
            case 1:
                c.a();
                this.d.setEnabled(true);
                this.e.setEnabled(true);
                if (this.c != null) {
                    this.c.sendBroadcast(intent);
                }
                Log.d(f3080b, "[sendBroadcast] PRIVATE PREFERENCES CHANGED, CODE: " + intValue);
                return;
            case 2:
            case 4:
                break;
            case 3:
                boolean b2 = c.b(this.c);
                c.a();
                if (!b2) {
                    this.d.setEnabled(true);
                    break;
                } else {
                    this.d.setChecked(false);
                    this.d.setEnabled(false);
                    break;
                }
            default:
                Log.d(f3080b, "Unknown preference key changed: " + str);
                return;
        }
        if (this.c != null) {
            this.c.sendBroadcast(intent);
        }
        Log.d(f3080b, "[sendBroadcast] PRIVATE PREFERENCES CHANGED, CODE: " + intValue);
    }
}
