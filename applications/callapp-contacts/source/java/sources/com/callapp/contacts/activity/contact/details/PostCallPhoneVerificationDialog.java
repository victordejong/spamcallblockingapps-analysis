package com.callapp.contacts.activity.contact.details;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.facebook.common.C10165a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog.class */
public class PostCallPhoneVerificationDialog extends DialogPopup {
    protected int getLayoutResource() {
        return 2131558983;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131362578);
        linearLayout.setBackgroundResource(2131230876);
        ViewUtils.m27294c(linearLayout, 2131230876, ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131363274);
        TextView textView3 = (TextView) inflate.findViewById(C10165a.C10169d.button);
        textView.setText(Activities.getString(2131887421));
        textView3.setText(Activities.getString(2131886946));
        textView2.setText(Activities.getString(2131887420));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallPhoneVerificationDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!Prefs.f26657n.get().booleanValue()) {
                    Prefs.f26637hq.set(Boolean.FALSE);
                }
                PostCallPhoneVerificationDialog.this.dismiss();
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
