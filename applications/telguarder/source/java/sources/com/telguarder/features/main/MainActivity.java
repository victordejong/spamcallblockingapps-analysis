package com.telguarder.features.main;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.features.numberLookup.PhoneEventLogManager;
import com.telguarder.features.phoneCallWidget.PhoneCallWidget;
import com.telguarder.features.phoneEventHistory.CallListActivity;
import com.telguarder.features.phoneEventHistory.SpamCallsActivity;
import com.telguarder.features.phoneNumberAnalyzer.AnalyzeActivity;
import com.telguarder.features.phoneNumberAnalyzer.AnalyzeButton;
import com.telguarder.features.phoneNumberAnalyzer.AnalyzeEditText;
import com.telguarder.features.phoneNumberBlocker.BlockListActivity;
import com.telguarder.features.phoneNumberTrending.TrendingActivity;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.features.settings.SettingsActivity;
import com.telguarder.features.userConsentHandling.TcfConsentManager;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.p022ui.DialogEventListener;
import com.telguarder.helpers.p022ui.DialogHelper;
import com.telguarder.helpers.p022ui.DialogModel;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesManager;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import jp.wasabeef.blurry.Blurry;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/main/MainActivity.class */
public class MainActivity extends AppCompatActivity implements ActivityCompat.OnRequestPermissionsResultCallback {
    private static final int ANALYZE_ACTIVITY_START_DELAY = 300;
    private static final int ANALYZE_BUTTON_ANIMATION_DURATION = 2000;
    public static final String EXTRA_OPEN_PAGE = "extraOpenPage";
    public static final String EXTRA_OPEN_PAGE_PARAMETER = "pageToOpenParameter";
    private static final int REQUEST_IGNOREBATOPT = 2143;
    static boolean active = false;
    private String analyzePageUrl;
    private long animStartTime;
    private AnalyzeButton mAnalyzeButton;
    private AnalyzeEditText mAnalyzeEditText;
    private LinearLayout mAnalyzeLayout;
    private TextView mAnalyzeTitle;
    private ImageButton mBlockListButton;
    private ImageView mButtonBlurredView;
    private LinearLayout mButtonLayout;
    private ImageButton mCallListButton;
    private LinearLayout mRootLayout;
    private ImageButton mSettingsButton;
    private ImageButton mSpamCallsButton;
    private ImageView mTopBlurredView;
    private LinearLayout mTopLayout;
    private ImageButton mTrendingButton;
    private String numberToAnalyze;
    private String trendingPageUrl;
    private UiHelper.PageType pageToOpen = null;
    private String pageToOpenParameter = null;
    private final View.OnTouchListener onCallListTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.3
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                CallListActivity.openCallList(MainActivity.this, view);
                return false;
            }
            ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_call_list_pressed);
            MainActivity.this.resetTrendingButton();
            MainActivity.this.resetSpamCallButton();
            MainActivity.this.resetBlockListButton();
            MainActivity.this.resetSettingsButton();
            return false;
        }
    };
    private final View.OnTouchListener onSpamCallTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.4
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                SpamCallsActivity.openSpamCalls(MainActivity.this, view);
                return false;
            }
            ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_spam_calls_pressed);
            MainActivity.this.resetTrendingButton();
            MainActivity.this.resetCallListButton();
            MainActivity.this.resetBlockListButton();
            MainActivity.this.resetSettingsButton();
            return false;
        }
    };
    private final View.OnTouchListener onBlockListTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.5
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                BlockListActivity.openBlockList(MainActivity.this, view);
                return false;
            }
            ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_block_list_pressed);
            MainActivity.this.resetTrendingButton();
            MainActivity.this.resetCallListButton();
            MainActivity.this.resetSpamCallButton();
            MainActivity.this.resetSettingsButton();
            return false;
        }
    };
    private final View.OnTouchListener onSettingsTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.6
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                SettingsActivity.openSettings(MainActivity.this, view);
                return false;
            }
            ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_settings_pressed);
            MainActivity.this.resetTrendingButton();
            MainActivity.this.resetCallListButton();
            MainActivity.this.resetSpamCallButton();
            MainActivity.this.resetBlockListButton();
            return false;
        }
    };
    private final View.OnTouchListener onTrendingTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.7
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                if (motionEvent.getAction() != 1 || WebViewPreloadHelper.getInstance().state == WebViewPreloadHelper.WebclientState.LOADING) {
                    return true;
                }
                ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_trending);
                return true;
            }
            MainActivity.this.trendingPageUrl = WebViewPreloadHelper.getInstance().getTrendingUrl(MainActivity.this);
            if (TextUtils.isEmpty(MainActivity.this.trendingPageUrl)) {
                return true;
            }
            ((ImageButton) view).setImageResource(C2083R.C2085drawable.ic_trending_pressed);
            WebViewPreloadHelper webViewPreloadHelper = WebViewPreloadHelper.getInstance();
            MainActivity mainActivity = MainActivity.this;
            webViewPreloadHelper.preloadWebView(mainActivity, mainActivity.trendingPageUrl, MainActivity.this.preloadTrendingWebViewCallback);
            return true;
        }
    };
    private final WebViewPreloadHelper.PreloadWebViewCallback preloadTrendingWebViewCallback = new WebViewPreloadHelper.PreloadWebViewCallback() { // from class: com.telguarder.features.main.MainActivity.8
        @Override // com.telguarder.helpers.web.WebViewPreloadHelper.PreloadWebViewCallback
        public void onDownloadFinished(final WebViewPreloadHelper.LoadErrorType loadErrorType, final boolean z) {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.main.MainActivity.8.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MainActivity.this.isFinishing() || !MainActivity.active) {
                        MainActivity.this.resetTrendingButton();
                    }
                    if (loadErrorType == null) {
                        TrendingActivity.openTrending(MainActivity.this, MainActivity.this.mTrendingButton, MainActivity.this.trendingPageUrl, z);
                        return;
                    }
                    MainActivity.this.resetTrendingButton();
                    Toast.makeText(MainActivity.this, (int) C2083R.string.preload_webview_error, 0).show();
                }
            });
        }
    };
    private final View.OnTouchListener onAnalyzeTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.main.MainActivity.9
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                MainActivity.this.resetTrendingButton();
                view.setBackgroundColor(UiHelper.getColorWrapper(MainActivity.this, C2083R.C2084color.colorPrimaryDarkRed));
                return false;
            } else if (motionEvent.getAction() != 1) {
                return false;
            } else {
                view.setBackgroundColor(UiHelper.getColorWrapper(MainActivity.this, C2083R.C2084color.colorPrimaryRed));
                view.performClick();
                return false;
            }
        }
    };
    private final View.OnClickListener onAnalyzeClickListener = new View.OnClickListener() { // from class: com.telguarder.features.main.MainActivity.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.showAnalyzeEditBox();
            MainActivity mainActivity = MainActivity.this;
            mainActivity.showKeypad(mainActivity.mAnalyzeEditText);
        }
    };
    private final View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: com.telguarder.features.main.MainActivity.11
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            MainActivity.this.mAnalyzeButton.setBackgroundColor(UiHelper.getColorWrapper(MainActivity.this, C2083R.C2084color.colorPrimaryRed));
            UiHelper.longPressHapticFeedback(view);
            if (MainActivity.this.isNumberAvailable()) {
                MainActivity.this.mAnalyzeButton.longClick = true;
                MainActivity.this.performCircularProgressButtonClick();
                return true;
            }
            MainActivity.this.showAnalyzeEditBox();
            MainActivity mainActivity = MainActivity.this;
            mainActivity.showKeypad(mainActivity.mAnalyzeEditText);
            return true;
        }
    };
    private final TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.telguarder.features.main.MainActivity.12
        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 6) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.hideKeypad(mainActivity.mAnalyzeEditText);
                MainActivity.this.hideAnalyzeEditBox();
                if (TextUtils.isEmpty(textView.getText())) {
                    return true;
                }
                MainActivity.this.numberToAnalyze = textView.getText().toString();
                MainActivity.this.performCircularProgressButtonClick();
                return true;
            }
            return false;
        }
    };
    private final View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: com.telguarder.features.main.MainActivity.13
        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0 && i == 4) {
                MainActivity.this.hideAnalyzeEditBox();
                return false;
            }
            return false;
        }
    };
    private final WebViewPreloadHelper.PreloadWebViewCallback preloadAnalyzeWebViewCallback = new C216915();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.telguarder.features.main.MainActivity$15 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/main/MainActivity$15.class */
    public class C216915 implements WebViewPreloadHelper.PreloadWebViewCallback {
        C216915() {
            MainActivity.this = r4;
        }

        public void finishHandler(WebViewPreloadHelper.LoadErrorType loadErrorType, final boolean z) {
            try {
                MainActivity.this.mAnalyzeButton.doneLoadingAnimation(17170445, BitmapFactory.decodeResource(MainActivity.this.getResources(), C2083R.C2085drawable.ic_done));
            } catch (Exception e) {
            }
            if (loadErrorType == null) {
                new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.main.MainActivity.15.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MainActivity.this.isFinishing() || !MainActivity.active || WebViewPreloadHelper.getInstance().state == null) {
                            MainActivity.this.resetActivity();
                        } else {
                            AnalyzeActivity.openAnalyze(MainActivity.this, MainActivity.this.mAnalyzeButton, MainActivity.this.analyzePageUrl, z);
                        }
                    }
                }, 300L);
                return;
            }
            MainActivity.this.resetActivity();
            Toast.makeText(MainActivity.this, loadErrorType == WebViewPreloadHelper.LoadErrorType.DATA_NOT_AVAILABLE ? 2131755302 : 2131755301, 0).show();
        }

        @Override // com.telguarder.helpers.web.WebViewPreloadHelper.PreloadWebViewCallback
        public void onDownloadFinished(final WebViewPreloadHelper.LoadErrorType loadErrorType, final boolean z) {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.main.MainActivity.15.1
                @Override // java.lang.Runnable
                public void run() {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - MainActivity.this.animStartTime;
                    if (elapsedRealtime < 2000) {
                        new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.main.MainActivity.15.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C216915.this.finishHandler(loadErrorType, z);
                            }
                        }, 2000 - elapsedRealtime);
                    } else {
                        C216915.this.finishHandler(loadErrorType, z);
                    }
                }
            });
        }
    }

    /* renamed from: com.telguarder.features.main.MainActivity$16 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/main/MainActivity$16.class */
    public static /* synthetic */ class C217316 {
        static final /* synthetic */ int[] $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[UiHelper.PageType.values().length];
            $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType = iArr;
            try {
                iArr[UiHelper.PageType.BLOCKED_POSTCALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.ANALYZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.BLOCKLIST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.CALLLIST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.SETTINGS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.SPAMCALLS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.TRENDING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private void automaticPageOpen(UiHelper.PageType pageType, String str) {
        switch (C217316.$SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[pageType.ordinal()]) {
            case 1:
                if (!TextUtils.isEmpty(str)) {
                    AnalyticsManager.getInstance().sendLookupClickBlockNotification();
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    LastPhoneCallActivity.openLastPhoneCall(this, str, 6L, null, true);
                    return;
                } else {
                    LastPhoneCallActivity.openLastPhoneCall(this, str, 1L, null, true);
                    return;
                }
            case 2:
                if (!TextUtils.isEmpty(str)) {
                    AnalyticsManager.getInstance().sendAnalyzeDeepLinkOpen();
                }
                if (!ContactUtils.isPhoneNumber(str)) {
                    return;
                }
                this.numberToAnalyze = str;
                performCircularProgressButtonClick();
                return;
            case 3:
                BlockListActivity.openBlockList(this, null);
                return;
            case 4:
                CallListActivity.openCallList(this, null);
                return;
            case 5:
                SettingsActivity.openSettings(this, null);
                return;
            case 6:
                SpamCallsActivity.openSpamCalls(this, null);
                return;
            case 7:
                TrendingActivity.openTrending(this, null, WebViewPreloadHelper.getInstance().getTrendingUrl(this), false);
                return;
            default:
                return;
        }
    }

    private void blurPageForAnalyze() {
        this.mRootLayout.setBackgroundColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorPrimaryDarkOverlay));
        this.mButtonLayout.setBackgroundColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorPrimaryDarkOverlay));
        this.mAnalyzeLayout.setAlpha(0.8f);
        this.mAnalyzeLayout.setElevation(6.0f);
        Blurry.with(this).color(C2083R.C2084color.colorPrimaryDarkOverlay).capture(this.mTopLayout).into(this.mTopBlurredView);
        this.mTopLayout.setVisibility(8);
        Blurry.with(this).color(C2083R.C2084color.colorPrimaryDarkOverlay).capture(this.mButtonLayout).into(this.mButtonBlurredView);
        this.mButtonLayout.setVisibility(8);
    }

    private void deBlurPageFromAnalyze() {
        this.mRootLayout.setBackgroundColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorPrimary));
        this.mButtonLayout.setBackgroundColor(UiHelper.getColorWrapper(this, C2083R.C2084color.colorPrimaryDark));
        this.mAnalyzeLayout.setAlpha(1.0f);
        this.mAnalyzeLayout.setElevation(0.0f);
        this.mTopBlurredView.setImageDrawable(null);
        this.mTopLayout.setVisibility(0);
        this.mButtonBlurredView.setImageDrawable(null);
        this.mButtonLayout.setVisibility(0);
    }

    public void hideAnalyzeEditBox() {
        if (this.mAnalyzeButton.getVisibility() != 0) {
            this.mAnalyzeEditText.setVisibility(8);
            this.mAnalyzeButton.setVisibility(0);
        }
    }

    public void hideKeypad(EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
    }

    public void initContentWithPermissionCheckIfNeeded() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.READ_PHONE_STATE") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.READ_CALL_LOG") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.READ_CONTACTS") != 0 || ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0 || ((Build.VERSION.SDK_INT >= 28 && ContextCompat.checkSelfPermission(this, "android.permission.ANSWER_PHONE_CALLS") != 0) || (Build.VERSION.SDK_INT < 28 && ContextCompat.checkSelfPermission(this, "android.permission.CALL_PHONE") != 0))) {
            MainActivityPermissionsDispatcher.initContentWithPermissionCheck(this);
            return;
        }
        logPermissionresults(new String[]{"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.READ_CONTACTS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE"}, new int[]{0, 0, 0, 0, 0, 0});
        initContent();
        systemAlertPermCheck();
    }

    public boolean isNumberAvailable() {
        return !TextUtils.isEmpty(this.numberToAnalyze);
    }

    private void logPermissionresults(String[] strArr, int[] iArr) {
        if (Build.VERSION.SDK_INT >= 23) {
            for (int i = 0; i < strArr.length; i++) {
                if ((!"android.permission.ANSWER_PHONE_CALLS".equals(strArr[i]) || Build.VERSION.SDK_INT >= 28) && (!"android.permission.CALL_PHONE".equals(strArr[i]) || Build.VERSION.SDK_INT < 28)) {
                    boolean z = true;
                    boolean z2 = iArr[i] != 0;
                    if ("android.permission.SYSTEM_ALERT_WINDOW".equals(strArr[i]) || "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS".equals(strArr[i]) || !z2 || shouldShowRequestPermissionRationale(strArr[i])) {
                        z = false;
                    }
                    if ("android.permission.READ_PHONE_STATE".equals(strArr[i]) && !z2 && PreferencesManager.getInstance().getUidWasRandom()) {
                        UID.upgradeUid(this);
                    }
                    if (!z2 && "android.permission.ACCESS_COARSE_LOCATION".equals(strArr[i])) {
                        LocationHelper.getInstance().updateCoarseLocation(this);
                    }
                    AnalyticsManager.getInstance().sendRuntimePermissionReqResult(strArr[i], !z2, z);
                }
            }
        }
    }

    public static void openMainActivity(AppCompatActivity appCompatActivity, boolean z) {
        Intent intent = new Intent(appCompatActivity, MainActivity.class);
        if (z) {
            intent.setFlags(131072);
        }
        try {
            appCompatActivity.startActivity(intent);
        } catch (Exception e) {
        }
    }

    public void performCircularProgressButtonClick() {
        String analyzeUrl = WebViewPreloadHelper.getInstance().getAnalyzeUrl(this, this.numberToAnalyze);
        this.analyzePageUrl = analyzeUrl;
        if (analyzeUrl != null) {
            this.animStartTime = SystemClock.elapsedRealtime();
            saveChangesToSharedPreferences();
            this.mAnalyzeButton.startAnimation();
            blurPageForAnalyze();
            this.mAnalyzeTitle.setText(C2083R.string.analyze_button_title_2);
            WebViewPreloadHelper.getInstance().preloadWebView(this, this.analyzePageUrl, this.preloadAnalyzeWebViewCallback);
        }
    }

    public void requestIgnoreBatteryOptimisations() {
        if (LookupBlockerCheckManager.getInstance().batteryOptimisationsIgnored(this)) {
            LookupBlockerCheckManager.getInstance().checkForFirmwareSpecificBlockers(this);
            return;
        }
        String string = getResources().getString(C2083R.string.ignore_batt_opt_permission_popup_title);
        DialogModel dialogModelOfTitleAndMessage = DialogModel.dialogModelOfTitleAndMessage(this, string, getResources().getString(C2083R.string.ignore_batt_opt_permission_popup_line1) + "\n\n" + getResources().getString(C2083R.string.ignore_batt_opt_permission_popup_line2));
        dialogModelOfTitleAndMessage.dialogType = DialogModel.DialogType.POSITIVE;
        dialogModelOfTitleAndMessage.positiveText = getResources().getString(C2083R.string.common_ok);
        dialogModelOfTitleAndMessage.dialogEventListener = new DialogEventListener() { // from class: com.telguarder.features.main.MainActivity.2
            @Override // com.telguarder.helpers.p022ui.DialogEventListener
            public void onNegativeSelected() {
                LookupBlockerCheckManager.getInstance().checkForFirmwareSpecificBlockers(MainActivity.this);
            }

            @Override // com.telguarder.helpers.p022ui.DialogEventListener
            public void onPositiveSelected() {
                try {
                    Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                    MainActivity.this.startActivityForResult(intent.setData(Uri.parse("package:" + MainActivity.this.getPackageName())), MainActivity.REQUEST_IGNOREBATOPT);
                } catch (Exception e) {
                    try {
                        MainActivity.this.startActivityForResult(new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"), MainActivity.REQUEST_IGNOREBATOPT);
                    } catch (Exception e2) {
                    }
                }
            }
        };
        DialogHelper.showAlertDialog(dialogModelOfTitleAndMessage);
    }

    public void resetActivity() {
        WebViewPreloadHelper.getInstance().mPreloadWebViewCallback = null;
        WebViewPreloadHelper.getInstance().state = null;
        this.mAnalyzeTitle.setText(getResources().getText(C2083R.string.analyze_button_title));
        hideKeypad(this.mAnalyzeEditText);
        hideAnalyzeEditBox();
        this.mAnalyzeEditText.setText((CharSequence) null);
        deBlurPageFromAnalyze();
        this.mAnalyzeButton.reset();
        this.numberToAnalyze = null;
        resetCallListButton();
        resetTrendingButton();
        resetSpamCallButton();
        resetBlockListButton();
        resetSettingsButton();
    }

    public void resetBlockListButton() {
        this.mBlockListButton.setImageResource(C2083R.C2085drawable.ic_block_list);
        this.mBlockListButton.requestLayout();
    }

    public void resetCallListButton() {
        this.mCallListButton.setImageResource(C2083R.C2085drawable.ic_call_list);
        this.mCallListButton.requestLayout();
    }

    public void resetSettingsButton() {
        this.mSettingsButton.setImageResource(C2083R.C2085drawable.ic_settings);
        this.mSettingsButton.requestLayout();
    }

    public void resetSpamCallButton() {
        this.mSpamCallsButton.setImageResource(C2083R.C2085drawable.ic_spam_calls);
        this.mSpamCallsButton.requestLayout();
    }

    public void resetTrendingButton() {
        WebViewPreloadHelper.getInstance().mPreloadWebViewCallback = null;
        this.mTrendingButton.setImageResource(C2083R.C2085drawable.ic_trending);
        this.mTrendingButton.requestLayout();
    }

    private void saveChangesToSharedPreferences() {
        PreferencesManager.getInstance().saveAnalyzedNumber(this.numberToAnalyze);
    }

    /* renamed from: setupNumberIfAvailable */
    public void lambda$onResume$0$MainActivity() {
        String lastClipBoardEntry = AppUtil.getLastClipBoardEntry(this);
        this.numberToAnalyze = null;
        if (!TextUtils.isEmpty(lastClipBoardEntry)) {
            String replaceAll = lastClipBoardEntry.trim().replaceAll(" ", "");
            if (ContactUtils.isPhoneNumber(replaceAll) && !PreferencesManager.getInstance().wasNumberAnalyzedBefore(replaceAll)) {
                this.numberToAnalyze = replaceAll;
            }
        }
        if (TextUtils.isEmpty(this.numberToAnalyze)) {
            LookupBlockerCheckManager.LastLookedupNumber lastIncomingLookedupNumber = PreferencesManager.getInstance().getLastIncomingLookedupNumber();
            String str = null;
            if (lastIncomingLookedupNumber != null) {
                str = null;
                if (!PreferencesManager.getInstance().wasNumberAnalyzedBefore(lastIncomingLookedupNumber.number)) {
                    str = lastIncomingLookedupNumber.number;
                }
            }
            this.numberToAnalyze = str;
        }
        this.mAnalyzeTitle.setTextDirection(3);
        TextView textView = this.mAnalyzeTitle;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(this.numberToAnalyze)) {
            str2 = "<var>" + this.numberToAnalyze + "</var> ";
        }
        sb.append(str2);
        sb.append((Object) getResources().getText(C2083R.string.analyze_button_title));
        textView.setText(AppUtil.fromHtml(sb.toString()));
    }

    private void setupViews() {
        AnalyzeButton analyzeButton = (AnalyzeButton) findViewById(C2083R.C2086id.button_analyze);
        this.mAnalyzeButton = analyzeButton;
        analyzeButton.setOnTouchListener(this.onAnalyzeTouchListener);
        this.mAnalyzeButton.setOnClickListener(this.onAnalyzeClickListener);
        this.mAnalyzeButton.setOnLongClickListener(this.onLongClickListener);
        AnalyzeEditText analyzeEditText = (AnalyzeEditText) findViewById(C2083R.C2086id.edit_analyze);
        this.mAnalyzeEditText = analyzeEditText;
        analyzeEditText.setOnEditorActionListener(this.onEditorActionListener);
        this.mAnalyzeEditText.setOnKeyListener(this.onKeyListener);
        this.mAnalyzeTitle = (TextView) findViewById(C2083R.C2086id.textview_analyze);
        this.mRootLayout = (LinearLayout) findViewById(C2083R.C2086id.main_root);
        this.mAnalyzeLayout = (LinearLayout) findViewById(C2083R.C2086id.analyze_layout);
        this.mTopLayout = (LinearLayout) findViewById(C2083R.C2086id.top_logo_layout);
        this.mTopBlurredView = (ImageView) findViewById(C2083R.C2086id.blurred_top_view);
        this.mButtonLayout = (LinearLayout) findViewById(C2083R.C2086id.button_layout);
        this.mButtonBlurredView = (ImageView) findViewById(C2083R.C2086id.blurred_button_view);
        ImageButton imageButton = (ImageButton) findViewById(C2083R.C2086id.button_call_list);
        this.mCallListButton = imageButton;
        imageButton.setOnTouchListener(this.onCallListTouchListener);
        ImageButton imageButton2 = (ImageButton) findViewById(C2083R.C2086id.button_spam_calls);
        this.mSpamCallsButton = imageButton2;
        imageButton2.setOnTouchListener(this.onSpamCallTouchListener);
        ImageButton imageButton3 = (ImageButton) findViewById(C2083R.C2086id.button_block_list);
        this.mBlockListButton = imageButton3;
        imageButton3.setOnTouchListener(this.onBlockListTouchListener);
        ImageButton imageButton4 = (ImageButton) findViewById(C2083R.C2086id.button_trending);
        this.mTrendingButton = imageButton4;
        imageButton4.setOnTouchListener(this.onTrendingTouchListener);
        ImageButton imageButton5 = (ImageButton) findViewById(C2083R.C2086id.button_settings);
        this.mSettingsButton = imageButton5;
        imageButton5.setOnTouchListener(this.onSettingsTouchListener);
    }

    public void showAnalyzeEditBox() {
        if (this.mAnalyzeEditText.getVisibility() != 0) {
            this.mAnalyzeButton.setVisibility(8);
            this.mAnalyzeEditText.setVisibility(0);
        }
        this.mAnalyzeEditText.setText(this.numberToAnalyze);
        AnalyzeEditText analyzeEditText = this.mAnalyzeEditText;
        analyzeEditText.setSelection(analyzeEditText.getText().length());
        this.mAnalyzeEditText.requestFocus();
    }

    public void showKeypad(final EditText editText) {
        editText.postDelayed(new Runnable() { // from class: com.telguarder.features.main.MainActivity.14
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) MainActivity.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(editText, 1);
                }
            }
        }, 50L);
    }

    private void systemAlertPermCheck() {
        if (!LookupBlockerCheckManager.getInstance().isLookupBlockerCheckNeeded(this)) {
            return;
        }
        if (LookupBlockerCheckManager.getInstance().canDrawOverlays(this)) {
            requestIgnoreBatteryOptimisations();
            return;
        }
        String string = getResources().getString(C2083R.string.floating_window_permission_popup_title);
        DialogModel dialogModelOfTitleAndMessage = DialogModel.dialogModelOfTitleAndMessage(this, string, getResources().getString(C2083R.string.floating_window_permission_popup_line1) + "\n\n" + getResources().getString(C2083R.string.floating_window_permission_popup_line2));
        dialogModelOfTitleAndMessage.dialogType = DialogModel.DialogType.POSITIVE;
        dialogModelOfTitleAndMessage.positiveText = getResources().getString(C2083R.string.common_ok);
        dialogModelOfTitleAndMessage.dialogEventListener = new DialogEventListener() { // from class: com.telguarder.features.main.MainActivity.1
            @Override // com.telguarder.helpers.p022ui.DialogEventListener
            public void onNegativeSelected() {
                MainActivity.this.requestIgnoreBatteryOptimisations();
            }

            @Override // com.telguarder.helpers.p022ui.DialogEventListener
            public void onPositiveSelected() {
                MainActivityPermissionsDispatcher.systemAlertWindowWithPermissionCheck(MainActivity.this);
            }
        };
        DialogHelper.showAlertDialog(dialogModelOfTitleAndMessage);
    }

    public void initContent() {
        PhoneEventLogManager.getInstance().initPhoneEventLogManager(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        MainActivityPermissionsDispatcher.onActivityResult(this, i);
        int i3 = -1;
        if (i == 1) {
            if (LookupBlockerCheckManager.getInstance().canDrawOverlays(this)) {
                i3 = 0;
            }
            logPermissionresults(new String[]{"android.permission.SYSTEM_ALERT_WINDOW"}, new int[]{i3});
            requestIgnoreBatteryOptimisations();
        } else if (i == REQUEST_IGNOREBATOPT && Build.VERSION.SDK_INT >= 23) {
            PowerManager powerManager = (PowerManager) getSystemService(PowerManager.class);
            if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(getPackageName())) {
                i3 = 0;
            }
            logPermissionresults(new String[]{"android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"}, new int[]{i3});
            LookupBlockerCheckManager.getInstance().openCustomSettingsPage(this, true);
        } else {
            switch (C217316.$SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType[UiHelper.PageType.valueOf(i).ordinal()]) {
                case 2:
                    resetActivity();
                    return;
                case 3:
                    resetBlockListButton();
                    return;
                case 4:
                    resetCallListButton();
                    return;
                case 5:
                    resetSettingsButton();
                    return;
                case 6:
                    resetSpamCallButton();
                    return;
                case 7:
                    resetTrendingButton();
                    return;
                default:
                    resetActivity();
                    return;
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mAnalyzeButton.isAnimating().booleanValue() || WebViewPreloadHelper.getInstance().state == WebViewPreloadHelper.WebclientState.LOADING) {
            resetActivity();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(C2083R.layout.activity_main);
            UiHelper.setupBarScreenWithBottomNavbarPadding(this, findViewById(C2083R.C2086id.button_layout), null, true);
            setupViews();
            this.pageToOpen = (UiHelper.PageType) getIntent().getSerializableExtra(EXTRA_OPEN_PAGE);
            this.pageToOpenParameter = getIntent().getStringExtra(EXTRA_OPEN_PAGE_PARAMETER);
        } catch (Exception e) {
            try {
                finish();
            } catch (Exception e2) {
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyzeButton analyzeButton = this.mAnalyzeButton;
        if (analyzeButton != null) {
            analyzeButton.dispose();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.mAnalyzeButton.isAnimating().booleanValue() || WebViewPreloadHelper.getInstance().state == WebViewPreloadHelper.WebclientState.LOADING) {
            resetActivity();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        TcfConsentManager.getInstance().requestConsent(this, new Runnable() { // from class: com.telguarder.features.main._$$Lambda$MainActivity$z3AATeTtNWI687agd7baU0K0lNk
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.initContentWithPermissionCheckIfNeeded();
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        MainActivityPermissionsDispatcher.onRequestPermissionsResult(this, i, iArr);
        logPermissionresults(strArr, iArr);
        systemAlertPermCheck();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        PhoneCallWidget.hide(this);
        UiHelper.PageType pageType = this.pageToOpen;
        if (pageType != null) {
            automaticPageOpen(pageType, this.pageToOpenParameter);
            this.pageToOpen = null;
            return;
        }
        AnalyzeEditText analyzeEditText = this.mAnalyzeEditText;
        if (analyzeEditText == null || analyzeEditText.getVisibility() != 0) {
            try {
                getWindow().getDecorView().post(new Runnable() { // from class: com.telguarder.features.main._$$Lambda$MainActivity$4g3Zu59N9WUicMHs6d4bj0Ik2VI
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.this.lambda$onResume$0$MainActivity();
                    }
                });
                return;
            } catch (Exception e) {
                return;
            }
        }
        showAnalyzeEditBox();
        showKeypad(this.mAnalyzeEditText);
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

    public void systemAlertWindow() {
    }
}
