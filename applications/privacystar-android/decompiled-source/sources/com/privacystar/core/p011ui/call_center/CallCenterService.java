package com.privacystar.core.p011ui.call_center;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.CardView;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.helper.BlockHistoryRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.CallCenterServiceManagerImpl;
import com.privacystar.core.p011ui.OverlayService;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.util.caller.CallerInfoLineCreator;
import com.privacystar.core.p011ui.util.caller.CallerPresenter;
import com.privacystar.core.receiver.CallBroadcastReceiver;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.FeatureUtil;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterService */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterService.class */
public class CallCenterService extends OverlayService implements Observer {
    public static final String EXTRA_DEBUG_ON_CALL_END = "com.privacystar.core.on_end_call";
    public static final String EXTRA_PHONE_NUMBER = "com.privacystar.core.phone_number";
    public static final String EXTRA_PREVIOUS_INSTANCE = "com.privacystar.extra_instance";
    public static final int SERVICE_ID = 9901;
    @BindView(C1566R.C1569id.app_logo)
    ImageView appLogo;
    private boolean available;
    @BindView(C1566R.C1569id.call_center_block_iv)
    ImageView blockIcon;
    @BindView(C1566R.C1569id.call_center_block_ll)
    LinearLayout blockLl;
    private Caller caller;
    @BindView(C1566R.C1569id.call_center_subtitle_tv)
    TextView callerSubtitleTv;
    @BindView(C1566R.C1569id.call_center_title_tv)
    TextView callerTitleTv;
    @BindView(C1566R.C1569id.call_center_close_fl)
    FrameLayout closeFl;
    @BindView(C1566R.C1569id.call_center_close_iv)
    ImageView closeIcon;
    private boolean closeOnCallEnd;
    @BindView(C1566R.C1569id.call_center_content_cv)
    CardView contentCv;
    @BindView(C1566R.C1569id.call_center_divider)
    View divider;
    @BindView(C1566R.C1569id.call_center_root_fl)
    FrameLayout rootFl;
    private boolean shouldRelaunch = false;

    /* renamed from: com.privacystar.core.ui.call_center.CallCenterService$CallListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterService$CallListener.class */
    public static class CallListener extends PhoneStateListener {
        CallCenterService host;

        public CallListener(CallCenterService callCenterService) {
            this.host = callCenterService;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            Timber.m28v("Call state changed to: [%d]", Integer.valueOf(i));
            switch (i) {
                case 0:
                case 2:
                    Timber.m28v("Call state is offhook or idle, hiding view.", new Object[0]);
                    this.host.hideView();
                    return;
                case 1:
                    Timber.m28v("Call state is still RINGING, no handling required.", new Object[0]);
                    return;
                default:
                    Timber.m25w("Unhandled call state processed: [%d]", Integer.valueOf(i));
                    return;
            }
        }
    }

    private void applyIcons() {
        this.blockIcon.setImageResource(C1566R.C1568drawable.ic_block_black_24dp);
        this.closeIcon.setImageResource(C1566R.C1568drawable.ic_close_black_24dp);
    }

    private void bindCallStateEvents() {
        CallBroadcastReceiver.addOnIdleResponder(new CallBroadcastReceiver.CallResponder(this) { // from class: com.privacystar.core.ui.call_center.CallCenterService$$Lambda$0
            private final CallCenterService arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.privacystar.core.receiver.CallBroadcastReceiver.CallResponder
            public void act(String str, String str2) {
                this.arg$1.lambda$bindCallStateEvents$0$CallCenterService(str, str2);
            }
        });
    }

    public static Intent debugIntent(String str, Context context) {
        Intent intent = getIntent(str, context);
        intent.putExtra("com.privacystar.core.on_end_call", false);
        return intent;
    }

    public static Intent getIntent(String str, Context context) {
        Intent intent = new Intent(context, CallCenterService.class);
        intent.addFlags(268435456);
        intent.addFlags(131072);
        intent.putExtra("com.privacystar.core.phone_number", str);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setVisibility() {
        /*
            r6 = this;
            io.realm.Realm r0 = io.realm.Realm.getDefaultInstance()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r7
            r1 = r6
            com.privacystar.core.data.call.caller.Caller r1 = r1.caller     // Catch: Throwable -> 0x006a
            boolean r0 = com.privacystar.core.util.FeatureUtil.canBlockCaller(r0, r1)     // Catch: Throwable -> 0x006a
            if (r0 == 0) goto L_0x002a
            r0 = r8
            r9 = r0
            com.privacystar.core.util.BuildUtil r0 = com.privacystar.core.util.BuildUtil.INSTANCE     // Catch: Throwable -> 0x006a
            r1 = r6
            r2 = r7
            boolean r0 = r0.shouldVariantInstanceShowFullUx(r1, r2)     // Catch: Throwable -> 0x006a
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002a
            r0 = 0
            r11 = r0
            goto L_0x002e
        L_0x002a:
            r0 = 8
            r11 = r0
        L_0x002e:
            r0 = r7
            if (r0 == 0) goto L_0x0036
            r0 = r7
            r0.close()
        L_0x0036:
            r0 = r11
            r1 = 8
            if (r0 != r1) goto L_0x0043
            java.lang.String r0 = "GONE"
            r9 = r0
            goto L_0x0046
        L_0x0043:
            java.lang.String r0 = "VISIBLE"
            r9 = r0
        L_0x0046:
            java.lang.String r0 = "Setting Call Center extras visibility to [%s]."
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4
            timber.log.Timber.m37d(r0, r1)
            r0 = r6
            android.view.View r0 = r0.divider
            r1 = r11
            r0.setVisibility(r1)
            r0 = r6
            android.widget.LinearLayout r0 = r0.blockLl
            r1 = r11
            r0.setVisibility(r1)
            return
        L_0x0066:
            r8 = move-exception
            goto L_0x006f
        L_0x006a:
            r8 = move-exception
            r0 = r8
            r9 = r0
            r0 = r8
            throw r0     // Catch: all -> 0x0066
        L_0x006f:
            r0 = r7
            if (r0 == 0) goto L_0x008b
            r0 = r9
            if (r0 == 0) goto L_0x0087
            r0 = r7
            r0.close()     // Catch: Throwable -> 0x007e
            goto L_0x008b
        L_0x007e:
            r7 = move-exception
            r0 = r9
            r1 = r7
            r0.addSuppressed(r1)
            goto L_0x008b
        L_0x0087:
            r0 = r7
            r0.close()
        L_0x008b:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.call_center.CallCenterService.setVisibility():void");
    }

    private void trackBlockCallButtonAnalyticsEvent() {
        AnalyticsManager.INSTANCE.fire(Event.BlockCallButtonEvent.INSTANCE);
        AnalyticsManager.INSTANCE.fire(Event.BlockCallYesEvent.INSTANCE);
    }

    private void trackDismissedCallCenter() {
        AnalyticsManager.INSTANCE.fire(Event.DismissCallCenterEvent.INSTANCE);
        AnalyticsUtil.INSTANCE.trackCallerID(AnalyticsUtil.CallerIDAnalyticsEvent.WINDOW_CLOSE);
    }

    private void trackOnCreateAnalyticsEvent() {
        AnalyticsManager.INSTANCE.fire(Event.PreCallCenterFiredEvent.INSTANCE);
        AnalyticsUtil.INSTANCE.trackCallerID(AnalyticsUtil.CallerIDAnalyticsEvent.WINDOW_OPEN);
    }

    public boolean endCall(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                if (context.checkCallingOrSelfPermission("android.permission.ANSWER_PHONE_CALLS") != 0) {
                    Timber.m34e("CALL_PHONE Permission not enabled. Must be enabled to end phone calls", new Object[0]);
                    return false;
                }
                CallBlockingUtil.telecomManagerEndCall(context);
                return true;
            } else if (context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") != 0) {
                Timber.m34e("CALL_PHONE Permission not enabled. Must be enabled to end phone calls", new Object[0]);
                return false;
            } else {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager.getCallState() == 0) {
                    Timber.m34e("No call to hang up, current state is idle", new Object[0]);
                    return false;
                }
                Class<?> cls = Class.forName(telephonyManager.getClass().getName());
                Timber.m28v("Extracted telephony class declaration", new Object[0]);
                Method declaredMethod = cls.getDeclaredMethod("getITelephony", new Class[0]);
                Timber.m28v("Extracted getITelephony method", new Object[0]);
                declaredMethod.setAccessible(true);
                Timber.m28v("Changed getITelephony from private to public", new Object[0]);
                Object invoke = declaredMethod.invoke(telephonyManager, new Object[0]);
                Timber.m28v("Retrieved telephony interface using getITelephony", new Object[0]);
                Class.forName(invoke.getClass().getName()).getDeclaredMethod("endCall", new Class[0]).invoke(invoke, new Object[0]);
                return true;
            }
        } catch (Exception e) {
            Timber.m32e(e, "Failed to end call...", new Object[0]);
            return false;
        }
    }

    @Override // com.privacystar.core.p011ui.OverlayService
    public View getView() {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(C1566R.C1571layout.fragment_call_center, (ViewGroup) null, false);
        ButterKnife.bind(this, inflate);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$bindCallStateEvents$0$CallCenterService(String str, String str2) {
        Timber.m37d("Call state has gone to idle, finishing Call Center.", new Object[0]);
        hideView();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @OnClick({C1566R.C1569id.call_center_block_tv})
    public void onBlockClick() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            Timber.m37d("Ending call.", new Object[0]);
            endCall(this);
            trackBlockCallButtonAnalyticsEvent();
            if (this.caller != null) {
                BlockHistoryRealm.addNewBlockEvent(defaultInstance, this.caller.getNumber(), PhoneEventType.CALL);
                CallStatsRealm.INSTANCE.addCallStat(defaultInstance, this.caller.getOffenderCategoryId(), this.caller.getNumber());
                if (PSApplication.context().getResources().getBoolean(C1566R.bool.variant_has_local_notifications)) {
                    CallBlockingUtil.handleCallBlockMilestoneMessage(defaultInstance);
                }
                if (FeatureUtil.couldBlock(defaultInstance, this.caller)) {
                    BlockListRealm.setBlockEnabled(defaultInstance, this.caller);
                    Timber.m37d("Blocking call.", new Object[0]);
                }
            } else {
                Timber.m37d("Could not process block data events, caller was null.", new Object[0]);
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            hideView();
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnClick({C1566R.C1569id.call_center_close_fl})
    public void onCloseClick() {
        Timber.m37d("Closing Call Center.", new Object[0]);
        trackDismissedCallCenter();
        hideView();
    }

    @Override // com.privacystar.core.p011ui.OverlayService, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(SERVICE_ID, NotificationUtil.createOverlayNotification(this, PreferenceUtil.getLastIncomingCall()));
        }
        setHorizontalDragEnabled(false);
        setDraggableView(this.rootFl);
        bindCallStateEvents();
        trackOnCreateAnalyticsEvent();
    }

    @Override // com.privacystar.core.p011ui.OverlayService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.shouldRelaunch) {
            Timber.m28v("Redrawing Call Center", new Object[0]);
            getApplicationContext().startActivity(getIntent(this.caller.getNumber(), getApplicationContext()));
            Timber.m28v("Finalizing current instance", new Object[0]);
        } else {
            Timber.m28v("Clearing overlay", new Object[0]);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            Timber.m28v("Service start command's intent was null.", new Object[0]);
            hideView();
            return 1;
        }
        if (intent.hasExtra("com.privacystar.core.phone_number")) {
            this.caller = CallerFactory.getInstance().getPopulatedCaller(intent.getExtras().getString("com.privacystar.core.phone_number"));
            if (this.caller == null) {
                Timber.m25w("Unable to process incoming number, will not be able to display correct information. Aborting Call Center.", new Object[0]);
                hideView();
                return 1;
            }
            this.caller.addObserver(this);
        } else {
            Timber.m28v("Overlay service intent missing phone number, aborting.", new Object[0]);
            hideView();
        }
        setVisibility();
        if ((LicenseFeatureRealm.isFeatureAvailable(Feature.LIVE_CID_LOOKUP_GREEN) && !this.caller.isOffender(false)) || (LicenseFeatureRealm.isFeatureAvailable(Feature.LIVE_CID_LOOKUP_NONGREEN) && this.caller.isOffender(false))) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                LookupHandler.getInstance().lookupUncachedCaller(defaultInstance, this.caller.getNumber(), LookupRequest.LookupType.CALLER_ID);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        updateColors();
        setCallInfo();
        applyIcons();
        this.closeOnCallEnd = true;
        if (intent.hasExtra("com.privacystar.core.on_end_call")) {
            this.closeOnCallEnd = intent.getBooleanExtra("com.privacystar.core.on_end_call", true);
        }
        if (this.closeOnCallEnd) {
            ((TelephonyManager) getSystemService("phone")).listen(new CallListener(this), 32);
        }
        this.shouldRelaunch = false;
        int dpToPx = DensityUtil.dpToPx(this, 10);
        this.displayed.setPadding(dpToPx, dpToPx, dpToPx, dpToPx);
        showView();
        return 1;
    }

    public void setCallInfo() {
        if (this.caller == null) {
            Timber.m37d("Could not update Call Center text - caller is null.", new Object[0]);
        } else if (this.caller.isScammer()) {
            setCallTextInfo(CallerPresenter.getCategoryName(this.caller.getOffenderCategoryId(), getApplicationContext()), this.caller.getDisplayNumber(), C1566R.C1568drawable.ic_caller_red);
            Timber.m37d("Caller is offender", new Object[0]);
        } else if (this.caller.isOffender(false)) {
            setCallTextInfo(CallerPresenter.getCategoryName(this.caller.getOffenderCategoryId(), getApplicationContext()), this.caller.getDisplayNumber(), C1566R.C1568drawable.ic_caller_yellow);
            Timber.m37d("Caller is offender", new Object[0]);
        } else if (this.caller.isUnknownNumber()) {
            Timber.m37d("Caller is unknown number", new Object[0]);
            setCallTextInfo(PSApplication.context().getString(C1566R.string.caller_type_unknown), null);
        } else if (this.caller.isSpoofer() && PreferenceUtil.getIsSpoofBlockingEnabled() && LicenseFeatureRealm.isFeatureAvailable(Feature.CALL_BLOCKING)) {
            Timber.m37d("Caller is spoofer", new Object[0]);
            setCallTextInfo(PSApplication.context().getString(C1566R.string.caller_type_spoofer), this.caller.getDisplayNumber());
        } else if (this.caller.hasDisplayName()) {
            Timber.m37d("Caller is not spoofer, unknown or offender and has a display name.", new Object[0]);
            setCallTextInfo(CallerInfoLineCreator.INSTANCE.getDisplayName(this.caller, getApplicationContext()), this.caller.getDisplayNumber());
        } else {
            Timber.m37d("Caller is not spoofer, unknown or offender and does not have a display name.", new Object[0]);
            setCallTextInfo(this.caller.getDisplayNumber(), null);
        }
    }

    public void setCallTextInfo(String str, String str2) {
        setCallTextInfo(str, str2, C1566R.C1568drawable.app_logo_minimal);
    }

    public void setCallTextInfo(String str, String str2, @DrawableRes int i) {
        if (str != null) {
            this.callerTitleTv.setVisibility(0);
            this.callerTitleTv.setText(str);
        } else {
            this.callerTitleTv.setVisibility(4);
        }
        if (str2 != null) {
            this.callerSubtitleTv.setVisibility(0);
            this.callerSubtitleTv.setText(str2);
        } else {
            this.callerSubtitleTv.setVisibility(4);
        }
        this.appLogo.setImageResource(i);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        Timber.m37d("Observed update to bound Caller object.", new Object[0]);
        if (this.caller == null) {
            if (observable instanceof Caller) {
                this.caller = (Caller) observable;
                Timber.m37d("Caller reference was null, set to observable reference.", new Object[0]);
            } else {
                Timber.m37d("Caller reference was null and observable reference could not be cast.", new Object[0]);
                return;
            }
        }
        new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: com.privacystar.core.ui.call_center.CallCenterService$$Lambda$1
            private final CallCenterService arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.setCallInfo();
            }
        });
    }

    public void updateColors() {
        int i;
        if (this.caller == null) {
            Timber.m37d("Could not update Call Center colors - caller is null.", new Object[0]);
            return;
        }
        Timber.m37d("Offender category: %d", Integer.valueOf(this.caller.getOffenderCategoryId()));
        if (CallCenterServiceManagerImpl.INSTANCE.shouldChangeColorDependingOnCategory()) {
            if (this.caller.isScammer()) {
                Timber.m37d("Caller is a scammer", new Object[0]);
                i = ContextCompat.getColor(this, C1566R.color.ps3_red_300);
            } else if (this.caller.isOffender(false) || (this.caller.isSpoofer() && PreferenceUtil.getIsSpoofBlockingEnabled() && LicenseFeatureRealm.isFeatureAvailable(Feature.CALL_BLOCKING))) {
                Timber.m37d("Caller is spoofer or offender", new Object[0]);
                i = ContextCompat.getColor(this, C1566R.color.ps3_grey_400);
            } else {
                Timber.m37d("Caller is not a spoofer, scammer or offender", new Object[0]);
                i = ContextCompat.getColor(this, C1566R.color.ps3_green_400);
            }
            this.contentCv.setCardBackgroundColor(i);
        }
    }
}
