package com.telguarder.features.settings;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.telguarder.ApplicationConstants;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/settings/AppInfoActivity.class */
public class AppInfoActivity extends AppCompatActivity {
    private Toolbar mToolbar;

    private void initViews() {
        ((TextView) findViewById(C2083R.C2086id.application_version)).setText(AppUtil.getFullApplicationVersionName(this));
        long firstInstallTime = AppUtil.getFirstInstallTime(this);
        ((TextView) findViewById(C2083R.C2086id.application_days_since_install)).setText(String.valueOf(firstInstallTime > 0 ? Long.valueOf((System.currentTimeMillis() - firstInstallTime) / ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE) : "-"));
        ((TextView) findViewById(C2083R.C2086id.device_device_name)).setText(String.format("%s %s", Build.MANUFACTURER, Build.MODEL));
        ((TextView) findViewById(C2083R.C2086id.device_os)).setText(String.format("Android %s", Build.VERSION.RELEASE));
        new Thread(new Runnable() { // from class: com.telguarder.features.settings._$$Lambda$AppInfoActivity$3CD7U0UwqQGrzFR_ggYcq4dbPrY
            @Override // java.lang.Runnable
            public final void run() {
                AppInfoActivity.this.lambda$initViews$2$AppInfoActivity();
            }
        }).start();
        ((TextView) findViewById(C2083R.C2086id.device_language)).setText(CountryManager.getInstance().getDeviceLanguage().toUpperCase());
        ((TextView) findViewById(C2083R.C2086id.device_device_id)).setText(UID.uid(this));
        ((TextView) findViewById(C2083R.C2086id.permissions_systemalertwindow)).setText(LookupBlockerCheckManager.getInstance().canDrawOverlays(this) ? "OK" : "-");
        ((TextView) findViewById(C2083R.C2086id.permissions_ignore_battopt)).setText(LookupBlockerCheckManager.getInstance().batteryOptimisationsIgnored(this) ? "OK" : "-");
        ((TextView) findViewById(C2083R.C2086id.permissions_custom_protectedapp_whitelisting_label)).setText(String.format("%s %s", Build.BRAND, getString(C2083R.string.settings_appinfo_permission_whitelisting)));
        if (PreferencesManager.getInstance().hasProtectedAppCheck()) {
            findViewById(C2083R.C2086id.permissions_custom_protectedapp_layout).setVisibility(0);
            ((TextView) findViewById(C2083R.C2086id.permissions_custom_protectedapp_whitelisting)).setText(PreferencesManager.getInstance().isProtectedAppchekDone() ? "OK" : "-");
        } else {
            findViewById(C2083R.C2086id.permissions_custom_protectedapp_layout).setVisibility(8);
        }
        ((TextView) findViewById(C2083R.C2086id.permissions_read_phone_state)).setText(ContextCompat.checkSelfPermission(this, "android.permission.READ_PHONE_STATE") == 0 ? "OK" : "-");
        ((TextView) findViewById(C2083R.C2086id.permissions_read_call_log)).setText(ContextCompat.checkSelfPermission(this, "android.permission.READ_CALL_LOG") == 0 ? "OK" : "-");
        ((TextView) findViewById(C2083R.C2086id.permissions_read_contacts)).setText(ContextCompat.checkSelfPermission(this, "android.permission.READ_CONTACTS") == 0 ? "OK" : "-");
        ((TextView) findViewById(C2083R.C2086id.permissions_access_coarse_location)).setText(ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? "OK" : "-");
        if (Build.VERSION.SDK_INT < 28) {
            findViewById(C2083R.C2086id.permissions_answer_phone_calls_layout).setVisibility(8);
        } else {
            findViewById(C2083R.C2086id.permissions_answer_phone_calls_layout).setVisibility(0);
            ((TextView) findViewById(C2083R.C2086id.permissions_answer_phone_calls)).setText(ContextCompat.checkSelfPermission(this, "android.permission.ANSWER_PHONE_CALLS") == 0 ? "OK" : "-");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            findViewById(C2083R.C2086id.permissions_call_phone_layout).setVisibility(8);
            return;
        }
        findViewById(C2083R.C2086id.permissions_call_phone_layout).setVisibility(0);
        TextView textView = (TextView) findViewById(C2083R.C2086id.permissions_call_phone);
        CharSequence charSequence = "-";
        if (ContextCompat.checkSelfPermission(this, "android.permission.CALL_PHONE") == 0) {
            charSequence = "OK";
        }
        textView.setText(charSequence);
    }

    public /* synthetic */ void lambda$initViews$2$AppInfoActivity() {
        final String countryIso = CountryManager.getInstance().getCountryIso(this);
        final String mcc = CountryManager.getInstance().getMCC(this);
        final String mccFromSimOperator = CountryManager.getInstance().getMccFromSimOperator(this);
        final String mccFromNetworkOperator = CountryManager.getInstance().getMccFromNetworkOperator(this);
        final String simCountryIso = CountryManager.getInstance().getSimCountryIso(this);
        final String networkCountryIso = CountryManager.getInstance().getNetworkCountryIso(this);
        if (TextUtils.isEmpty(mcc) || ((TextUtils.isEmpty(mccFromSimOperator) || mccFromSimOperator.equals(mcc)) && ((TextUtils.isEmpty(mccFromNetworkOperator) || mccFromNetworkOperator.equals(mcc)) && ((TextUtils.isEmpty(simCountryIso) || simCountryIso.equals(countryIso)) && (TextUtils.isEmpty(networkCountryIso) || networkCountryIso.equals(countryIso)))))) {
            runOnUiThread(new Runnable() { // from class: com.telguarder.features.settings._$$Lambda$AppInfoActivity$2RH5OB0OHuYuEz1rHl2rmCeiBQI
                @Override // java.lang.Runnable
                public final void run() {
                    AppInfoActivity.this.lambda$null$1$AppInfoActivity(countryIso, mcc);
                }
            });
        } else {
            runOnUiThread(new Runnable() { // from class: com.telguarder.features.settings._$$Lambda$AppInfoActivity$9IernE5OZS473wCIVEnNO0xgF7g
                @Override // java.lang.Runnable
                public final void run() {
                    AppInfoActivity.this.lambda$null$0$AppInfoActivity(simCountryIso, mccFromSimOperator, networkCountryIso, mccFromNetworkOperator);
                }
            });
        }
    }

    public /* synthetic */ void lambda$null$0$AppInfoActivity(String str, String str2, String str3, String str4) {
        ((TextView) findViewById(C2083R.C2086id.device_mcc)).setText(String.format("%s_%s (SIM), %s_%s (NET)", str, str2, str3, str4).toUpperCase());
    }

    public /* synthetic */ void lambda$null$1$AppInfoActivity(String str, String str2) {
        ((TextView) findViewById(C2083R.C2086id.device_mcc)).setText(String.format("%s_%s", str, str2).toUpperCase());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_appinfo);
        View findViewById = findViewById(C2083R.C2086id.appinfo_root_layout);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, findViewById(C2083R.C2086id.appinfo_scrollview_inside_layout), findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        UiHelper.setCircularActivityTransition(this, bundle, findViewById);
        Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.appinfo_toolbar);
        this.mToolbar = toolbar;
        UiHelper.initToolbar(this, toolbar, C2083R.string.settings_screen_app_version);
        initViews();
        if (Build.VERSION.SDK_INT >= 23) {
            findViewById(C2083R.C2086id.appinfo_scrollview).setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.settings.AppInfoActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    AppInfoActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
