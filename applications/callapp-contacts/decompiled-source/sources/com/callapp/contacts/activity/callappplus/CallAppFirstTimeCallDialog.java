package com.callapp.contacts.activity.callappplus;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog.class */
public class CallAppFirstTimeCallDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private ActionClick f11255a;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick.class */
    public interface ActionClick {
        void openCallAppPlus();
    }

    public CallAppFirstTimeCallDialog(ActionClick actionClick) {
        this.f11255a = actionClick;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558814, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364130);
        textView.setText(Activities.getString(2131886474));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        ((TextView) inflate.findViewById(2131364013)).setText(Activities.getString(2131886469));
        TextView textView2 = (TextView) inflate.findViewById(2131361926);
        textView2.setText(Activities.getString(2131886550));
        textView2.setBackgroundResource(2131232136);
        ViewUtils.a(textView2, Integer.valueOf(ThemeUtils.getColor(2131099784)), Integer.valueOf(ThemeUtils.getColor(2131099784)));
        textView2.setText(Activities.getString(2131886550));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppFirstTimeCallDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickFirstTimeExperiencePopup");
                CallAppFirstTimeCallDialog.this.dismiss();
                if (CallAppFirstTimeCallDialog.this.f11255a != null) {
                    CallAppFirstTimeCallDialog.this.f11255a.openCallAppPlus();
                }
            }
        });
        inflate.findViewById(2131364571).setBackgroundResource(2131232170);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
