package com.android.contacts.preference;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/preference/DisplayOptionsPreferenceFragment.class */
public class DisplayOptionsPreferenceFragment extends PreferenceFragment {
    private static final String ASUS_PREFERENCE_DISPLAY_CATEGORY = "asus_preference_display_category";
    private static final String EZ_LAUNCHER_PACKAGE_NAME = "com.asus.easylauncher";
    private static final String EZ_MODE_ON = "ez_mode_on";
    private static final String PREFERENCE_DISPLAY_CATEGORY = "preference_display_category";
    private CheckBoxPreference mEzmodeOnCategory;
    private PreferenceCategory mPreferenceDisplayCategory;

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean a2 = h.a(getActivity());
        boolean checkApkExist = PhoneCapabilityTester.checkApkExist(getActivity(), EZ_LAUNCHER_PACKAGE_NAME);
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
        if (a2) {
            addPreferencesFromResource(2131951623);
            return;
        }
        if (ContactsPreferenceActivity.isEmpty(getActivity())) {
            addPreferencesFromResource(2131951617);
            this.mPreferenceDisplayCategory = (PreferenceCategory) findPreference(ASUS_PREFERENCE_DISPLAY_CATEGORY);
            this.mEzmodeOnCategory = (CheckBoxPreference) findPreference("ez_mode_on");
        } else {
            addPreferencesFromResource(2131951626);
            this.mPreferenceDisplayCategory = (PreferenceCategory) findPreference(PREFERENCE_DISPLAY_CATEGORY);
            this.mEzmodeOnCategory = (CheckBoxPreference) findPreference("ez_mode_on");
        }
        if (this.mPreferenceDisplayCategory != null && this.mEzmodeOnCategory != null) {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                if (!checkApkExist) {
                    this.mPreferenceDisplayCategory.removePreference(this.mEzmodeOnCategory);
                } else if (checkApkExist && isUsingTwoPanes) {
                    this.mPreferenceDisplayCategory.removePreference(this.mEzmodeOnCategory);
                }
            } else if (isUsingTwoPanes) {
                this.mPreferenceDisplayCategory.removePreference(this.mEzmodeOnCategory);
            }
        }
    }
}
