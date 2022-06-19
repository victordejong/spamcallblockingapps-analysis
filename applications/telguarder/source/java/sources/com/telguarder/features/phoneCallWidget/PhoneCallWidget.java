package com.telguarder.features.phoneCallWidget;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.telguarder.ApplicationConstants;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.features.numberLookup.PhoneEventHistoryManger;
import com.telguarder.features.numberLookup.PhoneNumberLookupManager;
import com.telguarder.features.numberLookup.PhoneNumberLookupResult;
import com.telguarder.features.phoneCallWidget.PhoneCallWidget;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.Contact;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.FontManager;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesManager;
import com.venmo.view.TooltipView;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhoneCallWidget.class */
public class PhoneCallWidget {
    private static PhoneCallWidget mInstance;
    private Handler mAutomaticCloseHandler;
    private LinearLayout mBottomLayout;
    private LinearLayout mBottomLayoutSecure;
    private String mCallId;
    private PhoneNumberLookupManager.CallType mCallType;
    private ImageView mCloseButton;
    private ImageView mCloseButtonSecure;
    private View mFloatingView;
    private WindowManager.LayoutParams mLayoutParams;
    private ImageView mLogo;
    private String mPhoneNumber;
    private TextView mPhoneNumberView1;
    private TextView mPhoneNumberView2;
    private TextView mPhoneNumberView3;
    private TextView mPhoneNumberViewSecure;
    private PhonecallStateHandler.PhoneStateCallData mPscd;
    private RelativeLayout mRootLayout;
    private ProgressBar mSecurityLevelProgressBar;
    private TextView mSecurityLevelText;
    private TextView mTitleDetail;
    private LinearLayout mTitleSeparator;
    private TextView mTitleText;
    private TextView mTitleTextSecureLine1;
    private TextView mTitleTextSecureLine2;
    private TooltipView mTooltipView;
    private LinearLayout mTopLayout;
    private LinearLayout mTopLayoutSecure;
    private final View.OnClickListener closeButtonClickListener = new View.OnClickListener() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AnalyticsManager.getInstance().sendWidgetIsClosedByUserAction();
            PhoneCallWidget.this.hideWidget(view.getContext());
        }
    };
    private final View.OnTouchListener widgetTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.5
        private float initialTouchY;
        private int initialY;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.initialY = PhoneCallWidget.this.mLayoutParams.y;
                this.initialTouchY = motionEvent.getRawY();
                return true;
            } else if (action == 1) {
                if (this.initialY == PhoneCallWidget.this.mLayoutParams.y) {
                    return true;
                }
                PhoneCallWidget.this.saveWidgetPosition(view.getContext(), PhoneCallWidget.this.mLayoutParams.gravity, PhoneCallWidget.this.mLayoutParams.y);
                return true;
            } else if (action != 2) {
                return false;
            } else {
                if (PhoneCallWidget.this.mTooltipView.getVisibility() == 0) {
                    PhoneCallWidget.this.mTooltipView.setVisibility(8);
                }
                if (PhoneCallWidget.this.mLayoutParams.gravity == 80) {
                    PhoneCallWidget.this.mLayoutParams.y = this.initialY - ((int) (motionEvent.getRawY() - this.initialTouchY));
                } else {
                    PhoneCallWidget.this.mLayoutParams.y = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
                }
                if (!PhoneCallWidget.this.isWidgetVisible()) {
                    return true;
                }
                try {
                    PhoneCallWidget.this.getWm(view.getContext()).updateViewLayout(PhoneCallWidget.this.mFloatingView, PhoneCallWidget.this.mLayoutParams);
                    return true;
                } catch (Exception e) {
                    Logger.error("Error during call widget move");
                    return true;
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.telguarder.features.phoneCallWidget.PhoneCallWidget$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhoneCallWidget$1.class */
    public static final class RunnableC22121 implements Runnable {
        final /* synthetic */ String val$callId;
        final /* synthetic */ PhoneNumberLookupManager.CallType val$callType;
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$phoneNumber;

        RunnableC22121(Context context, String str, String str2, PhoneNumberLookupManager.CallType callType) {
            this.val$context = context;
            this.val$callId = str;
            this.val$phoneNumber = str2;
            this.val$callType = callType;
        }

        public static /* synthetic */ void lambda$run$0(Context context) {
            try {
                PhoneCallWidget.getInstance().startLookup(context);
            } catch (Exception e) {
                PhoneCallWidget.hide(context);
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0097 -> B:15:0x0010). Please submit an issue!!! */
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (PhoneCallWidget.isInstantiated()) {
                    PhoneCallWidget.getInstance().hideWidget(this.val$context);
                }
            } catch (Exception e) {
            }
            try {
                PhoneCallWidget.getInstance().mCallId = this.val$callId;
                PhoneCallWidget.getInstance().mPhoneNumber = this.val$phoneNumber;
                PhoneCallWidget.getInstance().mCallType = this.val$callType;
                PhoneCallWidget.getInstance().mPscd = PhonecallStateHandler.getInstance().getPhoneStateCallData(this.val$phoneNumber);
                PhoneCallWidget.getInstance().setupViews(this.val$context);
                PhoneCallWidget.getInstance().setupListeners();
                PhoneCallWidget.getInstance().showWidgetLoadingState(this.val$context);
                String str = this.val$phoneNumber;
                if (str != null && str.equals("")) {
                    PhoneCallWidget.getInstance().showHiddenNumber(this.val$context);
                    return;
                }
                final Context context = this.val$context;
                new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneCallWidget$1$61QIz44zCfuZ1fSKYw6wiVFs0O8
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhoneCallWidget.RunnableC22121.lambda$run$0(context);
                    }
                }).start();
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: com.telguarder.features.phoneCallWidget.PhoneCallWidget$10 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhoneCallWidget$10.class */
    public static /* synthetic */ class C221310 {

        /* renamed from: $SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupResult$DisplayType */
        static final /* synthetic */ int[] f1292xf7665842;

        /* renamed from: $SwitchMap$com$telguarder$features$phoneCallWidget$CallWidgetLocation */
        static final /* synthetic */ int[] f1293xd78b8ea8;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:51:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:39:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:55:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:43:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:37:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:53:0x0076). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b1 -> B:47:0x0081). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberLookupResult.DisplayType.values().length];
            f1292xf7665842 = iArr;
            try {
                iArr[PhoneNumberLookupResult.DisplayType.CONTACT_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1292xf7665842[PhoneNumberLookupResult.DisplayType.CONTACT_WITH_COMPANY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1292xf7665842[PhoneNumberLookupResult.DisplayType.COMPANY_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1292xf7665842[PhoneNumberLookupResult.DisplayType.PERSON_WITH_COMPANY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1292xf7665842[PhoneNumberLookupResult.DisplayType.PERSON_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1292xf7665842[PhoneNumberLookupResult.DisplayType.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            int[] iArr2 = new int[CallWidgetLocation.values().length];
            f1293xd78b8ea8 = iArr2;
            try {
                iArr2[CallWidgetLocation.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1293xd78b8ea8[CallWidgetLocation.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1293xd78b8ea8[CallWidgetLocation.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f1293xd78b8ea8[CallWidgetLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f1293xd78b8ea8[CallWidgetLocation.CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    private PhoneCallWidget() {
    }

    public String addTitleCountryCode(Context context, String str, String str2) {
        String regionDisplayName = ContactUtils.getRegionDisplayName(context, this.mPhoneNumber);
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            str3 = str;
            if (str.matches(".*\\d.*")) {
                str3 = "<var>" + str + "</var>";
            }
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(regionDisplayName)) {
            String str5 = str3 + str2 + regionDisplayName;
            str4 = str5;
            if (" (".equals(str2)) {
                str4 = str5 + ")";
            }
        }
        return str4;
    }

    private void changeWidgetState(final Context context, final String str, final PhoneNumberLookupResult phoneNumberLookupResult, final String str2, final String str3, final Spanned spanned, final int i, final int i2, final int i3, final int i4) {
        if (mInstance == null) {
            mInstance = new PhoneCallWidget();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.7
            /* JADX WARN: Removed duplicated region for block: B:30:0x01a7  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x01c0  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x01d3  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x01ec  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x022c  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0247  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 683
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.phoneCallWidget.PhoneCallWidget.RunnableC22197.run():void");
            }
        });
    }

    private void changeWidgetStateSecure(final Context context, final String str, final boolean z, final String str2) {
        if (mInstance == null) {
            mInstance = new PhoneCallWidget();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU
            @Override // java.lang.Runnable
            public final void run() {
                PhoneCallWidget.this.lambda$changeWidgetStateSecure$2$PhoneCallWidget(context, str2, str, z);
            }
        });
    }

    private void displayDataOnCallWidget(Context context, PhoneNumberLookupResult phoneNumberLookupResult) {
        PhoneEvent spamResult = phoneNumberLookupResult.getSpamResult(phoneNumberLookupResult.phoneNumber);
        if (spamResult != null) {
            showSpamData(context, spamResult, phoneNumberLookupResult, ContactUtils.getRegionDisplayName(context, this.mPhoneNumber));
        } else {
            showWidgetSpamSecureState(context, getName(context, phoneNumberLookupResult, true), phoneNumberLookupResult.securityLevel());
        }
    }

    private int getAppropriateWidgetGravity(Context context, CallWidgetLocation callWidgetLocation) {
        int i = C221310.f1293xd78b8ea8[callWidgetLocation.ordinal()];
        int i2 = 80;
        if (i != 1) {
            if (i == 3) {
                return 16;
            }
            if (i == 4) {
                return 80;
            }
            if (i == 5) {
                return PreferencesManager.getInstance().getCallWidgetLocationCustomGravity();
            }
            return 48;
        }
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if (keyguardManager == null) {
            return 48;
        }
        if (!keyguardManager.isKeyguardSecure()) {
            return 16;
        }
        if (keyguardManager.isKeyguardLocked() || this.mCallType.equals(PhoneNumberLookupManager.CallType.OUTGOING)) {
            i2 = 48;
        }
        return i2;
    }

    private String getCompanyOnly(Context context, PhoneEvent phoneEvent) {
        return "<b>" + addTitleCountryCode(context, phoneEvent.name, ", ") + "</b>";
    }

    private String getContactOnly(Contact contact) {
        return "<b>" + contact.name + "</b>";
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        if (r0 < r0) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080 A[Catch: Exception -> 0x00ed, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ed, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0014, B:15:0x006a, B:17:0x0080), top: B:22:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getContactWithCompany(android.content.Context r7, com.telguarder.helpers.contact.Contact r8, com.telguarder.features.numberLookup.PhoneEvent r9) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.phoneCallWidget.PhoneCallWidget.getContactWithCompany(android.content.Context, com.telguarder.helpers.contact.Contact, com.telguarder.features.numberLookup.PhoneEvent):java.lang.String");
    }

    public static PhoneCallWidget getInstance() {
        PhoneCallWidget phoneCallWidget;
        synchronized (PhoneCallWidget.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhoneCallWidget();
                }
                phoneCallWidget = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneCallWidget;
    }

    private String getName(Context context, PhoneNumberLookupResult phoneNumberLookupResult, boolean z) {
        if (phoneNumberLookupResult != null) {
            switch (C221310.f1292xf7665842[phoneNumberLookupResult.getDisplayType().ordinal()]) {
                case 1:
                    return getContactOnly(phoneNumberLookupResult.getContact());
                case 2:
                    return getContactWithCompany(context, phoneNumberLookupResult.getContact(), phoneNumberLookupResult.getCompanyCall());
                case 3:
                    return getCompanyOnly(context, phoneNumberLookupResult.getCompanyCall());
                case 4:
                    return getPersonWithCompany(context, phoneNumberLookupResult.getPersonCall(), phoneNumberLookupResult.getCompanyCall());
                case 5:
                    return getPersonOnly(context, phoneNumberLookupResult.getPersonCall());
                case 6:
                    return getUnknown(context, z);
                default:
                    return "";
            }
        }
        return getUnknown(context, z);
    }

    private String getPersonOnly(Context context, PhoneEvent phoneEvent) {
        return "<b>" + addTitleCountryCode(context, phoneEvent.name, ", ") + "</b>";
    }

    private String getPersonWithCompany(Context context, PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        return "<b>" + addTitleCountryCode(context, phoneEvent.name, ", ") + "</b><br>" + phoneEvent2.name;
    }

    private int getSecLevelDrawable(int i) {
        return i <= 20 ? C2083R.C2085drawable.widget_sec_level_progress_bar_20 : i <= 40 ? C2083R.C2085drawable.widget_sec_level_progress_bar_40 : i <= 60 ? C2083R.C2085drawable.widget_sec_level_progress_bar_60 : i <= 80 ? C2083R.C2085drawable.widget_sec_level_progress_bar_80 : C2083R.C2085drawable.widget_sec_level_progress_bar_100;
    }

    private int getSecLevelText(int i) {
        return (i >= 20 && i >= 40 && i >= 60 && i >= 80) ? C2083R.string.android_call_widget_number_secure_line2 : C2083R.string.blocked_numbers_header_total;
    }

    private int getSecLevelTitle(int i) {
        return (i >= 20 && i >= 40) ? (i >= 60 && i >= 80) ? C2083R.string.android_call_widget_number_secure_line1 : C2083R.string.spam_title_community_reported_orange : C2083R.string.spam_title_community_reported;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getSecurityPercentage(android.content.Context r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L12
            r0 = r7
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> L79
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L79
            r8 = r0
            goto L14
        L12:
            r0 = 0
            r8 = r0
        L14:
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L76
            com.telguarder.helpers.contact.ContactManager r0 = com.telguarder.helpers.contact.ContactManager.getInstance()
            r1 = r6
            r2 = r5
            java.lang.String r2 = r2.mPhoneNumber
            boolean r0 = r0.isPhonenumberInContactList(r1, r2)
            r10 = r0
            com.telguarder.features.numberLookup.PhoneEventHistoryManger r0 = com.telguarder.features.numberLookup.PhoneEventHistoryManger.getInstance()
            r1 = r6
            r2 = r5
            java.lang.String r2 = r2.mPhoneNumber
            r3 = 2
            int r0 = r0.getCallCountForNumber(r1, r2, r3)
            r1 = 1
            if (r0 <= r1) goto L4b
            r0 = r10
            if (r0 == 0) goto L44
            r0 = 95
            r9 = r0
            goto L76
        L44:
            r0 = 90
            r9 = r0
            goto L76
        L4b:
            com.telguarder.features.numberLookup.PhoneEventHistoryManger r0 = com.telguarder.features.numberLookup.PhoneEventHistoryManger.getInstance()
            r1 = r6
            r2 = r5
            java.lang.String r2 = r2.mPhoneNumber
            r3 = 1
            int r0 = r0.getCallCountForNumber(r1, r2, r3)
            r1 = 1
            if (r0 <= r1) goto L6a
            r0 = r10
            if (r0 == 0) goto L63
            goto L44
        L63:
            r0 = 85
            r9 = r0
            goto L76
        L6a:
            r0 = r10
            if (r0 == 0) goto L72
            goto L44
        L72:
            r0 = 80
            r9 = r0
        L76:
            r0 = r9
            return r0
        L79:
            r7 = move-exception
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.phoneCallWidget.PhoneCallWidget.getSecurityPercentage(android.content.Context, java.lang.String):int");
    }

    private String getUnknown(Context context, boolean z) {
        return addTitleCountryCode(context, (!z || !ContactUtils.isPhoneNumber(this.mPhoneNumber)) ? context.getString(C2083R.string.call_log_unknown_number) : ContactUtils.getFormattedPhoneNumber(context, this.mPhoneNumber, false, null), " (");
    }

    public WindowManager getWm(Context context) {
        return (WindowManager) context.getSystemService("window");
    }

    public static void hide(final Context context) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!PhoneCallWidget.isInstantiated()) {
                        return;
                    }
                    PhoneCallWidget.getInstance().hideWidget(context);
                } catch (Exception e) {
                }
            }
        });
    }

    public void hideWidget(Context context) {
        View view = this.mFloatingView;
        if (view != null) {
            try {
                view.setVisibility(8);
            } catch (Exception e) {
                Logger.error("Error during call widget hide " + e.getMessage());
            }
            try {
                getWm(context).removeView(this.mFloatingView);
            } catch (Exception e2) {
                Logger.error("Error during call widget remove " + e2.getMessage());
            }
            this.mFloatingView = null;
        }
    }

    public static boolean isInstantiated() {
        boolean z;
        synchronized (PhoneCallWidget.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private boolean isWidgetShowNeeded(Context context, PhoneNumberLookupResult phoneNumberLookupResult) {
        if (!LastPhoneCallActivity.isInstantiated() || !LastPhoneCallActivity.getInstance().isVisible()) {
            return true;
        }
        if (phoneNumberLookupResult != null && LastPhoneCallActivity.getInstance().isVisibleAndNeedsUpdate()) {
            LastPhoneCallActivity.getInstance().updateContentWith(phoneNumberLookupResult);
        }
        hideWidget(context);
        return false;
    }

    public void lookupCancelled(Context context) {
        AnalyticsManager.getInstance().sendWidgetIsClosedLookupCancelAction();
        hideWidget(context);
    }

    public void lookupFailed(Context context, Exception exc) {
        if (isWidgetShowNeeded(context, null)) {
            showWidgetErrorState(context, AppUtil.fromHtml(context.getString(C2083R.string.error_message_application_error)));
            setAutomaticCloseTimer(context, true);
        }
    }

    public void lookupNotAllowed(Context context) {
        if (isWidgetShowNeeded(context, null)) {
            showWidgetErrorState(context, AppUtil.fromHtml(context.getString(C2083R.string.android_call_widget_number_lookup_not_allowed)));
            setAutomaticCloseTimer(context, true);
        }
    }

    public void noResults(Context context) {
        if (isWidgetShowNeeded(context, null)) {
            showWidgetSpamSecureState(context, getName(context, null, true), null);
            setAutomaticCloseTimer(context, false);
        }
    }

    public void results(Context context, PhoneNumberLookupResult phoneNumberLookupResult) {
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = this.mPscd;
        if (phoneStateCallData != null) {
            phoneStateCallData.lastCallLookupResult = phoneNumberLookupResult;
        }
        updateHistoryCache(context, phoneNumberLookupResult);
        if (isWidgetShowNeeded(context, phoneNumberLookupResult)) {
            displayDataOnCallWidget(context, phoneNumberLookupResult);
            setAutomaticCloseTimer(context, false);
        }
    }

    public void saveWidgetPosition(final Context context, final int i, final int i2) {
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.6
            @Override // java.lang.Runnable
            public void run() {
                CallWidgetLocation callWidgetLocation = CallWidgetLocation.CUSTOM;
                callWidgetLocation.setVerticalOffset(i2);
                PreferencesManager.getInstance().saveCallWidgetLocation(callWidgetLocation);
                PreferencesManager.getInstance().saveCallWidgetLocationCustomGravity(i);
                if (PreferencesManager.getInstance().isCallWidgetTooltipNeeded(context)) {
                    PreferencesManager.getInstance().setCallWidgetTooltipNeeded(false);
                }
            }
        }).start();
    }

    public void setupListeners() {
        this.mRootLayout.setOnTouchListener(this.widgetTouchListener);
        this.mCloseButton.setOnClickListener(this.closeButtonClickListener);
        this.mCloseButtonSecure.setOnClickListener(this.closeButtonClickListener);
    }

    public void setupViews(Context context) {
        try {
            hideWidget(context);
        } catch (Exception e) {
        }
        View inflate = LayoutInflater.from(context).inflate(C2083R.layout.widget_phone_call_service, (ViewGroup) null);
        this.mFloatingView = inflate;
        inflate.setVisibility(8);
        this.mCloseButton = (ImageView) this.mFloatingView.findViewById(C2083R.C2086id.widget_close_button);
        this.mRootLayout = (RelativeLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_layout);
        this.mTopLayout = (LinearLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_top_layout);
        this.mBottomLayout = (LinearLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_bottom_layout);
        TextView textView = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_title_text);
        this.mTitleText = textView;
        textView.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
        this.mTitleSeparator = (LinearLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_title_separator);
        this.mTitleDetail = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_title_detail_text);
        this.mLogo = (ImageView) this.mFloatingView.findViewById(C2083R.C2086id.widget_logo_image);
        this.mTooltipView = (TooltipView) this.mFloatingView.findViewById(C2083R.C2086id.call_widget_tooltip);
        TextView textView2 = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_phone_number_text_line1);
        this.mPhoneNumberView1 = textView2;
        textView2.setText(ContactUtils.getFormattedPhoneNumber(context, this.mPhoneNumber, false, null));
        TextView textView3 = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_phone_number_text_line2);
        this.mPhoneNumberView2 = textView3;
        textView3.setVisibility(8);
        TextView textView4 = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_phone_number_text_line3);
        this.mPhoneNumberView3 = textView4;
        textView4.setVisibility(8);
        this.mTopLayoutSecure = (LinearLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_top_layout_secure);
        this.mBottomLayoutSecure = (LinearLayout) this.mFloatingView.findViewById(C2083R.C2086id.widget_bottom_layout_secure);
        TextView textView5 = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_title_text_secure_line1);
        this.mTitleTextSecureLine1 = textView5;
        textView5.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
        this.mTitleTextSecureLine1.setVisibility(0);
        TextView textView6 = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_title_text_secure_line2);
        this.mTitleTextSecureLine2 = textView6;
        textView6.setTypeface(FontManager.getInstance().getRegularTypeFace(context));
        this.mTitleTextSecureLine2.setVisibility(8);
        this.mSecurityLevelProgressBar = (ProgressBar) this.mFloatingView.findViewById(C2083R.C2086id.security_level_progress_bar);
        this.mSecurityLevelText = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.security_level_text);
        this.mPhoneNumberViewSecure = (TextView) this.mFloatingView.findViewById(C2083R.C2086id.widget_phone_number_text_secure);
        this.mCloseButtonSecure = (ImageView) this.mFloatingView.findViewById(C2083R.C2086id.widget_close_button_secure);
    }

    public static void show(Context context, String str, String str2, PhoneNumberLookupManager.CallType callType) {
        new Handler(context.getMainLooper()).post(new RunnableC22121(context, str, str2, callType));
    }

    public void showHiddenNumber(Context context) {
        showWidgetSpamWarningState(context, AppUtil.getStringResource(context, C2083R.string.spam_title_community_reported), AppUtil.fromHtml(AppUtil.getStringResource(context, C2083R.string.hidden_number_callerid_text)), ContactUtils.getHiddenNumberDisplayName(context), null, null);
    }

    private void showSpamData(Context context, PhoneEvent phoneEvent, PhoneNumberLookupResult phoneNumberLookupResult, String str) {
        String spamTitle = phoneEvent.getSpamTitle(context);
        Spanned fromHtml = AppUtil.fromHtml(phoneEvent.getSpamMessage(context));
        String formattedPhoneNumber = ContactUtils.getFormattedPhoneNumber(context, this.mPhoneNumber, false, null);
        if (phoneEvent.isSpamCommunityOrange()) {
            showWidgetSpamWarningState(context, spamTitle, fromHtml, formattedPhoneNumber, phoneNumberLookupResult, str);
        } else {
            showWidgetSpamAlertState(context, spamTitle, fromHtml, formattedPhoneNumber, phoneNumberLookupResult, str);
        }
    }

    private void showTooltip(Context context) {
        if (PreferencesManager.getInstance().isCallWidgetTooltipNeeded(context)) {
            this.mTooltipView.setVisibility(0);
            if (PreferencesManager.getInstance().getWidgetTooltipHideCount() <= 0) {
                return;
            }
            new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (PhoneCallWidget.this.mTooltipView.getVisibility() != 0) {
                            return;
                        }
                        PhoneCallWidget.this.mTooltipView.setVisibility(8);
                    } catch (Exception e) {
                        Logger.error("Error during call widget display");
                    }
                }
            }, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY);
        }
    }

    private void showWidgetErrorState(Context context, Spanned spanned) {
        changeWidgetState(context, ContactUtils.getFormattedPhoneNumber(context, this.mPhoneNumber, false, null), null, null, null, spanned, UiHelper.getColorWrapper(context, C2083R.C2084color.textColorDark), UiHelper.getColorWrapper(context, C2083R.C2084color.colorPrimaryDark), C2083R.C2085drawable.widget_logo_red, C2083R.C2085drawable.widget_close_dark);
    }

    public void showWidgetLoadingState(Context context) {
        changeWidgetStateSecure(context, getName(context, null, true), true, null);
    }

    private void showWidgetSpamAlertState(Context context, String str, Spanned spanned, String str2, PhoneNumberLookupResult phoneNumberLookupResult, String str3) {
        changeWidgetState(context, str2, phoneNumberLookupResult, str3, str, spanned, UiHelper.getColorWrapper(context, C2083R.C2084color.white), UiHelper.getColorWrapper(context, C2083R.C2084color.colorPrimaryRed), C2083R.C2085drawable.widget_logo_red, C2083R.C2085drawable.widget_close_light);
    }

    private void showWidgetSpamSecureState(Context context, String str, String str2) {
        changeWidgetStateSecure(context, str, false, str2);
    }

    private void showWidgetSpamWarningState(Context context, String str, Spanned spanned, String str2, PhoneNumberLookupResult phoneNumberLookupResult, String str3) {
        changeWidgetState(context, str2, phoneNumberLookupResult, str3, str, spanned, UiHelper.getColorWrapper(context, C2083R.C2084color.white), UiHelper.getColorWrapper(context, C2083R.C2084color.spam_warning_call_background), C2083R.C2085drawable.widget_logo_yellow, C2083R.C2085drawable.widget_close_light);
    }

    public void showWidgetWithDcyIfNeeded(Context context) {
        if (Build.VERSION.SDK_INT <= 23 || Build.VERSION.SDK_INT >= 28) {
            showWidget(context);
        } else {
            PhoneCallWidgetDcyActivity.openPermDcyActivity(context);
        }
    }

    public void startLookup(final Context context) {
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.8
            @Override // java.lang.Runnable
            public void run() {
                PhoneNumberLookupManager.getInstance().lookupResultsForPhoneNumber(context, PhoneCallWidget.this.mPhoneNumber, new PhoneNumberLookupManager.PhoneNumberLookupCallbackListener() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.8.1
                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onLookupCancelled(PhoneNumberLookupResult phoneNumberLookupResult) {
                        if (PhoneCallWidget.this.mPscd != null && phoneNumberLookupResult != null) {
                            PhoneCallWidget.this.mPscd.lastCallLookupResult = phoneNumberLookupResult;
                        }
                        PhoneCallWidget.this.lookupCancelled(context);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onLookupFailed(Exception exc) {
                        PhoneCallWidget.this.lookupFailed(context, exc);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onLookupInProgress() {
                        PhoneCallWidget.this.showWidgetLoadingState(context);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onLookupNotAllowed() {
                        PhoneCallWidget.this.lookupNotAllowed(context);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onNoResults() {
                        PhoneCallWidget.this.noResults(context);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onResultsFromBackend(PhoneNumberLookupResult phoneNumberLookupResult) {
                        PhoneCallWidget.this.results(context, phoneNumberLookupResult);
                    }

                    @Override // com.telguarder.features.numberLookup.PhoneNumberLookupManager.PhoneNumberLookupCallbackListener
                    public void onResultsFromCache(PhoneNumberLookupResult phoneNumberLookupResult) {
                        PhoneCallWidget.this.results(context, phoneNumberLookupResult);
                    }
                }, PhoneCallWidget.this.mCallType, !PhonecallStateHandler.getInstance().isKeepAliveRunning());
            }
        }).start();
    }

    private void updateHistoryCache(Context context, PhoneNumberLookupResult phoneNumberLookupResult) {
        if (phoneNumberLookupResult.getCompanyCall() != null) {
            PhoneEventHistoryManger.getInstance().updateLastCallHistoryListItem(context, phoneNumberLookupResult.getCompanyCall());
        } else if (phoneNumberLookupResult.getPersonCall() != null) {
            PhoneEventHistoryManger.getInstance().updateLastCallHistoryListItem(context, phoneNumberLookupResult.getPersonCall());
        } else if (phoneNumberLookupResult.getContact() == null) {
        } else {
            PhoneEventHistoryManger.getInstance().updateLastCallHistoryListItem(context, phoneNumberLookupResult.getContact());
        }
    }

    public boolean isWidgetVisible() {
        View view = this.mFloatingView;
        return view != null && view.getVisibility() == 0 && (Build.VERSION.SDK_INT < 19 || this.mFloatingView.isAttachedToWindow());
    }

    public /* synthetic */ void lambda$changeWidgetStateSecure$2$PhoneCallWidget(final Context context, final String str, String str2, boolean z) {
        this.mTopLayout.setVisibility(8);
        this.mBottomLayout.setVisibility(8);
        this.mCloseButton.setVisibility(8);
        this.mTopLayoutSecure.setVisibility(0);
        this.mBottomLayoutSecure.setVisibility(0);
        this.mCloseButtonSecure.setVisibility(0);
        this.mSecurityLevelProgressBar.setProgress(0);
        this.mSecurityLevelText.setText(String.format("%s %s%%", context.getString(C2083R.string.caller_id_popup_security_level_text), !TextUtils.isEmpty(str) ? str : "?"));
        if (TextUtils.isEmpty(str2) || !str2.contains("<var>")) {
            this.mPhoneNumberViewSecure.setTextDirection(5);
        } else {
            this.mPhoneNumberViewSecure.setTextDirection(3);
        }
        this.mPhoneNumberViewSecure.setText(AppUtil.fromHtml(str2));
        if (z) {
            this.mTitleTextSecureLine1.setVisibility(0);
            TextView textView = this.mTitleTextSecureLine1;
            textView.setText(AppUtil.fromHtml("<<font color=\"#6c6c6c\" face=\"arial\">" + context.getString(C2083R.string.android_call_widget_number_lookup_in_progress) + ".</font>"));
            this.mTitleTextSecureLine2.setVisibility(8);
        } else {
            new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneCallWidget$Rpd7Q_pieGdjK8D_wZjzK5cLUD8
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneCallWidget.this.lambda$null$1$PhoneCallWidget(context, str);
                }
            }).start();
        }
        this.mTopLayoutSecure.requestLayout();
        showWidgetWithDcyIfNeeded(context);
    }

    public /* synthetic */ void lambda$null$0$PhoneCallWidget(int i, Context context) {
        this.mSecurityLevelProgressBar.setProgress(i);
        this.mSecurityLevelText.setText(String.format("%s %s%%", context.getString(C2083R.string.caller_id_popup_security_level_text), String.valueOf(i)));
        this.mSecurityLevelProgressBar.setProgressDrawable(ContextCompat.getDrawable(context, getSecLevelDrawable(i)));
        this.mTitleTextSecureLine1.setVisibility(0);
        TextView textView = this.mTitleTextSecureLine1;
        textView.setText(AppUtil.fromHtml("<font face=\"arial\"><b>" + context.getString(getSecLevelTitle(i)) + "!"));
        this.mTitleTextSecureLine2.setVisibility(0);
        TextView textView2 = this.mTitleTextSecureLine2;
        textView2.setText(AppUtil.fromHtml("<font face=\"arial\">" + context.getString(getSecLevelText(i)) + ".</font>"));
    }

    public /* synthetic */ void lambda$null$1$PhoneCallWidget(final Context context, String str) {
        final int securityPercentage = getSecurityPercentage(context, str);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneCallWidget$_MPVQM9gv5c93Izn9kecFEv1seA
            @Override // java.lang.Runnable
            public final void run() {
                PhoneCallWidget.this.lambda$null$0$PhoneCallWidget(securityPercentage, context);
            }
        });
    }

    public void setAutomaticCloseTimer(final Context context, boolean z) {
        Object[] objArr = (z || this.mCallType == PhoneNumberLookupManager.CallType.OUTGOING) ? 6000 : 60000;
        Handler handler = new Handler(Looper.getMainLooper());
        final long j = objArr == 1 ? 1L : 0L;
        handler.post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.9
            @Override // java.lang.Runnable
            public void run() {
                String str = null;
                if (PhoneCallWidget.this.mAutomaticCloseHandler == null) {
                    PhoneCallWidget.this.mAutomaticCloseHandler = new Handler();
                } else {
                    PhoneCallWidget.this.mAutomaticCloseHandler.removeCallbacksAndMessages(null);
                }
                if (!TextUtils.isEmpty(PhoneCallWidget.this.mCallId)) {
                    str = PhoneCallWidget.this.mCallId;
                }
                final String str2 = str;
                PhoneCallWidget.this.mAutomaticCloseHandler.postDelayed(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidget.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (TextUtils.isEmpty(str2) || str2.equals(PhoneCallWidget.this.mCallId)) {
                            AnalyticsManager.getInstance().sendWidgetIsClosedAutoAction();
                            PhoneCallWidget.this.hideWidget(context);
                        }
                    }
                }, j);
            }
        });
    }

    public void showWidget(Context context) {
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = this.mPscd;
        if (phoneStateCallData != null && phoneStateCallData.lastCallState.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
            hide(context);
            return;
        }
        if (this.mFloatingView == null) {
            setupViews(context);
            setupListeners();
        }
        if (Build.VERSION.SDK_INT < 26) {
            this.mLayoutParams = new WindowManager.LayoutParams(-1, -2, 2010, 524296, -3);
        } else {
            this.mLayoutParams = new WindowManager.LayoutParams(-1, -2, 2038, 524296, -3);
        }
        CallWidgetLocation callWidgetLocation = PreferencesManager.getInstance().getCallWidgetLocation();
        this.mLayoutParams.gravity = getAppropriateWidgetGravity(context, callWidgetLocation);
        this.mLayoutParams.y = callWidgetLocation.getVerticalOffset();
        try {
            if (isWidgetVisible() && this.mFloatingView.getParent() != null && this.mFloatingView.getVisibility() == 0) {
                this.mFloatingView.setVisibility(0);
                try {
                    getWm(context).updateViewLayout(this.mFloatingView, this.mLayoutParams);
                    return;
                } catch (Exception e) {
                    Logger.error("Error during call widget show");
                    return;
                }
            }
            getWm(context).addView(this.mFloatingView, this.mLayoutParams);
            this.mFloatingView.setVisibility(0);
            if (this.mPscd != null) {
                LookupBlockerCheckManager.getInstance().saveLastLookedupNumber(this.mPhoneNumber, this.mPscd.lastCallType, LookupBlockerCheckManager.getInstance().canDrawOverlays(context));
            }
            showTooltip(context);
        } catch (Exception e2) {
            if (this.mPscd == null) {
                return;
            }
            LookupBlockerCheckManager.getInstance().saveLastLookedupNumber(this.mPhoneNumber, this.mPscd.lastCallType, false);
        }
    }
}
