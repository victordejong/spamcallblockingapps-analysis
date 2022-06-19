package com.callapp.contacts.activity.contact.details.presenter;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup.class */
public class QuickResponseDialogPopup extends DialogPopup {

    /* renamed from: a */
    private final Phone f22160a;

    /* renamed from: b */
    private ArrayList<AdapterText.ItemText> f22161b = getQuickResponses();

    /* renamed from: c */
    private Runnable f22162c = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.1
        @Override // java.lang.Runnable
        public void run() {
            QuickResponseDialogPopup.this.dismiss();
        }
    };

    public QuickResponseDialogPopup(Phone phone) {
        this.f22160a = phone;
    }

    /* renamed from: a */
    private void m30807a() {
        CallAppApplication.get().m31861c(this.f22162c);
    }

    /* renamed from: a */
    static /* synthetic */ void m30805a(QuickResponseDialogPopup quickResponseDialogPopup, int i) {
        if (i == quickResponseDialogPopup.f22161b.size() - 1) {
            SmsUtils.m27391c(quickResponseDialogPopup.getActivity(), quickResponseDialogPopup.f22160a, "");
        } else {
            SmsUtils.m27395a(quickResponseDialogPopup.getActivity(), quickResponseDialogPopup.f22160a, quickResponseDialogPopup.f22161b.get(i).getText());
        }
        quickResponseDialogPopup.m30804b();
    }

    /* renamed from: b */
    public void m30804b() {
        if (PhoneManager.get().isDefaultPhoneApp() && PhoneManager.get().getIncomingCall() != null) {
            PhoneManager.get();
            PhoneManager.m28224f();
        }
        dismiss();
    }

    private static ArrayList<AdapterText.ItemText> getQuickResponses() {
        ArrayList<AdapterText.ItemText> arrayList = new ArrayList<>();
        int i = 0;
        while (i < Prefs.f26311bi.length) {
            if (Prefs.f26312bj[i].get().booleanValue()) {
                arrayList.add(new AdapterText.ItemText(Prefs.f26311bi[i].get(), i));
            } else {
                arrayList.add(new AdapterText.ItemText(Activities.getString(Prefs.f26311bi[i].getDefaultResId()), i));
            }
            i++;
        }
        arrayList.add(new AdapterText.ItemText(Activities.getString(2131886684), i));
        return arrayList;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        m30807a();
        super.onDialogCancelled(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        m30807a();
        super.onDialogDismissed(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558622, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(16908298);
        AdapterText adapterText = new AdapterText(layoutInflater.getContext(), 2131558570, this.f22161b);
        listView.setAdapter((ListAdapter) adapterText);
        TextView textView = (TextView) inflate.findViewById(2131363606);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131887480));
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(final int i) {
                PermissionManager.get();
                if (!PermissionManager.m28253a("android.permission.SEND_SMS")) {
                    PermissionManager.get().m28254a((BaseActivity) QuickResponseDialogPopup.this.getActivity(), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnalyticsManager analyticsManager = AnalyticsManager.get();
                            analyticsManager.m28450a(Constants.PERMISSIONS, QuickResponseDialogPopup.class.getSimpleName() + " SMS permission granted");
                            QuickResponseDialogPopup.m30805a(QuickResponseDialogPopup.this, i);
                        }
                    }, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnalyticsManager analyticsManager = AnalyticsManager.get();
                            analyticsManager.m28450a(Constants.PERMISSIONS, QuickResponseDialogPopup.class.getSimpleName() + " SMS permission not granted");
                            QuickResponseDialogPopup.this.m30804b();
                        }
                    }, PermissionManager.PermissionGroup.SMS);
                } else {
                    QuickResponseDialogPopup.m30805a(QuickResponseDialogPopup.this, i);
                }
            }
        });
        return inflate;
    }
}
