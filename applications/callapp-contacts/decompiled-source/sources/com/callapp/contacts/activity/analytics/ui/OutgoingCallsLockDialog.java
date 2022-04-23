package com.callapp.contacts.activity.analytics.ui;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog.class */
public class OutgoingCallsLockDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private PresentersContainer f11059a;

    public OutgoingCallsLockDialog(PresentersContainer presentersContainer) {
        this.f11059a = presentersContainer;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        super.dismiss();
    }

    protected int getLayoutResource() {
        return 2131558968;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        ((TextView) inflate.findViewById(2131364130)).setText(Activities.getString(2131887370));
        final TextView textView = (TextView) inflate.findViewById(2131362606);
        textView.setText(Activities.getString(2131886777));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(textView, 1);
                OutgoingCallsLockDialog.this.dismiss();
            }
        });
        final TextView textView2 = (TextView) inflate.findViewById(2131363812);
        textView2.setText(Activities.getString(2131887369));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OutgoingCallsLockDialog.this.dismiss();
                AndroidUtils.a(textView2, 1);
                Activities.a((Activity) OutgoingCallsLockDialog.this.f11059a.getRealContext(), true, new ActivityResult() { // from class: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog.2.1
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        PhoneManager.get().e();
                        OutgoingCallsLockDialog.this.f11059a.getEventBus().a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f10898a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) OutgoingCallsLockDialog.this.f11059a.getContainerMode(), false);
                    }
                });
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
