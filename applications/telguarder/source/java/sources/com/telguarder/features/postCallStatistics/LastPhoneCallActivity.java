package com.telguarder.features.postCallStatistics;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.AdInfoActivity;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy;
import com.telguarder.features.main.MainActivity;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.features.numberLookup.PhoneNumberLookupManager;
import com.telguarder.features.numberLookup.PhoneNumberLookupResult;
import com.telguarder.features.phoneCallWidget.PhoneCallWidget;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.features.phoneNumberAnalyzer.AnalyzeActivity;
import com.telguarder.features.phoneNumberBlocker.BlockNumberActivity;
import com.telguarder.features.phoneNumberBlocker.BlockedNumberManager;
import com.telguarder.features.postCallSpamInfo.LastPhoneCallSpamActivity;
import com.telguarder.features.rateAndFeedback.RateAndFeedbackManager;
import com.telguarder.features.rateAndFeedback.ReportResult;
import com.telguarder.features.sharing.ShareHelper;
import com.telguarder.features.sharing.Shareable;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.Contact;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.LinearLayoutManagerWithSmoothScroller;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/LastPhoneCallActivity.class */
public class LastPhoneCallActivity extends AppCompatActivity {
    static boolean active = false;
    private static PhoneEvent mBasePhoneEvent;
    private static Long mCallTimeStamp;
    private static int mCallType = 0;
    private static LastPhoneCallActivity mInstance;
    private static PhoneNumberLookupResult mLastLookupResult;
    public static String mPhoneNumberFromCall;
    private static PhonecallStateHandler.PhoneStateCallData mPscd;
    static boolean mShowSpam = true;
    private static Boolean mWasTestNumber;
    private boolean isInFront;
    private TextView mAddressTextView;
    private View mBack;
    private TextView mBlockCallTextView;
    private LinearLayout mButtonLayout;
    private CSViewAdapter mCSViewAdapter;
    private TextView mContactCompanyNameTextView;
    private TextView mContactNameTextView;
    private LinearLayout mContactPhoneNumberLayout;
    private TextView mContactPhoneNumberTextView;
    private ImageView mHeaderImage;
    private LinearLayout mMoreInfoButtonLinearLayout;
    private Button mMoreInfoButtonText;
    private String mMoreInfoUrl;
    private RecyclerView mRecyclerView;
    private LinearLayout mSaveContactButtonLinearLayout;
    private BroadcastReceiver mScreenStateReceiver;
    private TextView mUnblockCallTextView;
    private boolean ratingNeeded = false;
    private boolean stoppedByUser = false;
    private boolean mAdvertAfterUnlock = false;
    private long userInteractionTime = 0;
    public boolean wasCallBackButtonPressed = false;
    private int adDebuglongClickDuration = AdError.SERVER_ERROR_CODE;
    private int adDebugClickCount = 0;
    private boolean isAdDebugLongPress = false;
    private boolean mFirstRecyclerlayoutErrorHandled = false;
    public Long mPostcallStartTimeStamp = null;
    private String mNotificationNumberInfo = "";
    private final WebViewPreloadHelper.PreloadWebViewCallback preloadAnalyseWebViewCallback = new WebViewPreloadHelper.PreloadWebViewCallback() { // from class: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.2
        @Override // com.telguarder.helpers.web.WebViewPreloadHelper.PreloadWebViewCallback
        public void onDownloadFinished(final WebViewPreloadHelper.LoadErrorType loadErrorType, final boolean z) {
            LastPhoneCallActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (LastPhoneCallActivity.this.isFinishing() || !LastPhoneCallActivity.active) {
                        LastPhoneCallActivity.this.resetMoreinfoButton();
                    }
                    if (loadErrorType == null) {
                        AnalyzeActivity.openAnalyze(LastPhoneCallActivity.this, LastPhoneCallActivity.this.mMoreInfoButtonLinearLayout, LastPhoneCallActivity.this.mMoreInfoUrl, z);
                        return;
                    }
                    LastPhoneCallActivity.this.resetMoreinfoButton();
                    Toast.makeText(LastPhoneCallActivity.this, loadErrorType == WebViewPreloadHelper.LoadErrorType.DATA_NOT_AVAILABLE ? 2131755302 : 2131755301, 0).show();
                }
            });
        }
    };

    /* renamed from: com.telguarder.features.postCallStatistics.LastPhoneCallActivity$5 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/LastPhoneCallActivity$5.class */
    public static /* synthetic */ class C22965 {

        /* renamed from: $SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupResult$DisplayType */
        static final /* synthetic */ int[] f1299xf7665842;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberLookupResult.DisplayType.values().length];
            f1299xf7665842 = iArr;
            try {
                iArr[PhoneNumberLookupResult.DisplayType.CONTACT_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.CONTACT_WITH_COMPANY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.CONTACT_WITH_PERSON.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.COMPANY_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.PERSON_WITH_COMPANY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.PERSON_ONLY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1299xf7665842[PhoneNumberLookupResult.DisplayType.NONE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver.class */
    public class ScreenStateReceiver extends BroadcastReceiver {
        public ScreenStateReceiver() {
            LastPhoneCallActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() != null) {
                if (!intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    if (!intent.getAction().equals("android.intent.action.USER_PRESENT") || !LastPhoneCallActivity.this.mAdvertAfterUnlock) {
                        return;
                    }
                    LastPhoneCallActivity.this.mAdvertAfterUnlock = false;
                    LastPhoneCallActivity.this.mPostcallStartTimeStamp = Long.valueOf(System.currentTimeMillis());
                    PostcallAdvertProxy.getInstance().onLoadAd(LastPhoneCallActivity.this, false);
                    PhonecallStateHandler.getInstance().stopPreloadKeepAlive();
                } else if (LastPhoneCallActivity.this.stoppedByUser) {
                } else {
                    PostcallAdvertProxy.getInstance().onScreenOff();
                    if (LastPhoneCallActivity.mCallType == 3) {
                        return;
                    }
                    if (LastPhoneCallActivity.this.isPassOrPinSet() && (!LastPhoneCallActivity.this.isPassOrPinSet() || LastPhoneCallActivity.mCallType == 1)) {
                        return;
                    }
                    AdvertManager.cleanAdNetworkFlowDebugInfo(true);
                    AdvertManager.getInstance().updateAdvertCache(ApplicationObject.getContext(), LastPhoneCallActivity.this.wasTestNumber());
                    LocationHelper.getInstance().updateCoarseLocation(LastPhoneCallActivity.this);
                    LastPhoneCallActivity.this.stop();
                }
            }
        }
    }

    private void applyHeaderValues() {
        findViewById(C2083R.C2086id.last_phone_call_contact).setPadding(0, UiHelper.getStatusBarHeight(this), 0, 0);
        findViewById(C2083R.C2086id.last_phone_call_root_view).setFitsSystemWindows(false);
        this.mHeaderImage.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$P9_icp81RUwitol3EYo31IsFrQg
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LastPhoneCallActivity.this.lambda$applyHeaderValues$5$LastPhoneCallActivity(view, motionEvent);
            }
        });
        this.mHeaderImage.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$ja7PeEbyHeLYnsoRsco4U5FcPRY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LastPhoneCallActivity.this.lambda$applyHeaderValues$7$LastPhoneCallActivity(view);
            }
        });
    }

    private void applyThemeValues() {
        setTheme(2131821016);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), true, true, false);
    }

    private LinearLayoutManagerWithSmoothScroller getCustomLayoutManager() {
        LinearLayoutManagerWithSmoothScroller linearLayoutManagerWithSmoothScroller = new LinearLayoutManagerWithSmoothScroller(this);
        linearLayoutManagerWithSmoothScroller.mCustomCallBack = new LinearLayoutManagerWithSmoothScroller.CustomCallBack() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$U6h_C9Mt38dziHFKndMxampCG2s
            @Override // com.telguarder.helpers.p022ui.LinearLayoutManagerWithSmoothScroller.CustomCallBack
            public final void onLayoutChildrenError(Exception exc) {
                LastPhoneCallActivity.this.lambda$getCustomLayoutManager$3$LastPhoneCallActivity(exc);
            }
        };
        return linearLayoutManagerWithSmoothScroller;
    }

    public static LastPhoneCallActivity getInstance() {
        return mInstance;
    }

    public static void handleResult(PhoneNumberLookupResult phoneNumberLookupResult) {
        if (phoneNumberLookupResult == null || !phoneNumberLookupResult.hasData()) {
            return;
        }
        if (isInstantiated()) {
            getInstance().updateContentWith(phoneNumberLookupResult);
            return;
        }
        mLastLookupResult = phoneNumberLookupResult;
        mBasePhoneEvent = phoneNumberLookupResult.getPhoneEventByNumber(mPhoneNumberFromCall);
    }

    private void initListSections() {
        this.mRecyclerView = (RecyclerView) findViewById(C2083R.C2086id.recyclerview);
        CSViewAdapter cSViewAdapter = new CSViewAdapter(this, mPhoneNumberFromCall, mCallType);
        this.mCSViewAdapter = cSViewAdapter;
        this.mRecyclerView.setAdapter(cSViewAdapter);
        this.mRecyclerView.setLayoutManager(getCustomLayoutManager());
    }

    private void initViews() {
        this.mBack = findViewById(C2083R.C2086id.call_widget_back);
        this.mHeaderImage = (ImageView) findViewById(C2083R.C2086id.call_widget_tg_logo);
        this.mContactNameTextView = (TextView) findViewById(C2083R.C2086id.last_phone_call_name);
        this.mContactCompanyNameTextView = (TextView) findViewById(C2083R.C2086id.last_phone_call_company_name);
        this.mContactPhoneNumberLayout = (LinearLayout) findViewById(C2083R.C2086id.last_phone_call_phone_number_layout);
        this.mContactPhoneNumberTextView = (TextView) findViewById(C2083R.C2086id.last_phone_call_phone_number);
        this.mAddressTextView = (TextView) findViewById(C2083R.C2086id.last_phone_call_address);
        this.mMoreInfoButtonLinearLayout = (LinearLayout) findViewById(C2083R.C2086id.last_phone_call_more_info);
        this.mMoreInfoButtonText = (Button) findViewById(C2083R.C2086id.tv_last_call_more_info);
        this.mSaveContactButtonLinearLayout = (LinearLayout) findViewById(C2083R.C2086id.last_phone_call_save_contact);
        this.mBlockCallTextView = (TextView) findViewById(C2083R.C2086id.tv_last_call_block);
        this.mUnblockCallTextView = (TextView) findViewById(C2083R.C2086id.tv_last_call_unblock);
        this.mButtonLayout = (LinearLayout) findViewById(C2083R.C2086id.last_phone_call_button_layout);
    }

    public static boolean isInstantiated() {
        return mInstance != null;
    }

    public boolean isPassOrPinSet() {
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.isKeyguardSecure() && keyguardManager.isKeyguardLocked();
    }

    public static /* synthetic */ void lambda$onCreate$1(Thread thread, Throwable th) {
        if (PostcallAdvertProxy.getInstance().isReady() && !PostcallAdvertProxy.getInstance().isPresented()) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdvertProxy.getInstance().mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
        }
        System.exit(0);
    }

    private void loadCallLogWithResults(boolean z) {
        PhoneEvent phoneEvent;
        if (mShowSpam && (phoneEvent = mBasePhoneEvent) != null && (phoneEvent.isSpamCommunityOrange() || mBasePhoneEvent.isSpamCommunityRed())) {
            stop();
            LastPhoneCallSpamActivity.openLastPhoneCallSpam(getApplicationContext(), mLastLookupResult.getSpamResult(mPhoneNumberFromCall), mCallType);
            return;
        }
        int i = 0;
        if (z && !PostcallAdvertProxy.getInstance().isPresented()) {
            if (isPassOrPinSet()) {
                this.mAdvertAfterUnlock = true;
            } else {
                this.mPostcallStartTimeStamp = Long.valueOf(System.currentTimeMillis());
                PostcallAdvertProxy.getInstance().onLoadAd(this, false);
                PhonecallStateHandler.getInstance().stopPreloadKeepAlive();
            }
        }
        setBlockButtonState(mPhoneNumberFromCall);
        this.mContactPhoneNumberTextView.setText(ContactUtils.getFormattedPhoneNumber(this, mPhoneNumberFromCall, true, null));
        PhoneEvent phoneEvent2 = mBasePhoneEvent;
        if (phoneEvent2 != null && phoneEvent2.isSpamPersonal()) {
            showPersonalSpam();
        } else if (mLastLookupResult != null) {
            this.mNotificationNumberInfo = "";
            switch (C22965.f1299xf7665842[mLastLookupResult.getDisplayType().ordinal()]) {
                case 1:
                    showContact();
                    break;
                case 2:
                    showContactWithCompany();
                    break;
                case 3:
                    showContactWithPerson(mLastLookupResult.getContact());
                    break;
                case 4:
                    showCompany();
                    break;
                case 5:
                    showPersonWithCompany();
                    break;
                case 6:
                    showPerson();
                    break;
                case 7:
                    showUnknownNumber();
                    break;
            }
        } else {
            showUnknownNumber();
        }
        setCallTypeImage(mCallType);
        setCallTime();
        LinearLayout linearLayout = this.mSaveContactButtonLinearLayout;
        if (mBasePhoneEvent == null) {
            i = 8;
        }
        linearLayout.setVisibility(i);
    }

    public static void openLastPhoneCall(Context context, String str, long j, Long l, boolean z) {
        openLastPhoneCall(context, str, null, j, l, z);
    }

    public static void openLastPhoneCall(final Context context, String str, PhoneNumberLookupResult phoneNumberLookupResult, long j, Long l, boolean z) {
        PhoneEvent phoneEvent;
        LastPhoneCallActivity lastPhoneCallActivity = mInstance;
        if (lastPhoneCallActivity != null) {
            try {
                lastPhoneCallActivity.stop();
            } catch (Exception e) {
                Logger.error("Open last call task error");
            }
            mInstance = null;
        }
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str);
        mPscd = phoneStateCallData;
        if (phoneStateCallData == null || phoneStateCallData.lastCallState.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
            mWasTestNumber = null;
            mShowSpam = z;
            mCallTimeStamp = l;
            String e164NUmberIfPossible = ContactUtils.getE164NUmberIfPossible(context, str, null);
            mPhoneNumberFromCall = e164NUmberIfPossible;
            mLastLookupResult = phoneNumberLookupResult;
            mCallType = (int) j;
            PhoneEvent phoneEvent2 = null;
            if (phoneNumberLookupResult != null) {
                phoneEvent2 = phoneNumberLookupResult.getPhoneEventByNumber(e164NUmberIfPossible);
            }
            mBasePhoneEvent = phoneEvent2;
            PhoneCallWidget.hide(context);
            if (mShowSpam && (phoneEvent = mBasePhoneEvent) != null && (phoneEvent.isSpamCommunityOrange() || mBasePhoneEvent.isSpamCommunityRed())) {
                LastPhoneCallSpamActivity.openLastPhoneCallSpam(context, mLastLookupResult.getSpamResult(mPhoneNumberFromCall), mCallType);
                return;
            }
            Intent intent = new Intent(context, LastPhoneCallActivity.class);
            if (!(context instanceof AppCompatActivity)) {
                intent.addFlags(343965696);
            } else {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            PhoneNumberLookupResult phoneNumberLookupResult2 = mLastLookupResult;
            if (phoneNumberLookupResult2 != null && phoneNumberLookupResult2.hasData()) {
                return;
            }
            new Thread(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$__baG7xveqpCpwwcboMhLUi6088
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneNumberLookupManager.getInstance().lookupResultsForPhoneNumber(context, LastPhoneCallActivity.mPhoneNumberFromCall, new PhoneNumberLookupManager.PhoneNumberLookupCallbackListener() { // from class: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.1
                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onLookupCancelled(PhoneNumberLookupResult phoneNumberLookupResult3) {
                            LastPhoneCallActivity.handleResult(phoneNumberLookupResult3);
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onLookupFailed(Exception exc) {
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onLookupInProgress() {
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onLookupNotAllowed() {
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onNoResults() {
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onResultsFromBackend(PhoneNumberLookupResult phoneNumberLookupResult3) {
                            LastPhoneCallActivity.handleResult(phoneNumberLookupResult3);
                        }

                        @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                        public void onResultsFromCache(PhoneNumberLookupResult phoneNumberLookupResult3) {
                            LastPhoneCallActivity.handleResult(phoneNumberLookupResult3);
                        }
                    }, PhoneNumberLookupManager.getInstance().getCallTypeByCallLogCallType(LastPhoneCallActivity.mCallType), false);
                }
            }).start();
        }
    }

    private void registerScreenStateReceiver() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        ScreenStateReceiver screenStateReceiver = new ScreenStateReceiver();
        this.mScreenStateReceiver = screenStateReceiver;
        try {
            registerReceiver(screenStateReceiver, intentFilter);
        } catch (Exception e) {
            Logger.error("Last call activity screen_off receiver register error");
        }
    }

    public void removeNumberFromBlockedList(ReportResult reportResult, String str) {
        if (TextUtils.isEmpty(str) || reportResult == null || reportResult.numbers == null || reportResult.numbers.size() == 0) {
            return;
        }
        Iterator<ReportResult.ReportEntry> it = reportResult.numbers.iterator();
        while (it.hasNext()) {
            try {
                if (ContactUtils.isNumberTheSame(it.next().number, str)) {
                    it.remove();
                }
            } catch (Exception e) {
                return;
            }
        }
    }

    public void resetMoreinfoButton() {
        WebViewPreloadHelper.getInstance().mPreloadWebViewCallback = null;
        this.mMoreInfoButtonLinearLayout.setSelected(false);
        this.mMoreInfoButtonText.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.textColorDark));
        this.mMoreInfoButtonText.setSelected(false);
        this.mMoreInfoButtonLinearLayout.requestLayout();
    }

    private void setBackClickListener() {
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$b2iSpAsjsZFixw6rN_sSnxpD2tc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LastPhoneCallActivity.this.lambda$setBackClickListener$8$LastPhoneCallActivity(view);
            }
        });
    }

    private void setBlockButtonState(String str) {
        if (TextUtils.isEmpty(str) || !BlockedNumberManager.getInstance().isNumberBlocked(str, false)) {
            this.mUnblockCallTextView.setVisibility(8);
            this.mBlockCallTextView.setVisibility(0);
            return;
        }
        this.mUnblockCallTextView.setVisibility(0);
        this.mBlockCallTextView.setVisibility(8);
    }

    private void setBlockCallLayoutListener() {
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$gFqh1zyBh_fy6b0mQ3BqvUVjDBM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LastPhoneCallActivity.this.lambda$setBlockCallLayoutListener$12$LastPhoneCallActivity(view);
            }
        };
        findViewById(C2083R.C2086id.tv_last_call_block).setOnClickListener(onClickListener);
        findViewById(C2083R.C2086id.tv_last_call_unblock).setOnClickListener(onClickListener);
    }

    private void setCallBackLayoutListener() {
        findViewById(C2083R.C2086id.tv_last_call_call_back).setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$2GHEBlrhQnBmjwmE8iT6BeljobA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LastPhoneCallActivity.this.lambda$setCallBackLayoutListener$9$LastPhoneCallActivity(view);
            }
        });
    }

    private void setCallTime() {
        if (mCallTimeStamp == null) {
            ((TextView) findViewById(C2083R.C2086id.last_phone_call_date_time)).setText("");
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(mCallTimeStamp.longValue());
        ((TextView) findViewById(C2083R.C2086id.last_phone_call_date_time)).setText(new SimpleDateFormat("d.MMM HH:mm", Locale.getDefault()).format(calendar.getTime()));
    }

    private void setCallTypeImage(int i) {
        ImageView imageView = (ImageView) findViewById(C2083R.C2086id.last_phone_call_call_type);
        if (i == 1) {
            imageView.setImageResource(C2083R.C2085drawable.call_incoming);
        } else if (i == 2) {
            imageView.setImageResource(C2083R.C2085drawable.call_outgoing);
        } else if (i == 3) {
            imageView.setImageResource(C2083R.C2085drawable.call_missed);
        } else if (i == 6) {
            imageView.setImageResource(C2083R.C2085drawable.call_rejected);
        } else {
            Logger.debug("Unhandled call actorType!");
            imageView.setImageResource(C2083R.C2085drawable.call_outgoing);
        }
    }

    private void setLayout() {
        setContentView(C2083R.layout.activity_last_phone_call);
    }

    private void setMoreInfoLayoutListener() {
        this.mMoreInfoButtonText.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LastPhoneCallActivity.this.lambda$setMoreInfoLayoutListener$10$LastPhoneCallActivity(view, motionEvent);
            }
        });
    }

    private void setSaveContactLayoutListener() {
        findViewById(C2083R.C2086id.tv_last_call_save_contact).setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$khDhw5e76MLN7sZ1BIMNnsDMCww
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LastPhoneCallActivity.this.lambda$setSaveContactLayoutListener$11$LastPhoneCallActivity(view);
            }
        });
    }

    private void setViewListeners() {
        setBackClickListener();
        setCallBackLayoutListener();
        setMoreInfoLayoutListener();
        setSaveContactLayoutListener();
        setBlockCallLayoutListener();
    }

    private void showAdDebugInfoScreen() {
        ((Vibrator) getInstance().getSystemService("vibrator")).vibrate(100L);
        AdInfoActivity.adDebugInfoEnabled = true;
        Intent intent = new Intent(this, AdInfoActivity.class);
        intent.addFlags(268435456);
        startActivity(intent);
        stop(true);
    }

    private void showCompany() {
        this.mContactNameTextView.setText(mLastLookupResult.getCompanyCall().getReportableName());
        showCompanyName("");
        if (!TextUtils.isEmpty(mLastLookupResult.getCompanyCall().getReportableAddress())) {
            this.mAddressTextView.setText(mLastLookupResult.getCompanyCall().getReportableAddress());
            this.mAddressTextView.setVisibility(0);
        } else {
            this.mAddressTextView.setVisibility(8);
        }
        this.mNotificationNumberInfo = mLastLookupResult.getCompanyCall().getReportableName();
    }

    private void showCompanyName(String str) {
        if (!TextUtils.isEmpty(str) || TextUtils.isEmpty(this.mContactPhoneNumberTextView.getText())) {
            this.mContactPhoneNumberLayout.setVisibility(0);
            this.mContactCompanyNameTextView.setText(str);
            this.mContactCompanyNameTextView.setTextDirection(5);
            this.mContactCompanyNameTextView.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.post_call_light_text));
            this.mContactCompanyNameTextView.setTypeface(null, 0);
            return;
        }
        this.mContactCompanyNameTextView.setText(this.mContactPhoneNumberTextView.getText());
        this.mContactCompanyNameTextView.setTextDirection(3);
        this.mContactPhoneNumberLayout.setVisibility(8);
        this.mContactCompanyNameTextView.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.post_call_dark_text));
        this.mContactCompanyNameTextView.setTypeface(null, 1);
    }

    private void showContact() {
        this.mContactNameTextView.setText(mLastLookupResult.getContact().name);
        showCompanyName("");
        this.mAddressTextView.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006e, code lost:
        if (r0 < r0) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098 A[Catch: Exception -> 0x00c1, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c1, blocks: (B:3:0x0010, B:5:0x001f, B:7:0x002e, B:16:0x0084, B:18:0x0098, B:19:0x00a1, B:20:0x00b1), top: B:29:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a1 A[Catch: Exception -> 0x00c1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c1, blocks: (B:3:0x0010, B:5:0x001f, B:7:0x002e, B:16:0x0084, B:18:0x0098, B:19:0x00a1, B:20:0x00b1), top: B:29:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showContactWithCompany() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.showContactWithCompany():void");
    }

    private void showContactWithPerson(Contact contact) {
        this.mContactNameTextView.setText((contact == null || TextUtils.isEmpty(contact.name)) ? mLastLookupResult.getPersonCall().getReportableName() : contact.name);
        showCompanyName("");
        if (!TextUtils.isEmpty(mLastLookupResult.getPersonCall().getReportableAddress())) {
            this.mAddressTextView.setText(mLastLookupResult.getPersonCall().getReportableAddress());
            this.mAddressTextView.setVisibility(0);
        } else {
            this.mAddressTextView.setVisibility(8);
        }
        this.mNotificationNumberInfo = mLastLookupResult.getPersonCall().getReportableName();
    }

    private void showPerson() {
        showContactWithPerson(null);
    }

    private void showPersonWithCompany() {
        this.mContactNameTextView.setText(mLastLookupResult.getPersonCall().getReportableName());
        showCompanyName(mLastLookupResult.getCompanyCall().getReportableName());
        if (!TextUtils.isEmpty(mLastLookupResult.getPersonCall().getReportableAddress())) {
            this.mAddressTextView.setText(mLastLookupResult.getPersonCall().getReportableAddress());
            this.mAddressTextView.setVisibility(0);
        } else {
            this.mAddressTextView.setVisibility(8);
        }
        this.mNotificationNumberInfo = mLastLookupResult.getPersonCall().getReportableName();
    }

    private void showPersonalSpam() {
        this.mContactNameTextView.setText(mBasePhoneEvent.getSpamTitle(this));
        PhoneNumberLookupResult phoneNumberLookupResult = mLastLookupResult;
        if (phoneNumberLookupResult == null || !phoneNumberLookupResult.hasCompany()) {
            showCompanyName("");
            this.mAddressTextView.setVisibility(8);
            return;
        }
        showCompanyName(mLastLookupResult.getCompanyCall().getReportableName());
        if (TextUtils.isEmpty(mLastLookupResult.getCompanyCall().getReportableAddress())) {
            this.mAddressTextView.setVisibility(8);
            return;
        }
        this.mAddressTextView.setText(mLastLookupResult.getCompanyCall().getReportableAddress());
        this.mAddressTextView.setVisibility(0);
    }

    private void showUnknownNumber() {
        if (!TextUtils.isEmpty(mPhoneNumberFromCall)) {
            this.mContactNameTextView.setText(ContactUtils.getUnknownNumberWithRegionDisplayName(this, mPhoneNumberFromCall));
            this.mAddressTextView.setVisibility(8);
            showCompanyName("");
            return;
        }
        this.mContactNameTextView.setText(AppUtil.getStringResource(this, C2083R.string.spam_title_community_reported));
        this.mContactCompanyNameTextView.setText(ContactUtils.getHiddenNumberDisplayName(this));
        this.mContactPhoneNumberLayout.setVisibility(8);
        this.mContactCompanyNameTextView.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.post_call_dark_text));
        this.mContactCompanyNameTextView.setTypeface(null, 1);
        this.mAddressTextView.setSingleLine(false);
        this.mAddressTextView.setMaxLines(2);
        this.mAddressTextView.setText(AppUtil.getStringResource(this, C2083R.string.hidden_number_callerid_text));
        this.mAddressTextView.setVisibility(0);
        this.mButtonLayout.setVisibility(8);
    }

    private void unregisterScreenStateReceiver() {
        BroadcastReceiver broadcastReceiver = this.mScreenStateReceiver;
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                Logger.error("Last call activity screen_off receiver unregister error");
            }
            this.mScreenStateReceiver = null;
        }
    }

    public boolean isActive() {
        return active;
    }

    public boolean isVisible() {
        return this.isInFront;
    }

    public boolean isVisibleAndNeedsUpdate() {
        return this.isInFront && mBasePhoneEvent == null;
    }

    public /* synthetic */ boolean lambda$applyHeaderValues$5$LastPhoneCallActivity(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.isAdDebugLongPress = true;
            new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$sGPSqL2HXVz1wy_w1hHOB1Gbv8M
                @Override // java.lang.Runnable
                public final void run() {
                    LastPhoneCallActivity.this.lambda$null$4$LastPhoneCallActivity();
                }
            }, this.adDebuglongClickDuration);
            return false;
        } else if (motionEvent.getAction() != 1) {
            return false;
        } else {
            this.isAdDebugLongPress = false;
            return false;
        }
    }

    public /* synthetic */ void lambda$applyHeaderValues$7$LastPhoneCallActivity(View view) {
        new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$Dx8pxRhEFaOQJxLy70kksBA0Ok0
            @Override // java.lang.Runnable
            public final void run() {
                LastPhoneCallActivity.this.lambda$null$6$LastPhoneCallActivity();
            }
        }, 1000L);
        int i = this.adDebugClickCount;
        if (i <= 1) {
            this.adDebugClickCount = i + 1;
            return;
        }
        this.adDebugClickCount = 0;
        showAdDebugInfoScreen();
    }

    public /* synthetic */ void lambda$getCustomLayoutManager$3$LastPhoneCallActivity(Exception exc) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(" Recyclerview layout children error: \n");
        if (exc != null) {
            str = exc.getMessage() + "\n";
        } else {
            str = "";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        try {
            if (this.mFirstRecyclerlayoutErrorHandled) {
                return;
            }
            this.mFirstRecyclerlayoutErrorHandled = true;
            AdvertManager.addAdNetworkFlowDebugInfo(" attempt to fix with a full refresh notification..\n");
            new Handler(Looper.getMainLooper()).post(_$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO_YQ.INSTANCE);
        } catch (Exception e) {
        }
    }

    public /* synthetic */ void lambda$null$4$LastPhoneCallActivity() {
        if (this.isAdDebugLongPress) {
            showAdDebugInfoScreen();
        }
    }

    public /* synthetic */ void lambda$null$6$LastPhoneCallActivity() {
        this.adDebugClickCount = 0;
    }

    public /* synthetic */ void lambda$setBackClickListener$8$LastPhoneCallActivity(View view) {
        onBackPressed();
    }

    public /* synthetic */ void lambda$setBlockCallLayoutListener$12$LastPhoneCallActivity(View view) {
        if (!TextUtils.isEmpty(mPhoneNumberFromCall)) {
            if (BlockedNumberManager.getInstance().isNumberBlocked(mPhoneNumberFromCall, false) && this.mUnblockCallTextView.getVisibility() == 0) {
                BlockedNumberManager.getInstance().removeBlockedNumber(this, mPhoneNumberFromCall, new BackendCallbackListener<ReportResult>(this) { // from class: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.4
                    @Override // com.telguarder.helpers.backend.BackendCallbackListener
                    public void onError(Exception exc) {
                    }

                    @Override // com.telguarder.helpers.backend.BackendCallbackListener
                    public void onStart() {
                    }

                    public void onSuccess(ReportResult reportResult) {
                        LastPhoneCallActivity.this.mUnblockCallTextView.setVisibility(8);
                        LastPhoneCallActivity.this.mBlockCallTextView.setVisibility(0);
                        LastPhoneCallActivity.this.removeNumberFromBlockedList(reportResult, LastPhoneCallActivity.mPhoneNumberFromCall);
                    }
                });
                return;
            }
            Intent intent = new Intent(this, BlockNumberActivity.class);
            PhoneEvent phoneEvent = mBasePhoneEvent;
            if (phoneEvent != null) {
                intent.putExtra(BlockNumberActivity.EXTRA_KEY_PHONE_EVENT, phoneEvent);
                intent.putExtra(BlockNumberActivity.EXTRA_KEY_PHONE_OWNER, mBasePhoneEvent.getReportableName());
            }
            intent.putExtra(BlockNumberActivity.EXTRA_KEY_PHONE_NUMBER, mPhoneNumberFromCall);
            startActivity(intent);
            stop();
        }
    }

    public /* synthetic */ void lambda$setCallBackLayoutListener$9$LastPhoneCallActivity(View view) {
        if (!TextUtils.isEmpty(mPhoneNumberFromCall)) {
            AnalyticsManager.getInstance().sendPostCallCallBackAction(mPhoneNumberFromCall);
            this.wasCallBackButtonPressed = true;
            stop();
            ContactUtils.callNumber(this, mPhoneNumberFromCall, null, null);
        }
    }

    public /* synthetic */ boolean lambda$setMoreInfoLayoutListener$10$LastPhoneCallActivity(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            if (motionEvent.getAction() != 1 || WebViewPreloadHelper.getInstance().state == WebViewPreloadHelper.WebclientState.LOADING) {
                return true;
            }
            this.mMoreInfoButtonText.setSelected(false);
            this.mMoreInfoButtonText.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.textColorDark));
            return true;
        }
        String analyzeUrl = WebViewPreloadHelper.getInstance().getAnalyzeUrl(this, mPhoneNumberFromCall);
        this.mMoreInfoUrl = analyzeUrl;
        if (TextUtils.isEmpty(analyzeUrl)) {
            return true;
        }
        this.mMoreInfoButtonText.setSelected(true);
        this.mMoreInfoButtonText.setTextColor(UiHelper.getColorWrapper(this, C2083R.C2084color.text_medium_google));
        WebViewPreloadHelper.getInstance().preloadWebView(this, this.mMoreInfoUrl, this.preloadAnalyseWebViewCallback);
        return true;
    }

    public /* synthetic */ void lambda$setSaveContactLayoutListener$11$LastPhoneCallActivity(View view) {
        if (mBasePhoneEvent == null || mLastLookupResult == null) {
            return;
        }
        Shareable shareable = new Shareable() { // from class: com.telguarder.features.postCallStatistics.LastPhoneCallActivity.3
            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableAddress() {
                return LastPhoneCallActivity.mBasePhoneEvent.getReportableAddress();
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableCompanyName() {
                return LastPhoneCallActivity.mLastLookupResult.hasCompany() ? LastPhoneCallActivity.mLastLookupResult.getCompanyCall().getReportableName() : "";
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableEmailAddress() {
                return LastPhoneCallActivity.mBasePhoneEvent.email;
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableName() {
                return LastPhoneCallActivity.mBasePhoneEvent.getReportableName();
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareablePhoneNumber() {
                return !TextUtils.isEmpty(LastPhoneCallActivity.mBasePhoneEvent.calledPhoneNumber) ? LastPhoneCallActivity.mBasePhoneEvent.calledPhoneNumber : LastPhoneCallActivity.mPhoneNumberFromCall;
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableRole() {
                return "";
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableText() {
                return "";
            }

            @Override // com.telguarder.features.sharing.Shareable
            public String getShareableWebsite() {
                return LastPhoneCallActivity.mLastLookupResult.hasCompany() ? LastPhoneCallActivity.mLastLookupResult.getCompanyCall().getReportableWebUrl() : LastPhoneCallActivity.mBasePhoneEvent.getReportableWebUrl();
            }
        };
        stop();
        ShareHelper.startContactsAppWithShareable(this, shareable);
    }

    public /* synthetic */ void lambda$updateContentWith$13$LastPhoneCallActivity(PhoneNumberLookupResult phoneNumberLookupResult) {
        mLastLookupResult = phoneNumberLookupResult;
        mBasePhoneEvent = phoneNumberLookupResult.getPhoneEventByNumber(mPhoneNumberFromCall);
        loadCallLogWithResults(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 27) {
            setTurnScreenOn(true);
        } else {
            getWindow().addFlags(2097152);
        }
        super.onAttachedToWindow();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        AdvertManager.cleanAdNetworkFlowDebugInfo(true);
        AdvertManager.getInstance().updateAdvertCache(ApplicationObject.getContext(), wasTestNumber());
        LocationHelper.getInstance().updateCoarseLocation(this);
        this.stoppedByUser = true;
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            this.stoppedByUser = false;
            Thread.setDefaultUncaughtExceptionHandler(_$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM.INSTANCE);
            if (Build.VERSION.SDK_INT >= 21) {
                getWindow().clearFlags(67108864);
                getWindow().addFlags(Integer.MIN_VALUE);
                if (Build.VERSION.SDK_INT >= 23) {
                    getWindow().getDecorView().setSystemUiVisibility(9216);
                } else {
                    getWindow().getDecorView().setSystemUiVisibility(1024);
                }
                getWindow().setStatusBarColor(0);
            }
            setLayout();
            initViews();
            applyThemeValues();
            applyHeaderValues();
            setViewListeners();
            initListSections();
            registerScreenStateReceiver();
            if (RateAndFeedbackManager.getInstance().shouldShowRateDialog(this)) {
                this.ratingNeeded = true;
            } else {
                PostcallAdvertProxy.getInstance().prepareForPostcallActivity(this);
            }
            this.wasCallBackButtonPressed = false;
            mInstance = this;
        } catch (Exception e) {
            try {
                finish();
            } catch (Exception e2) {
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterScreenStateReceiver();
        if (PostcallAdvertProxy.isInstanciated()) {
            PostcallAdvertProxy.getInstance().onDestroy();
        }
        mInstance = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.isInFront = false;
        PostcallAdvertProxy.getInstance().onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.isInFront = true;
        PhoneCallWidget.hide(this);
        resetMoreinfoButton();
        PostcallAdvertProxy.getInstance().onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.stoppedByUser) {
            startActivity(new Intent(this, MainActivity.class));
            stop();
        } else if (active) {
        } else {
            active = true;
            if (!this.ratingNeeded) {
                loadCallLogWithResults(true);
                return;
            }
            loadCallLogWithResults(false);
            RateAndFeedbackManager.getInstance().showRateDialog(this);
            this.ratingNeeded = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        active = false;
        if (!this.stoppedByUser || isPassOrPinSet()) {
            return;
        }
        if (PostcallAdvertProxy.getInstance().mAdvert != null && PostcallAdvertProxy.getInstance().mPostcallAdvertProvider != null && !PostcallAdvertProxy.getInstance().mPostcallAdvertProvider.adPresented) {
            AnalyticsManager.getInstance().sendAdvertCancelAction(PostcallAdvertProxy.getInstance().mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
        }
        stop();
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        this.userInteractionTime = System.currentTimeMillis();
        super.onUserInteraction();
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        if (System.currentTimeMillis() - this.userInteractionTime < 100 && !PostcallAdvertProxy.getInstance().isAdClicked()) {
            AdvertManager.getInstance().updateAdvertCache(ApplicationObject.getContext(), wasTestNumber());
            LocationHelper.getInstance().updateCoarseLocation(this);
            PostcallAdvertProxy.getInstance().onHomePressed();
            this.stoppedByUser = true;
        }
        super.onUserLeaveHint();
    }

    public void stop() {
        stop(false);
    }

    public void stop(boolean z) {
        this.isInFront = false;
        unregisterScreenStateReceiver();
        if (isTaskRoot() || z) {
            PhoneCallWidget.hide(this);
            PostcallAdvertProxy.getInstance().onStop();
            finish();
        }
    }

    public void updateContentWith(final PhoneNumberLookupResult phoneNumberLookupResult) {
        if (phoneNumberLookupResult != null) {
            runOnUiThread(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU
                @Override // java.lang.Runnable
                public final void run() {
                    LastPhoneCallActivity.this.lambda$updateContentWith$13$LastPhoneCallActivity(phoneNumberLookupResult);
                }
            });
        }
    }

    public boolean wasTestNumber() {
        if (mWasTestNumber == null) {
            mWasTestNumber = Boolean.valueOf(PhonecallStateHandler.getInstance().mLastNumberWasTestNumber);
        }
        return mWasTestNumber.booleanValue();
    }
}
