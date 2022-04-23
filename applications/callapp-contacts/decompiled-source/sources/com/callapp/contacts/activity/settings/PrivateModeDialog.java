package com.callapp.contacts.activity.settings;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/PrivateModeDialog.class */
public class PrivateModeDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private IPrivateMode f13607a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode.class */
    interface IPrivateMode {
        void a();
    }

    public PrivateModeDialog(IPrivateMode iPrivateMode) {
        this.f13607a = iPrivateMode;
        setCancelable(false);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558621, (ViewGroup) null);
        ViewUtils.b(inflate, ThemeUtils.getColor(2131100228));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131362553);
        TextView textView3 = (TextView) inflate.findViewById(2131362584);
        TextView textView4 = (TextView) inflate.findViewById(2131362582);
        textView.setText(Activities.getString(2131887436));
        textView2.setText(Activities.getString(2131887434));
        textView3.setText(Activities.getString(2131887338));
        textView4.setText(Activities.getString(2131886563));
        textView.setTextColor(ThemeUtils.getColor(2131099918));
        textView2.setTextColor(ThemeUtils.getColor(2131099918));
        textView3.setTextColor(ThemeUtils.getColor(2131100209));
        textView4.setTextColor(ThemeUtils.getColor(2131099919));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.PrivateModeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PrivateModeDialog.this.f13607a != null) {
                    BooleanPref booleanPref = Prefs.hA;
                    booleanPref.set(Boolean.valueOf(!booleanPref.get().booleanValue()));
                    PrivateModeDialog.this.f13607a.a();
                    PrivateModeDialog.this.dismiss();
                }
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.PrivateModeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PrivateModeDialog.this.f13607a.a();
                PrivateModeDialog.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
