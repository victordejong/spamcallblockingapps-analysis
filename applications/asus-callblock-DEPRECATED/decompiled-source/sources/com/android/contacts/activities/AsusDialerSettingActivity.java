package com.android.contacts.activities;

import android.app.ActionBar;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import com.android.contacts.j.l;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.a;
import com.asus.contacts.b;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDialerSettingActivity.class */
public class AsusDialerSettingActivity extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final String HAND_WRITE_PROP_KEY = "ro.config.hwrlib";
    public static final String KEY_DIALPAD_ANIM_SPEED = "key_dialpad_anim_speed";
    public static final String KEY_DIALPAD_ANIM_SPEED_SETTING = "key_dialpad_anim_speed_setting";
    public static final String KEY_DIALPAD_LIST = "dialpad_list";
    public static final String KEY_DIALPAD_MODE = "pref_dialpad_mode";
    public static final String KEY_ENABLE_DIALPAD_ANIM = "key_enable_dialpad_anim";
    public static final String KEY_HANDWRITE_LIST = "handwrite_list";
    public static final String KEY_SWIPE_DOWN_HIDE_DIALPAD = "key_swipe_down_hide_dialpad";
    private ListPreference mDialpadAnimSpeedPref;
    private ListPreference mDialpadListPreference;
    private ListPreference mDialpadModeListPreference;
    private PreferenceCategory mDialpadSettingPref;
    private CheckBoxPreference mEnableDialpadAnimPref;
    private ListPreference mHandwriteListPreference;
    b mHomeBtnListener;
    private PreferenceCategory mPreferenceCategory;
    private SharedPreferences mPrefs;
    private boolean mReloadDialtactsActivity = true;
    private CheckBoxPreference mSmartDialRule1;
    private CheckBoxPreference mSmartDialRule2;
    private PreferenceCategory mSmartDialRuleCategory;
    private CheckBoxPreference mSwipeDownHideDialpadPref;
    public static final String TAG = AsusDialerSettingActivity.class.getSimpleName();
    private static final String[] HWRLIB_VALUES = {"VO_x86", "VO_arm", "T9_x86", "T9_arm"};
    private static int HWR_MODE = -1;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDialerSettingActivity$HwrLib.class */
    public interface HwrLib {
        public static final int NOHWR = 4;
        public static final int NO_HWR_MODE = 2;
        public static final int T9_ARM = 3;
        public static final int T9_MODE = 1;
        public static final int T9_X86 = 2;
        public static final int VO_ARM = 1;
        public static final int VO_MODE = 0;
        public static final int VO_X86 = 0;
    }

    public static int getHandWriteProperty() {
        int i;
        String a2 = a.a(HAND_WRITE_PROP_KEY);
        if (!a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("jp")) {
            if (!TextUtils.isEmpty(a2)) {
                Log.e(TAG, "ro.config.hwrlib=" + a2);
                int i2 = 0;
                while (true) {
                    if (i2 >= HWRLIB_VALUES.length) {
                        i = -1;
                        break;
                    }
                    i = i2;
                    if (a2.equals(HWRLIB_VALUES[i2])) {
                        break;
                    }
                    i2++;
                }
            } else {
                Log.e(TAG, "ro.config.hwrlib is null or empty string.");
                i = -1;
            }
        } else {
            i = 4;
        }
        return i;
    }

    private void setupSmartSearchRule() {
        l.a().a(this);
        l.a().b(this);
    }

    private void setupSmartSearchRuleIndex(int i) {
        switch (i) {
            case 0:
                l.a().a(this);
                return;
            case 1:
                l.a().b(this);
                return;
            default:
                return;
        }
    }

    public void initDialPadMode() {
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        int i = this.mPrefs.getInt("keypad_mode", 0);
        String[] stringArray = getResources().getStringArray(2130837515);
        this.mPrefs.edit().putString(KEY_DIALPAD_MODE, String.valueOf(i)).apply();
        this.mDialpadModeListPreference.setValueIndex(i);
        this.mDialpadModeListPreference.setSummary(stringArray[i]);
        if (i == 1) {
            this.mPreferenceCategory.setEnabled(false);
        } else {
            this.mPreferenceCategory.setEnabled(true);
        }
    }

    void initHomeBtnListener() {
        this.mHomeBtnListener = new b(getApplicationContext());
        this.mHomeBtnListener.f2580a = new b.AbstractC0070b() { // from class: com.android.contacts.activities.AsusDialerSettingActivity.1
            @Override // com.asus.contacts.b.AbstractC0070b
            public void onHomeBtnPress() {
                AsusDialerSettingActivity.this.finish();
            }

            @Override // com.asus.contacts.b.AbstractC0070b
            public void onRecentAppBtnPress() {
            }
        };
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.mReloadDialtactsActivity) {
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, DialtactsActivity.class));
        }
        finish();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.mReloadDialtactsActivity = !getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", false);
        }
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        addPreferencesFromResource(2131951620);
        setContentView(2131427391);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(14, 14);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setTitle(2131755579);
            actionBar.setIcon(2131165872);
        }
        this.mPreferenceCategory = (PreferenceCategory) getPreferenceScreen().findPreference("dialer_language_category");
        this.mDialpadListPreference = (ListPreference) getPreferenceScreen().findPreference(KEY_DIALPAD_LIST);
        this.mHandwriteListPreference = (ListPreference) getPreferenceScreen().findPreference(KEY_HANDWRITE_LIST);
        this.mSmartDialRuleCategory = (PreferenceCategory) getPreferenceScreen().findPreference("dialer_search_rule_setting_category");
        this.mSmartDialRule1 = (CheckBoxPreference) getPreferenceScreen().findPreference("dialer_search_rule1");
        this.mSmartDialRule1 = (CheckBoxPreference) getPreferenceScreen().findPreference("dialer_search_rule2");
        this.mDialpadModeListPreference = (ListPreference) getPreferenceScreen().findPreference(KEY_DIALPAD_MODE);
        if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
            getPreferenceScreen().removePreference(this.mDialpadModeListPreference);
        } else {
            initDialPadMode();
        }
        this.mDialpadSettingPref = (PreferenceCategory) getPreferenceScreen().findPreference("key_dialpad_setting");
        this.mEnableDialpadAnimPref = (CheckBoxPreference) getPreferenceScreen().findPreference(KEY_ENABLE_DIALPAD_ANIM);
        this.mSwipeDownHideDialpadPref = (CheckBoxPreference) getPreferenceScreen().findPreference(KEY_SWIPE_DOWN_HIDE_DIALPAD);
        this.mDialpadAnimSpeedPref = (ListPreference) getPreferenceScreen().findPreference(KEY_DIALPAD_ANIM_SPEED_SETTING);
        this.mDialpadAnimSpeedPref.setSummary(this.mDialpadAnimSpeedPref.getEntry());
        this.mDialpadAnimSpeedPref.setEnabled(this.mEnableDialpadAnimPref.isChecked());
        com.asus.contacts.b.b.a();
        if (!PhoneCapabilityTester.isHighendDevice(this, 1L)) {
            this.mDialpadSettingPref.removePreference(this.mEnableDialpadAnimPref);
            this.mDialpadSettingPref.removePreference(this.mDialpadAnimSpeedPref);
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
            this.mSwipeDownHideDialpadPref.setChecked(false);
            this.mDialpadSettingPref.removePreference(this.mSwipeDownHideDialpadPref);
            this.mDialpadSettingPref.removePreference(this.mDialpadModeListPreference);
        }
        getPreferenceScreen().removePreference(this.mSmartDialRuleCategory);
        if (this.mDialpadSettingPref.getPreferenceCount() == 0) {
            getPreferenceScreen().removePreference(this.mDialpadSettingPref);
        }
        if (this.mDialpadSettingPref.getPreferenceCount() == 0) {
            getPreferenceScreen().removePreference(this.mDialpadSettingPref);
        }
        initHomeBtnListener();
        setDialpadSummary();
        setHandwriteSummary();
        setupSmartSearchRule();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        this.mHomeBtnListener.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        this.mHomeBtnListener.a();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals(KEY_DIALPAD_MODE)) {
            this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
            int intValue = Integer.valueOf(this.mPrefs.getString(str, "0")).intValue();
            this.mDialpadModeListPreference.setSummary(getResources().getStringArray(2130837515)[intValue]);
            this.mPrefs.edit().putInt("keypad_mode", intValue).apply();
            if (intValue == 1) {
                this.mPreferenceCategory.setEnabled(false);
            } else {
                this.mPreferenceCategory.setEnabled(true);
            }
        } else if (str.equals(KEY_DIALPAD_LIST)) {
            setDialpadSummary();
        } else if (str.equals(KEY_HANDWRITE_LIST)) {
            setHandwriteSummary();
        } else if (str.equals(KEY_ENABLE_DIALPAD_ANIM)) {
            com.asus.contacts.b.a.a(this.mEnableDialpadAnimPref.isChecked());
            this.mDialpadAnimSpeedPref.setEnabled(this.mEnableDialpadAnimPref.isChecked());
        } else if (str.equals(KEY_SWIPE_DOWN_HIDE_DIALPAD)) {
            com.asus.contacts.b.a.b(this.mSwipeDownHideDialpadPref.isChecked());
        } else if (str.equals(KEY_DIALPAD_ANIM_SPEED_SETTING)) {
            com.asus.contacts.b.a.b(Integer.valueOf(sharedPreferences.getString(KEY_DIALPAD_ANIM_SPEED_SETTING, getResources().getString(2131755515))).intValue());
            this.mDialpadAnimSpeedPref.setSummary(this.mDialpadAnimSpeedPref.getEntry());
        }
        if (str.equals("dialer_search_rule1")) {
            setupSmartSearchRuleIndex(0);
        }
        if (str.equals("dialer_search_rule1")) {
            setupSmartSearchRuleIndex(1);
        }
    }

    public void setDialpadSummary() {
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        int intValue = Integer.valueOf(this.mPrefs.getString(KEY_DIALPAD_LIST, "0")).intValue();
        this.mDialpadListPreference.setSummary(getResources().getStringArray(2130837513)[intValue]);
    }

    public void setHandwriteSummary() {
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        switch (getHandWriteProperty()) {
            case 0:
            case 1:
                HWR_MODE = 0;
                break;
            case 2:
            case 3:
                HWR_MODE = 1;
                break;
            case 4:
                HWR_MODE = 2;
                break;
        }
        if (HWR_MODE != 0) {
            this.mPreferenceCategory.removePreference(this.mHandwriteListPreference);
            return;
        }
        int intValue = Integer.valueOf(this.mPrefs.getString(KEY_HANDWRITE_LIST, "7")).intValue();
        this.mHandwriteListPreference.setSummary(getResources().getStringArray(2130837519)[intValue]);
    }
}
