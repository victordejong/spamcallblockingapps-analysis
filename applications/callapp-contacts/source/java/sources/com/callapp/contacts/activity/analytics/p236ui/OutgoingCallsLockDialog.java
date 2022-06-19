package com.callapp.contacts.activity.analytics.p236ui;

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
/* renamed from: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog.class */
public class OutgoingCallsLockDialog extends DialogPopup {

    /* renamed from: a */
    private PresentersContainer f20229a;

    public OutgoingCallsLockDialog(PresentersContainer presentersContainer) {
        this.f20229a = presentersContainer;
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
                AndroidUtils.m27630a(textView, 1);
                OutgoingCallsLockDialog.this.dismiss();
            }
        });
        final TextView textView2 = (TextView) inflate.findViewById(2131363812);
        textView2.setText(Activities.getString(2131887369));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OutgoingCallsLockDialog.this.dismiss();
                AndroidUtils.m27630a(textView2, 1);
                Activities.m27687a((Activity) OutgoingCallsLockDialog.this.f20229a.getRealContext(), true, new ActivityResult() { // from class: com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog.2.1
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        PhoneManager.get().m28226e();
                        OutgoingCallsLockDialog.this.f20229a.getEventBus().m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) OutgoingCallsLockDialog.this.f20229a.getContainerMode(), false);
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
