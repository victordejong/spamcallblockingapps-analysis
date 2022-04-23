package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ViewUtils;
import com.explorestack.iab.vast.VastError;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView.class */
public class DuringCallOverlayView extends ContactDetailsOverlayView implements CallStateListener {
    public static final int OVERLAY_Y_POS_DEFAULT_VALUE = -10000;
    private CallData callData;
    private ToolTipPopup toolTipPopup;

    public DuringCallOverlayView(Context context, BaseOverlayView.OverlayViewListener overlayViewListener) {
        super(context, overlayViewListener, true, true);
        ViewUtils.a(findViewById(2131362197), false);
    }

    private boolean shouldShowTooltip() {
        if (Prefs.Q.get().booleanValue() || Prefs.P.get().booleanValue()) {
            return false;
        }
        int intValue = Prefs.O.get().intValue();
        return intValue == 1 || intValue == 5 || intValue == 20 || intValue == 50;
    }

    private void showTooltipIfNeeded() {
        if (shouldShowTooltip()) {
            View findViewById = findViewById(2131364158);
            if (findViewById != null) {
                findViewById.findViewById(2131362028).setVisibility(8);
                ((TextView) findViewById.findViewById(2131364165)).setText(Activities.getString(2131886393));
            }
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.DuringCallOverlayView.1
                @Override // java.lang.Runnable
                public void run() {
                    DuringCallOverlayView duringCallOverlayView = DuringCallOverlayView.this;
                    duringCallOverlayView.setWindowHeight(duringCallOverlayView.getWindowHeight() + VastError.ERROR_CODE_GENERAL_WRAPPER);
                    DuringCallOverlayView duringCallOverlayView2 = DuringCallOverlayView.this;
                    duringCallOverlayView2.repositionOverlayVertically(duringCallOverlayView2.getWindowY());
                }
            }, 1L);
            findViewById.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public int getBottomLayoutResId() {
        return 2131558711;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    IMDataExtractionUtils.RecognizedPersonOrigin getOrigin() {
        return IMDataExtractionUtils.RecognizedPersonOrigin.CALL;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return (int) getResources().getDimension(2131165990);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.DURING_CALL_OVERLAY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getStartYposition() {
        if (Prefs.N.get().intValue() == -10000) {
            Prefs.N.set(Integer.valueOf(super.getStartYposition()));
        }
        return Prefs.N.get().intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.DURING_CALL_OVERLAY;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (callData.getState() == CallState.POST_CALL) {
            finishViewContainer(true);
        } else if (this.callData != null && Objects.a(callData.getNumber(), this.callData.getNumber())) {
            getEventBus().a((EventType<L, EventType<CallStateListener, CallData>>) CallStateListener.f15121d, (EventType<CallStateListener, CallData>) callData, true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        PhoneStateManager.get().addListener(this);
        Prefs.O.a(51);
        showTooltipIfNeeded();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        PhoneStateManager.get().removeListener(this);
        ToolTipPopup toolTipPopup = this.toolTipPopup;
        if (toolTipPopup != null && toolTipPopup.isTooltipShowing()) {
            this.toolTipPopup.a(false);
        }
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.IN_CALL_OVERLAY_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public boolean onNewIntent(Intent intent) {
        ContactDetailsOverlayView.InCallDuration inCallDuration;
        if (!super.onNewIntent(intent)) {
            return false;
        }
        Bundle extras = intent.getExtras();
        if (!extras.getBoolean(ContactDetailsOverlayView.EXTRA_IS_FROM_NOTIFICATION) && (inCallDuration = (ContactDetailsOverlayView.InCallDuration) Prefs.bO.get()) != ContactDetailsOverlayView.InCallDuration.NEVER) {
            finishWithDelay(inCallDuration.duration * 1000);
        }
        CallData callForPhone = PhoneStateManager.get().getCallForPhone(PhoneManager.get().a(extras.getString(Constants.EXTRA_PHONE_NUMBER)));
        this.callData = callForPhone;
        if (callForPhone == null) {
            CLog.a(ContactDetailsOverlayView.class, "Overlay initialized without a call");
            finishViewContainer(false);
            return false;
        }
        AnalyticsManager.get().b(Constants.IN_CALL_OVERLAY_SCREEN);
        getEventBus().a((EventType<L, EventType<CallStateListener, CallData>>) CallStateListener.f15121d, (EventType<CallStateListener, CallData>) this.callData, false);
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected void onVerticalScrollEnded(int i) {
        Prefs.N.set(Integer.valueOf(i));
        Prefs.Q.set(Boolean.TRUE);
    }
}
