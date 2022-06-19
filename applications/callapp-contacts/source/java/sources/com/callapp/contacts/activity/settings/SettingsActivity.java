package com.callapp.contacts.activity.settings;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.activity.base.BaseTopBarActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.LocalPrefsStore;
import com.callapp.contacts.manager.preferences.prefs.PrefsAdapter;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsActivity.class */
public class SettingsActivity extends BaseTopBarActivity {

    /* renamed from: a */
    private SettingsFragment f24128a;

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558843;
    }

    protected SettingsFragment getSettingsFragment() {
        return (SettingsFragment) getFragmentManager().findFragmentByTag("SettingsFragment");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return getSettingsFragment().getPreferenceManager().getSharedPreferencesName().equals(str) ? new PrefsAdapter(LocalPrefsStore.get()) : super.getSharedPreferences(str, i);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (getSettingsFragment() != null) {
            getSettingsFragment().onActivityResult(i, i2, intent);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean z;
        SettingsFragment settingsFragment = getSettingsFragment();
        if (settingsFragment.f24141b != null) {
            settingsFragment.f24141b.dismiss();
            settingsFragment.f24141b = null;
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131887646));
        if (Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp()) {
            getIntent().putExtra("EXTRA_HIDE_CALL_RECORDER", true);
        }
        this.f24128a = new SettingsFragment();
        if (getResources().getBoolean(2131034115)) {
            try {
                Object m27426a = ReflectionUtils.m27426a(Class.forName("com.callapp.contacts.debug.DebugSettingsFragment"));
                if (m27426a instanceof SettingsFragment) {
                    this.f24128a = (SettingsFragment) m27426a;
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            }
        }
        getFragmentManager().beginTransaction().replace(2131362474, this.f24128a, "SettingsFragment").commit();
        onNewIntent(getIntent());
        getSupportActionBar().mo46237a(true);
        AnalyticsManager.get().mo28441b(Constants.SETTING_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SETTING_SCREEN);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (getSettingsFragment() != null) {
            getSettingsFragment().m29657a(intent);
        }
    }

    public void onTextNextToSwitchClicked(View view) {
        ViewUtils.m27334a(this, view);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        SettingsFragment settingsFragment = this.f24128a;
        if (settingsFragment == null || settingsFragment.getCurrentPreferenceScreen() == null || !StringUtils.m26057a(this.f24128a.getCurrentPreferenceScreen().getTitle(), Activities.getString(2131887137))) {
            super.onThemeChanged();
        }
    }
}
