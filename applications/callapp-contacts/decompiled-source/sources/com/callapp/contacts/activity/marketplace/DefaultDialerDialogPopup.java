package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup.class */
public class DefaultDialerDialogPopup extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private String f13099a;

    /* renamed from: b  reason: collision with root package name */
    private String f13100b;

    /* renamed from: c  reason: collision with root package name */
    private int f13101c;

    public DefaultDialerDialogPopup(String str, String str2, int i) {
        this.f13099a = str;
        this.f13100b = str2;
        this.f13101c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, int i, int i2, Intent intent) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, View view) {
        Activities.a(activity, true, new ActivityResult() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$DefaultDialerDialogPopup$PUhLPS9dbPMx7qAXHCZw23FEYP4
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                DefaultDialerDialogPopup.this.a(activity2, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558514, (ViewGroup) null);
        final Activity activity = getActivity();
        inflate.findViewById(2131362167).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$DefaultDialerDialogPopup$Z9BeuH4HLPvT_spWU1d2Baq5wQ0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultDialerDialogPopup.this.a(activity, view);
            }
        });
        ((TextView) inflate.findViewById(2131364191)).setText(this.f13099a);
        ((TextView) inflate.findViewById(2131362184)).setText(this.f13100b);
        ((ImageView) inflate.findViewById(2131363030)).setImageResource(this.f13101c);
        inflate.findViewById(2131362156).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$DefaultDialerDialogPopup$ciHFPxwKFCWdErSGuw6V97IlkV4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultDialerDialogPopup.this.a(view);
            }
        });
        ((TextView) inflate.findViewById(2131362156)).setText(Activities.getString(2131886563));
        ((TextView) inflate.findViewById(2131362167)).setText(Activities.getString(2131887632));
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(b.a(CallAppApplication.get(), 2131231360));
    }
}
