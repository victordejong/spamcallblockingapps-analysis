package com.privacystar.core.p011ui.call_center;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.CardView;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.OverlayActivity;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.util.caller.CallerInfoLineCreator;
import com.privacystar.core.p011ui.util.caller.CallerPresenter;
import com.privacystar.core.receiver.CallBroadcastReceiver;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.PermissionUtils;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterActivity.class */
public class CallCenterActivity extends OverlayActivity implements Observer {
    public static final String EXTRA_DEBUG_ON_CALL_END = "com.privacystar.core.on_end_call";
    public static final String EXTRA_PHONE_NUMBER = "com.privacystar.core.phone_number";
    public static final String EXTRA_PREVIOUS_INSTANCE = "com.privacystar.extra_instance";
    private boolean available;
    @BindView(C1566R.C1569id.call_center_block_ll)
    LinearLayout blockLl;
    private Caller caller;
    @BindView(C1566R.C1569id.call_center_subtitle_tv)
    TextView callerSubtitleTv;
    @BindView(C1566R.C1569id.call_center_title_tv)
    TextView callerTitleTv;
    @BindView(C1566R.C1569id.call_center_close_fl)
    FrameLayout closeFl;
    private boolean closeOnCallEnd;
    @BindView(C1566R.C1569id.call_center_content_cv)
    CardView contentCv;
    @BindView(C1566R.C1569id.call_center_root_fl)
    FrameLayout rootFl;
    private boolean shouldRelaunch = false;

    /* renamed from: com.privacystar.core.ui.call_center.CallCenterActivity$CallListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterActivity$CallListener.class */
    public static class CallListener extends PhoneStateListener {
        Activity host;

        public CallListener(Activity activity) {
            this.host = activity;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            if (i == 0 || i == 2) {
                this.host.finish();
            } else {
                Timber.m25w("Unhandled call state processed.", new Object[0]);
            }
        }
    }

    private void bindCallStateEvents() {
        CallBroadcastReceiver.addOnIdleResponder(new CallBroadcastReceiver.CallResponder(this) { // from class: com.privacystar.core.ui.call_center.CallCenterActivity$$Lambda$0
            private final CallCenterActivity arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.privacystar.core.receiver.CallBroadcastReceiver.CallResponder
            public void act(String str, String str2) {
                this.arg$1.lambda$bindCallStateEvents$0$CallCenterActivity(str, str2);
            }
        });
    }

    public static Intent debugIntent(String str, Context context) {
        Intent intent = getIntent(str, context);
        intent.putExtra("com.privacystar.core.on_end_call", false);
        return intent;
    }

    public static Intent getIntent(String str, Context context) {
        Intent intent = new Intent(context, CallCenterActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(131072);
        intent.putExtra("com.privacystar.core.phone_number", str);
        return intent;
    }

    private void trackBlockCallButtonAnalyticsEvent() {
        AnalyticsManager.INSTANCE.fire(Event.BlockCallButtonEvent.INSTANCE);
        AnalyticsManager.INSTANCE.fire(Event.BlockCallYesEvent.INSTANCE);
    }

    private void trackDismissedCallCenter() {
        AnalyticsManager.INSTANCE.fire(Event.DismissCallCenterEvent.INSTANCE);
    }

    private void trackOnCreateAnalyticsEvent() {
        AnalyticsManager.INSTANCE.fire(Event.PreCallCenterFiredEvent.INSTANCE);
    }

    public boolean endCall(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") != 0) {
            Timber.m34e("CALL_PHONE Permission not enabled. Must be enabled to end phone calls", new Object[0]);
            return false;
        }
        try {
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
        } catch (Exception e) {
            Timber.m32e(e, "Failed to end call...", new Object[0]);
            return false;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.available = false;
        overridePendingTransition(0, 0);
    }

    @Override // com.privacystar.core.p011ui.OverlayActivity
    public View getView() {
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(C1566R.C1571layout.fragment_call_center, (ViewGroup) null, false);
        ButterKnife.bind(this, inflate);
        return inflate;
    }

    public boolean isVisible() {
        return getWindow().getDecorView().getGlobalVisibleRect(new Rect());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$bindCallStateEvents$0$CallCenterActivity(String str, String str2) {
        Timber.m37d("Call state has gone to idle, finishing Call Center.", new Object[0]);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$update$1$CallCenterActivity() {
        setCallTextInfo(CallerInfoLineCreator.INSTANCE.getDisplayName(this.caller, getApplicationContext()), this.caller.getDisplayNumber());
    }

    @OnClick({C1566R.C1569id.call_center_block_ll})
    public void onBlockClick() {
        if (!this.caller.isUnknownNumber()) {
            Timber.m37d("Ending and blocking call.", new Object[0]);
            endCall(this);
            trackBlockCallButtonAnalyticsEvent();
            BlockListRealm.setBlockEnabled(getRealm(), this.caller);
            BlockHistoryRealm.addNewBlockEvent(getRealm(), this.caller.getNumber(), PhoneEventType.CALL);
            finish();
            return;
        }
        Timber.m37d("Can't block unknown number", new Object[0]);
    }

    @OnClick({C1566R.C1569id.call_center_close_fl})
    public void onCloseClick() {
        Timber.m37d("Closing Call Center.", new Object[0]);
        trackDismissedCallCenter();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.OverlayActivity, com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (restartAppIfPermissionsMissing()) {
            finishAffinity();
            return;
        }
        setHorizontalDragEnabled(false);
        setDraggableView(this.rootFl);
        bindCallStateEvents();
        trackOnCreateAnalyticsEvent();
        if (getIntent() == null || getIntent().getExtras() == null) {
            Timber.m31i("Could not read phone number to start Call Center.", new Object[0]);
            finishAffinity();
            return;
        }
        this.caller = CallerFactory.getInstance().getPopulatedCaller(getIntent().getExtras().getString("com.privacystar.core.phone_number"));
        if (this.caller == null) {
            Timber.m25w("Unable to process incoming number, will not be able to display correct information. Aborting Call Center.", new Object[0]);
            finish();
            return;
        }
        this.caller.addObserver(this);
        if ((LicenseFeatureRealm.isFeatureAvailable(Feature.LIVE_CID_LOOKUP_GREEN) && !this.caller.isOffender(false)) || (LicenseFeatureRealm.isFeatureAvailable(Feature.LIVE_CID_LOOKUP_NONGREEN) && this.caller.isOffender(false))) {
            LookupHandler.getInstance().lookupUncachedCaller(getRealm(), this.caller.getNumber(), LookupRequest.LookupType.CALLER_ID);
        }
        updateColors();
        setCallInfo();
        this.closeOnCallEnd = getIntent().getBooleanExtra("com.privacystar.core.on_end_call", true);
        if (this.closeOnCallEnd) {
            ((TelephonyManager) getSystemService("phone")).listen(new CallListener(this), 32);
        }
        this.shouldRelaunch = false;
        int dpToPx = DensityUtil.dpToPx(this, 10);
        this.mDisplayed.setPadding(dpToPx, dpToPx, dpToPx, dpToPx);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.OverlayActivity, com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.shouldRelaunch) {
            Timber.m28v("Redrawing Call Center", new Object[0]);
            getApplicationContext().startActivity(getIntent(this.caller.getNumber(), getApplicationContext()));
            Timber.m28v("Finalizing current instance", new Object[0]);
            return;
        }
        Timber.m28v("Clearing overlay", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Timber.m28v("Is pausing.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.available = true;
        Timber.m28v("Is resuming", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity
    public boolean restartAppIfPermissionsMissing() {
        if (PermissionUtils.hasGeneralPermissions(this)) {
            return false;
        }
        Timber.m37d("Call Center started when permissions have been revoked. Aborting.", new Object[0]);
        return true;
    }

    public void setCallInfo() {
        int i = 0;
        if (this.caller == null) {
            Timber.m37d("Could not update Call Center text - caller is null.", new Object[0]);
            return;
        }
        if (this.caller.isOffender(false)) {
            setCallTextInfo(CallerPresenter.getCategoryName(this.caller.getOffenderCategoryId(), getApplicationContext()), this.caller.getDisplayNumber());
        } else if (this.caller.isUnknownNumber()) {
            setCallTextInfo(PSApplication.context().getString(C1566R.string.caller_type_unknown), null);
        } else if (this.caller.hasDisplayName()) {
            setCallTextInfo(CallerInfoLineCreator.INSTANCE.getDisplayName(this.caller, getApplicationContext()), this.caller.getDisplayNumber());
        } else {
            setCallTextInfo(this.caller.getDisplayNumber(), null);
        }
        LinearLayout linearLayout = this.blockLl;
        if (this.caller.isUnknownNumber()) {
            i = 8;
        }
        linearLayout.setVisibility(i);
    }

    public void setCallTextInfo(String str, String str2) {
        if (str != null) {
            this.callerTitleTv.setVisibility(0);
            this.callerTitleTv.setText(str);
        } else {
            this.callerTitleTv.setVisibility(4);
        }
        if (str2 != null) {
            this.callerSubtitleTv.setVisibility(0);
            this.callerSubtitleTv.setText(str2);
            return;
        }
        this.callerSubtitleTv.setVisibility(4);
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
        new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: com.privacystar.core.ui.call_center.CallCenterActivity$$Lambda$1
            private final CallCenterActivity arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$update$1$CallCenterActivity();
            }
        });
    }

    public void updateColors() {
        if (this.caller == null) {
            Timber.m37d("Could not update Call Center colors - caller is null.", new Object[0]);
            return;
        }
        Timber.m37d("Offender category: %d", Integer.valueOf(this.caller.getOffenderCategoryId()));
        this.contentCv.setCardBackgroundColor(this.caller.isScammer() ? ContextCompat.getColor(this, C1566R.color.ps3_red_300) : this.caller.isOffender(false) ? ContextCompat.getColor(this, C1566R.color.ps3_grey_400) : ContextCompat.getColor(this, C1566R.color.ps3_green_400));
    }
}
