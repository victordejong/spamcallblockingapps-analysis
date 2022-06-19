package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView.class */
public class ClipboardAutoSearchOverlayView extends ContactDetailsOverlayView {
    public ClipboardAutoSearchOverlayView(Context context) {
        super(context, null, true, true);
        int color = ThemeUtils.getColor(2131099784);
        findViewById(2131362119).setBackgroundResource(2131232024);
        ImageView imageView = (ImageView) findViewById(2131362209);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ClipboardAutoSearchOverlayView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Phone phone = ClipboardAutoSearchOverlayView.this.getContact().getPhone();
                if (phone != null) {
                    PhoneManager.m28248a(ClipboardAutoSearchOverlayView.this.getContext(), phone, ClipboardAutoSearchOverlayView.this.getContact().getDeviceId(), ClipboardAutoSearchOverlayView.this.getContact().getFullName(), ClipboardAutoSearchOverlayView.this.getTrackEventCategory(), "Call", ClipboardAutoSearchOverlayView.this.getContact().isIncognito(), new ActionDoneListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ClipboardAutoSearchOverlayView.1.1
                        @Override // com.callapp.contacts.action.ActionDoneListener
                        /* renamed from: a */
                        public final void mo27472a() {
                        }

                        @Override // com.callapp.contacts.action.ActionDoneListener
                        /* renamed from: a */
                        public final void mo27471a(boolean z) {
                            ClipboardAutoSearchOverlayView.this.finishViewContainer(true);
                        }
                    });
                }
            }
        });
        ImageView imageView2 = (ImageView) findViewById(2131363313);
        imageView2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ClipboardAutoSearchOverlayView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Phone phone = ClipboardAutoSearchOverlayView.this.getContact().getPhone();
                if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
                    return;
                }
                SmsUtils.m27391c(ClipboardAutoSearchOverlayView.this.getContext(), phone, "");
                ClipboardAutoSearchOverlayView.this.finishViewContainer(true);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public int getBottomLayoutResId() {
        return 2131558705;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    IMDataExtractionUtils.RecognizedPersonOrigin getOrigin() {
        return IMDataExtractionUtils.RecognizedPersonOrigin.CLIPBOARD;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return (int) CallAppApplication.get().getResources().getDimension(2131165994);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.CLIPBOARD_AUTO_SEARCH_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CLIPBOARD_SEARCH_OVERLAY_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public boolean onNewIntent(Intent intent) {
        boolean onNewIntent = super.onNewIntent(intent);
        AnalyticsManager.get().mo28441b(Constants.CLIPBOARD_SEARCH_OVERLAY_SCREEN);
        if (onNewIntent) {
            finishWithDelay(((PostCallActivity.PostCallDuration) Prefs.f26293bQ.get()).duration * 1000);
        }
        return onNewIntent;
    }
}
