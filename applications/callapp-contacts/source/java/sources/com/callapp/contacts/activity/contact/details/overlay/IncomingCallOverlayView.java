package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.phone.Phone;
import com.criteo.publisher.C8217a;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView.class */
public class IncomingCallOverlayView extends ContactDetailsOverlayView implements View.OnClickListener, CallStateListener {
    private ImageView actionSMS = (ImageView) findViewById(2131363043);
    private LinearLayout callSimLayout;
    private TextView phoneVerificationLayoutText;

    public IncomingCallOverlayView(Context context) {
        super(context, new BaseOverlayView.OverlayViewListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.1
            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            /* renamed from: a */
            public final void mo28217a() {
                PhoneManager.get().m28228d();
            }

            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            /* renamed from: b */
            public final void mo28216b() {
            }
        }, false, true);
        TextView textView = (TextView) findViewById(2131363072);
        textView.setVisibility(0);
        textView.setText(Activities.getString(2131887044));
        findViewById(C8217a.C8218a.closeButton).setVisibility(8);
        findViewById(2131362189).setVisibility(8);
        ImageView imageView = (ImageView) findViewById(2131362197);
        imageView.setVisibility(0);
        imageView.setColorFilter(new PorterDuffColorFilter(CallAppApplication.get().getColor(2131100228), PorterDuff.Mode.SRC_IN));
        ImageView imageView2 = (ImageView) findViewById(2131363039);
        imageView2.setColorFilter(new PorterDuffColorFilter(CallAppApplication.get().getColor(2131099879), PorterDuff.Mode.SRC_IN));
        imageView2.setOnClickListener(this);
        TextView textView2 = (TextView) findViewById(2131363503);
        this.phoneVerificationLayoutText = textView2;
        textView2.setVisibility(8);
        this.actionSMS.setColorFilter(new PorterDuffColorFilter(CallAppApplication.get().getColor(2131099923), PorterDuff.Mode.SRC_IN));
        this.actionSMS.setOnClickListener(this);
        ImageView imageView3 = (ImageView) findViewById(2131363040);
        imageView3.setColorFilter(new PorterDuffColorFilter(CallAppApplication.get().getColor(2131099675), PorterDuff.Mode.SRC_IN));
        imageView3.setOnClickListener(this);
    }

    public void handleVerificationStatus(int i, Phone phone) {
        if (i == 2 || (Prefs.f26657n.get().booleanValue() && Prefs.f26662s.get().booleanValue())) {
            this.phoneVerificationLayoutText.setVisibility(0);
            this.phoneVerificationLayoutText.setText(Activities.m27697a(2131887399, phone.m26101a()));
            this.phoneVerificationLayoutText.setCompoundDrawablesWithIntrinsicBounds(2131231794, 0, 0, 0);
            this.phoneVerificationLayoutText.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        } else if (i != 1 && (!Prefs.f26657n.get().booleanValue() || !Prefs.f26661r.get().booleanValue())) {
            this.phoneVerificationLayoutText.setVisibility(8);
        } else {
            this.phoneVerificationLayoutText.setVisibility(0);
            this.phoneVerificationLayoutText.setText(Activities.m27697a(2131887401, phone.m26101a()));
            this.phoneVerificationLayoutText.setCompoundDrawablesWithIntrinsicBounds(2131231960, 0, 0, 0);
            this.phoneVerificationLayoutText.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        }
    }

    private void incomingIsPrivate(final boolean z) {
        getPresenterContainer().safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.4
            @Override // java.lang.Runnable
            public void run() {
                IncomingCallOverlayView.this.actionSMS.setVisibility(z ? 8 : 0);
                IncomingCallOverlayView.this.actionSMS.setEnabled(!z);
            }
        });
    }

    public void setSimId(SimManager.SimId simId, String str) {
        if (simId == null) {
            if (!ViewUtils.m27329a(this.callSimLayout)) {
                return;
            }
            this.callSimLayout.setVisibility(8);
            return;
        }
        if (!ViewUtils.m27329a(this.callSimLayout)) {
            this.callSimLayout = (LinearLayout) ((ViewStub) findViewById(2131362664)).inflate();
        }
        ImageView imageView = (ImageView) this.callSimLayout.findViewById(2131362663);
        TextView textView = (TextView) this.callSimLayout.findViewById(2131362659);
        ImageUtils.m27529a(imageView, SimManager.m28141b(simId), new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        textView.setTextColor(((ThemeState) Prefs.f26417di.get()).isLightTheme() ? ThemeUtils.getColor(2131099784) : ThemeUtils.getColor(2131100228));
        textView.setText(str);
        this.callSimLayout.setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected int getBottomLayoutAdColor() {
        return 2131100145;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected int getBottomLayoutBackgroundColor() {
        return 2131231352;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public int getBottomLayoutResId() {
        return 2131558706;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    IMDataExtractionUtils.RecognizedPersonOrigin getOrigin() {
        return IMDataExtractionUtils.RecognizedPersonOrigin.CALL;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return (int) CallAppApplication.get().getResources().getDimension(2131165993);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.DURING_CALL_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getStartYposition() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.DURING_CALL_OVERLAY;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(final CallData callData) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.2
            @Override // java.lang.Runnable
            public void run() {
                IncomingCallOverlayView.this.handleVerificationStatus(callData.getVerificationStatus(), callData.getNumber());
            }
        });
        if (callData.getState() == CallState.POST_CALL || callData.getState() == CallState.TALKING) {
            finishViewContainer(true);
        } else if (!callData.getState().isRinging()) {
        } else {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.3
                @Override // java.lang.Runnable
                public void run() {
                    IncomingCallOverlayView.this.setSimId(callData.getSimId(), SimManager.get().m28151a(callData.getSimId()));
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AndroidUtils.m27630a(view, 1);
        switch (view.getId()) {
            case 2131363039:
                PhoneManager.get();
                PhoneManager.m28231c();
                return;
            case 2131363040:
                PhoneManager.get();
                PhoneManager.m28224f();
                finishViewContainer(true);
                return;
            case 2131363041:
            case 2131363042:
            default:
                return;
            case 2131363043:
                Phone phone = getContact().getPhone();
                PhoneStateManager.get().muteRingerIfNeeded();
                if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
                    return;
                }
                PopupManager.get().m28198b(getContext(), new QuickResponseDialogPopup(phone));
                finishViewContainer(true);
                return;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        super.onContactChanged(contactData, set);
        if (set.contains(ContactField.phone)) {
            incomingIsPrivate(CallLogUtils.m27556b(contactData.getPhone().getRawNumber()));
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        PhoneStateManager.get().addListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INCOMING_CALL_OVERLAY_VIEW);
        PhoneStateManager.get().removeListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public boolean onNewIntent(Intent intent) {
        boolean onNewIntent = super.onNewIntent(intent);
        AnalyticsManager.get().mo28441b(Constants.INCOMING_CALL_OVERLAY_VIEW);
        return onNewIntent;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void setCloseButtonListenerInOverlay(int i, int i2, boolean z) {
    }
}
