package com.telguarder.features.settings;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.features.phoneCallWidget.CallWidgetLocation;
import com.telguarder.features.userConsentHandling.PolicyWebView;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesKeys;
import com.telguarder.helpers.preferences.PreferencesManager;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/settings/SettingsActivity.class */
public class SettingsActivity extends AppCompatActivity {
    static boolean active = false;
    private TextView mAppVersionValueTextView;
    private LinearLayout mDebugAdLayout;
    private LinearLayout mMessageContainer;
    private TextView mPolicyViewLink;
    private String mPrivacyUrl;
    private List<SettingsOption> mSettingsOptions;
    private LinearLayout mSettingsOptionsContainer;
    private Spinner mSpinnerOfLocation;
    private Toolbar mToolbar;
    private final WebViewPreloadHelper.PreloadWebViewCallback preloadAnalyseWebViewCallback = new WebViewPreloadHelper.PreloadWebViewCallback() { // from class: com.telguarder.features.settings.SettingsActivity.5
        @Override // com.telguarder.helpers.web.WebViewPreloadHelper.PreloadWebViewCallback
        public void onDownloadFinished(final WebViewPreloadHelper.LoadErrorType loadErrorType, boolean z) {
            SettingsActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.settings.SettingsActivity.5.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SettingsActivity.this.isFinishing() || !SettingsActivity.active) {
                        SettingsActivity.this.resetPolicyLink();
                    }
                    if (loadErrorType != null) {
                        SettingsActivity.this.resetPolicyLink();
                    } else {
                        PolicyWebView.openPolicy(SettingsActivity.this, SettingsActivity.this.mPrivacyUrl);
                    }
                }
            });
        }
    };

    private void createSettingsOptionList() {
        if (this.mSettingsOptions == null) {
            this.mSettingsOptions = new ArrayList();
            SettingsOption settingsOption = new SettingsOption();
            settingsOption.title = AppUtil.getStringResource(this, C2083R.string.settings_screen_lookup_incoming_call);
            settingsOption.preferencesKey = PreferencesKeys.SETTINGS_LOOK_UP_INCOMING_CALLS;
            settingsOption.isActive = getSwitchStateFromPreferences(settingsOption.preferencesKey);
            SettingsOption settingsOption2 = new SettingsOption();
            settingsOption2.title = AppUtil.getStringResource(this, C2083R.string.settings_screen_lookup_outgoing_call);
            settingsOption2.preferencesKey = PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS;
            settingsOption2.isActive = getSwitchStateFromPreferences(settingsOption2.preferencesKey);
            if (Build.VERSION.SDK_INT <= 22) {
                settingsOption2.disabled = true;
                settingsOption2.comment = AppUtil.getStringResource(this, C2083R.string.settings_screen_lookup_outgoing_call_comment);
            }
            SettingsOption settingsOption3 = new SettingsOption();
            settingsOption3.title = AppUtil.getStringResource(this, C2083R.string.settings_screen_lookup_stored_contacts);
            settingsOption3.preferencesKey = PreferencesKeys.SETTINGS_LOOK_UP_STORED_CONTACTS;
            settingsOption3.isActive = getSwitchStateFromPreferences(settingsOption3.preferencesKey);
            SettingsOption settingsOption4 = new SettingsOption();
            settingsOption4.title = AppUtil.getStringResource(this, C2083R.string.settings_screen_lookup_abroad);
            settingsOption4.preferencesKey = PreferencesKeys.SETTINGS_LOOK_UP_ABROAD;
            settingsOption4.isActive = getSwitchStateFromPreferences(settingsOption4.preferencesKey);
            SettingsOption settingsOption5 = new SettingsOption();
            settingsOption5.title = AppUtil.getStringResource(this, C2083R.string.settings_screen_post_call_window_enabled);
            settingsOption5.preferencesKey = PreferencesKeys.SETTINGS_POST_CALL_WINDOW;
            settingsOption5.isActive = getSwitchStateFromPreferences(settingsOption5.preferencesKey);
            this.mSettingsOptions.add(settingsOption);
            this.mSettingsOptions.add(settingsOption2);
            this.mSettingsOptions.add(settingsOption3);
            this.mSettingsOptions.add(settingsOption4);
            this.mSettingsOptions.add(settingsOption5);
        }
    }

    private int getSelectedPosition() {
        return CallWidgetLocation.getAllConstants().indexOf(PreferencesManager.getInstance().getCallWidgetLocation());
    }

    private boolean getSwitchStateFromPreferences(String str) {
        return PreferencesManager.getInstance().getSettingEnabled(str);
    }

    private void initViews() {
        TextView textView = (TextView) findViewById(C2083R.C2086id.settings_app_version_value);
        this.mAppVersionValueTextView = textView;
        int i = 8;
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        this.mAppVersionValueTextView.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.settings.SettingsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(SettingsActivity.this, AppInfoActivity.class);
                intent.addFlags(268435456);
                SettingsActivity.this.startActivity(intent);
            }
        });
        this.mSettingsOptionsContainer = (LinearLayout) findViewById(C2083R.C2086id.settings_privacy_settings_container);
        this.mSpinnerOfLocation = (Spinner) findViewById(C2083R.C2086id.settings_spinner_of_location);
        TextView textView2 = (TextView) findViewById(C2083R.C2086id.settings_app_policy_title);
        this.mPolicyViewLink = textView2;
        textView2.setPaintFlags(textView2.getPaintFlags() | 8);
        this.mPolicyViewLink.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.settings.SettingsActivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    if (motionEvent.getAction() != 1 || WebViewPreloadHelper.getInstance().state == WebViewPreloadHelper.WebclientState.LOADING) {
                        return true;
                    }
                    view.setSelected(false);
                    SettingsActivity.this.mPolicyViewLink.setTextColor(UiHelper.getColorWrapper(SettingsActivity.this, C2083R.C2084color.colorAccent));
                    return true;
                }
                SettingsActivity.this.mPrivacyUrl = String.format(BackendApi.WEB_PRIVACY_POLICY, CountryManager.getInstance().getDeviceLanguage());
                if (TextUtils.isEmpty(SettingsActivity.this.mPrivacyUrl)) {
                    return true;
                }
                view.setSelected(true);
                SettingsActivity.this.mPolicyViewLink.setTextColor(UiHelper.getColorWrapper(SettingsActivity.this, C2083R.C2084color.text_dark_google));
                WebViewPreloadHelper webViewPreloadHelper = WebViewPreloadHelper.getInstance();
                SettingsActivity settingsActivity = SettingsActivity.this;
                webViewPreloadHelper.preloadWebView(settingsActivity, settingsActivity.mPrivacyUrl, SettingsActivity.this.preloadAnalyseWebViewCallback);
                return true;
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(C2083R.C2086id.message_container);
        this.mMessageContainer = linearLayout;
        if (LookupBlockerCheckManager.getInstance().isMessageBoxOnSettingsScreensNeeded(this)) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        this.mMessageContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.settings.SettingsActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    view.setAlpha(0.7f);
                    return false;
                } else if (action != 1) {
                    return false;
                } else {
                    LookupBlockerCheckManager.getInstance().setMessageBoxOnSettingsScreensNotNeeded();
                    view.setAlpha(1.0f);
                    view.setVisibility(8);
                    LookupBlockerCheckManager.getInstance().openCustomSettingsPage(SettingsActivity.this, false);
                    return false;
                }
            }
        });
        setupAdDebugStats();
    }

    public static void openSettings(AppCompatActivity appCompatActivity, View view) {
        UiHelper.openMainFeatureActivity(appCompatActivity, view, SettingsActivity.class, UiHelper.PageType.SETTINGS, false);
    }

    public void reportSettingChangeToAnalytics(SettingsOption settingsOption) {
        String str = settingsOption.preferencesKey;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -929581970:
                if (str.equals(PreferencesKeys.SETTINGS_POST_CALL_WINDOW)) {
                    z = false;
                    break;
                }
                break;
            case -919715505:
                if (str.equals(PreferencesKeys.SETTINGS_LOOK_UP_STORED_CONTACTS)) {
                    z = true;
                    break;
                }
                break;
            case -805588158:
                if (str.equals(PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS)) {
                    z = true;
                    break;
                }
                break;
            case -354665759:
                if (str.equals(PreferencesKeys.SETTINGS_LOOK_UP_ABROAD)) {
                    z = true;
                    break;
                }
                break;
            case 989496444:
                if (str.equals(PreferencesKeys.SETTINGS_LOOK_UP_INCOMING_CALLS)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                AnalyticsManager.getInstance().sendPostCallWindowSettingChanged(settingsOption.isActive);
                return;
            case true:
                AnalyticsManager.getInstance().sendLookupContactsSettingChanged(settingsOption.isActive);
                return;
            case true:
                AnalyticsManager.getInstance().sendLookupOutgoingSettingChanged(settingsOption.isActive);
                return;
            case true:
                AnalyticsManager.getInstance().sendLookupRoamingSettingChanged(settingsOption.isActive);
                return;
            case true:
                AnalyticsManager.getInstance().sendLookupIncomingSettingChanged(settingsOption.isActive);
                return;
            default:
                return;
        }
    }

    public void resetPolicyLink() {
        WebViewPreloadHelper.getInstance().mPreloadWebViewCallback = null;
        this.mPolicyViewLink.setSelected(false);
        this.mPolicyViewLink.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorAccent));
        this.mPolicyViewLink.requestLayout();
    }

    public void saveChangingSwitchSate(String str, boolean z) {
        PreferencesManager.getInstance().saveSettingEnabled(str, z);
    }

    private void setAppVersion() {
        TextView textView = this.mAppVersionValueTextView;
        textView.setText(AppUtil.getStringResource(this, C2083R.string.settings_screen_app_version) + " " + AppUtil.getFullApplicationVersionName(this));
    }

    private void setCallWidgetPositionAdapter() {
        this.mSpinnerOfLocation.setAdapter((SpinnerAdapter) new SettingsLocationSpinnerAdapter(this, CallWidgetLocation.getAllConstants()));
        this.mSpinnerOfLocation.setSelection(getSelectedPosition());
    }

    private void setLocationSpinnerListener() {
        this.mSpinnerOfLocation.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.telguarder.features.settings.SettingsActivity.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                CallWidgetLocation callWidgetLocation = CallWidgetLocation.getAllConstantsAsArray()[i];
                if (callWidgetLocation.equals(CallWidgetLocation.CUSTOM)) {
                    callWidgetLocation.setVerticalOffset(PreferencesManager.getInstance().getCallWidgetVerticalOffset(CallWidgetLocation.CUSTOM));
                }
                PreferencesManager.getInstance().saveCallWidgetLocation(callWidgetLocation);
                AnalyticsManager.getInstance().sendPopupLocationSettingChanged(callWidgetLocation);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
    }

    private void setSettingsOptionListener(final SwitchCompat switchCompat, final SettingsOption settingsOption) {
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.telguarder.features.settings.SettingsActivity.8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                for (SettingsOption settingsOption2 : SettingsActivity.this.mSettingsOptions) {
                    if (settingsOption2.equals(settingsOption)) {
                        settingsOption2.isActive = !settingsOption2.isActive;
                        SettingsActivity.this.saveChangingSwitchSate(settingsOption.preferencesKey, settingsOption2.isActive);
                        switchCompat.setChecked(settingsOption2.isActive);
                        SettingsActivity.this.reportSettingChangeToAnalytics(settingsOption2);
                    }
                }
            }
        });
    }

    private void setViewListeners() {
        setLocationSpinnerListener();
    }

    private void setViewStartingValues() {
        setCallWidgetPositionAdapter();
        setAppVersion();
    }

    private void setupAdDebugStats() {
        LinearLayout linearLayout = (LinearLayout) findViewById(C2083R.C2086id.settings_debug_ad_layout);
        this.mDebugAdLayout = linearLayout;
        linearLayout.setVisibility(8);
    }

    private void showSettingsOptions() {
        List<SettingsOption> list = this.mSettingsOptions;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.mSettingsOptionsContainer.removeAllViews();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        for (SettingsOption settingsOption : this.mSettingsOptions) {
            View settingsOptionView = SettingsProvider.getInstance().getSettingsOptionView(this, settingsOption);
            setSettingsOptionListener((SwitchCompat) settingsOptionView.findViewById(C2083R.C2086id.settings_option_switcher), settingsOption);
            this.mSettingsOptionsContainer.addView(settingsOptionView);
        }
    }

    private void updateDebugFbAdLoadedAndLoggedStats() {
        if (this.mDebugAdLayout.getVisibility() == 0) {
            int debugFbAdStatisticsNoFillCount = PreferencesManager.getInstance().getDebugFbAdStatisticsNoFillCount();
            int debugFbAdStatisticsLoadedCount = PreferencesManager.getInstance().getDebugFbAdStatisticsLoadedCount();
            int debugFbAdStatisticsLoggedImpressionCount = PreferencesManager.getInstance().getDebugFbAdStatisticsLoggedImpressionCount();
            int debugFbAdStatisticsExpiredCount = PreferencesManager.getInstance().getDebugFbAdStatisticsExpiredCount();
            TextView textView = (TextView) findViewById(C2083R.C2086id.debug_fb_ad_loaded_and_logged_stats);
            textView.setText(String.valueOf(debugFbAdStatisticsNoFillCount) + " / " + String.valueOf(debugFbAdStatisticsLoadedCount) + " / " + String.valueOf(debugFbAdStatisticsLoggedImpressionCount) + " / " + String.valueOf(debugFbAdStatisticsExpiredCount));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_settings);
        View findViewById = findViewById(C2083R.C2086id.settings_root_layout);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, findViewById(C2083R.C2086id.settings_scrollview_inside_layout), findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        UiHelper.setCircularActivityTransition(this, bundle, findViewById);
        Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.settings_toolbar);
        this.mToolbar = toolbar;
        UiHelper.initToolbar(this, toolbar, C2083R.string.settings);
        initViews();
        setViewStartingValues();
        setViewListeners();
        if (Build.VERSION.SDK_INT >= 23) {
            findViewById(C2083R.C2086id.settings_scrollview).setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.settings.SettingsActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    SettingsActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        createSettingsOptionList();
        showSettingsOptions();
        updateDebugFbAdLoadedAndLoggedStats();
        this.mMessageContainer.setVisibility(LookupBlockerCheckManager.getInstance().isMessageBoxOnSettingsScreensNeeded(this) ? 0 : 8);
        this.mPolicyViewLink.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorAccent));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        active = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        active = false;
    }
}
