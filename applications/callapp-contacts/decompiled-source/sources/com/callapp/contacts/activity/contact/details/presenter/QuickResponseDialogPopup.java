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

    /* renamed from: a  reason: collision with root package name */
    private final Phone f12341a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<AdapterText.ItemText> f12342b = getQuickResponses();

    /* renamed from: c  reason: collision with root package name */
    private Runnable f12343c = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.1
        @Override // java.lang.Runnable
        public void run() {
            QuickResponseDialogPopup.this.dismiss();
        }
    };

    public QuickResponseDialogPopup(Phone phone) {
        this.f12341a = phone;
    }

    private void a() {
        CallAppApplication.get().c(this.f12343c);
    }

    static /* synthetic */ void a(QuickResponseDialogPopup quickResponseDialogPopup, int i) {
        if (i == quickResponseDialogPopup.f12342b.size() - 1) {
            SmsUtils.c(quickResponseDialogPopup.getActivity(), quickResponseDialogPopup.f12341a, "");
        } else {
            SmsUtils.a(quickResponseDialogPopup.getActivity(), quickResponseDialogPopup.f12341a, quickResponseDialogPopup.f12342b.get(i).getText());
        }
        quickResponseDialogPopup.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (PhoneManager.get().isDefaultPhoneApp() && PhoneManager.get().getIncomingCall() != null) {
            PhoneManager.get();
            PhoneManager.f();
        }
        dismiss();
    }

    private static ArrayList<AdapterText.ItemText> getQuickResponses() {
        ArrayList<AdapterText.ItemText> arrayList = new ArrayList<>();
        int i = 0;
        while (i < Prefs.bi.length) {
            if (Prefs.bj[i].get().booleanValue()) {
                arrayList.add(new AdapterText.ItemText(Prefs.bi[i].get(), i));
            } else {
                arrayList.add(new AdapterText.ItemText(Activities.getString(Prefs.bi[i].getDefaultResId()), i));
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
        a();
        super.onDialogCancelled(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        a();
        super.onDialogDismissed(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558622, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(16908298);
        AdapterText adapterText = new AdapterText(layoutInflater.getContext(), 2131558570, this.f12342b);
        listView.setAdapter((ListAdapter) adapterText);
        TextView textView = (TextView) inflate.findViewById(2131363606);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131887480));
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(final int i) {
                PermissionManager.get();
                if (!PermissionManager.a("android.permission.SEND_SMS")) {
                    PermissionManager.get().a((BaseActivity) QuickResponseDialogPopup.this.getActivity(), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnalyticsManager analyticsManager = AnalyticsManager.get();
                            analyticsManager.a(Constants.PERMISSIONS, QuickResponseDialogPopup.class.getSimpleName() + " SMS permission granted");
                            QuickResponseDialogPopup.a(QuickResponseDialogPopup.this, i);
                        }
                    }, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnalyticsManager analyticsManager = AnalyticsManager.get();
                            analyticsManager.a(Constants.PERMISSIONS, QuickResponseDialogPopup.class.getSimpleName() + " SMS permission not granted");
                            QuickResponseDialogPopup.this.b();
                        }
                    }, PermissionManager.PermissionGroup.SMS);
                } else {
                    QuickResponseDialogPopup.a(QuickResponseDialogPopup.this, i);
                }
            }
        });
        return inflate;
    }
}
