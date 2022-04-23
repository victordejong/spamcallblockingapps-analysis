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
import com.criteo.publisher.a;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView.class */
public class IncomingCallOverlayView extends ContactDetailsOverlayView implements View.OnClickListener, CallStateListener {
    private ImageView actionSMS = (ImageView) findViewById(2131363043);
    private LinearLayout callSimLayout;
    private TextView phoneVerificationLayoutText;

    public IncomingCallOverlayView(Context context) {
        super(context, new BaseOverlayView.OverlayViewListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.1
            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            public final void a() {
                PhoneManager.get().d();
            }

            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            public final void b() {
            }
        }, false, true);
        TextView textView = (TextView) findViewById(2131363072);
        textView.setVisibility(0);
        textView.setText(Activities.getString(2131887044));
        findViewById(a.C0337a.closeButton).setVisibility(8);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVerificationStatus(int i, Phone phone) {
        if (i == 2 || (Prefs.n.get().booleanValue() && Prefs.s.get().booleanValue())) {
            this.phoneVerificationLayoutText.setVisibility(0);
            this.phoneVerificationLayoutText.setText(Activities.a(2131887399, phone.a()));
            this.phoneVerificationLayoutText.setCompoundDrawablesWithIntrinsicBounds(2131231794, 0, 0, 0);
            this.phoneVerificationLayoutText.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        } else if (i == 1 || (Prefs.n.get().booleanValue() && Prefs.r.get().booleanValue())) {
            this.phoneVerificationLayoutText.setVisibility(0);
            this.phoneVerificationLayoutText.setText(Activities.a(2131887401, phone.a()));
            this.phoneVerificationLayoutText.setCompoundDrawablesWithIntrinsicBounds(2131231960, 0, 0, 0);
            this.phoneVerificationLayoutText.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        } else {
            this.phoneVerificationLayoutText.setVisibility(8);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setSimId(SimManager.SimId simId, String str) {
        if (simId != null) {
            if (!ViewUtils.a(this.callSimLayout)) {
                this.callSimLayout = (LinearLayout) ((ViewStub) findViewById(2131362664)).inflate();
            }
            ImageView imageView = (ImageView) this.callSimLayout.findViewById(2131362663);
            TextView textView = (TextView) this.callSimLayout.findViewById(2131362659);
            ImageUtils.a(imageView, SimManager.b(simId), new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            textView.setTextColor(((ThemeState) Prefs.di.get()).isLightTheme() ? ThemeUtils.getColor(2131099784) : ThemeUtils.getColor(2131100228));
            textView.setText(str);
            this.callSimLayout.setVisibility(0);
        } else if (ViewUtils.a(this.callSimLayout)) {
            this.callSimLayout.setVisibility(8);
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getStartYposition() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.DURING_CALL_OVERLAY;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(final CallData callData) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.2
            @Override // java.lang.Runnable
            public void run() {
                IncomingCallOverlayView.this.handleVerificationStatus(callData.getVerificationStatus(), callData.getNumber());
            }
        });
        if (callData.getState() == CallState.POST_CALL || callData.getState() == CallState.TALKING) {
            finishViewContainer(true);
        } else if (callData.getState().isRinging()) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView.3
                @Override // java.lang.Runnable
                public void run() {
                    IncomingCallOverlayView.this.setSimId(callData.getSimId(), SimManager.get().a(callData.getSimId()));
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AndroidUtils.a(view, 1);
        switch (view.getId()) {
            case 2131363039:
                PhoneManager.get();
                PhoneManager.c();
                return;
            case 2131363040:
                PhoneManager.get();
                PhoneManager.f();
                finishViewContainer(true);
                return;
            case 2131363041:
            case 2131363042:
            default:
                return;
            case 2131363043:
                Phone phone = getContact().getPhone();
                PhoneStateManager.get().muteRingerIfNeeded();
                if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
                    PopupManager.get().b(getContext(), new QuickResponseDialogPopup(phone));
                    finishViewContainer(true);
                    return;
                }
                return;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        super.onContactChanged(contactData, set);
        if (set.contains(ContactField.phone)) {
            incomingIsPrivate(CallLogUtils.b(contactData.getPhone().getRawNumber()));
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
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INCOMING_CALL_OVERLAY_VIEW);
        PhoneStateManager.get().removeListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public boolean onNewIntent(Intent intent) {
        boolean onNewIntent = super.onNewIntent(intent);
        AnalyticsManager.get().b(Constants.INCOMING_CALL_OVERLAY_VIEW);
        return onNewIntent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void setCloseButtonListenerInOverlay(int i, int i2, boolean z) {
    }
}
