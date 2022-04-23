package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DateRange;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EventAction.class */
public class EventAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.EventAction$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EventAction$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10523a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10523a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(ContactData contactData) {
        String j = StringUtils.j(UserProfileManager.get().getUserFullName());
        String a2 = StringUtils.a(contactData.getFullName(), ' ');
        String str = Prefs.ao.get();
        if (!StringUtils.b((CharSequence) j) || !StringUtils.b((CharSequence) str) || !Prefs.aS.get().booleanValue()) {
            return Activities.a(2131886176, a2 + org.apache.commons.lang3.StringUtils.SPACE + contactData.getPhone().d());
        }
        String[] a3 = a(PhoneManager.get().a(str), contactData.getPhone());
        return Activities.a(2131886175, a2 + org.apache.commons.lang3.StringUtils.SPACE + a3[1], j + org.apache.commons.lang3.StringUtils.SPACE + a3[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Context context, final ContactData contactData, final SimpleProgressDialog simpleProgressDialog, final String str) {
        new Task() { // from class: com.callapp.contacts.action.local.EventAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                EventAction.this.a(context, contactData, str);
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.action.local.EventAction.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        simpleProgressDialog.dismiss();
                    }
                });
            }
        }.execute();
    }

    private static String[] a(Phone phone, Phone phone2) {
        String[] strArr = new String[2];
        if (phone.getCountryCode() != phone2.getCountryCode()) {
            strArr[0] = phone.c();
            strArr[1] = phone2.c();
        } else {
            strArr[0] = phone.d();
            strArr[1] = phone2.d();
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DateRange getDateRange() {
        return DateUtils.getDateRangeForMeeting();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getDefaultTimezone() {
        return TimeZone.getDefault().getID();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Context context, ContactData contactData, String str) {
        String str2 = Prefs.ar.get();
        return Activities.a(context, a(contactData), StringUtils.b((CharSequence) Prefs.au.get()) ? Prefs.au.get() : StringUtils.a((CharSequence) str2) ? "" : Activities.a(2131886174, str2), getDateRange(), str);
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && !contactData.isUnknownNumber() && AnonymousClass3.f10523a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Event action", Constants.CLICK);
        final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setIndeterminate(true);
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
        if (visibleEmails.isEmpty()) {
            PopupManager.get().a(context, simpleProgressDialog);
            a(context, contactData, simpleProgressDialog, "");
        } else if (visibleEmails.size() == 1) {
            String email = visibleEmails.iterator().next().getEmail();
            PopupManager.get().a(context, simpleProgressDialog);
            a(context, contactData, simpleProgressDialog, email);
        } else {
            final String[] strArr = new String[visibleEmails.size()];
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (JSONEmail jSONEmail : visibleEmails) {
                arrayList.add(new AdapterText.ItemText(jSONEmail.getEmail(), i));
                strArr[i] = jSONEmail.getEmail();
                i++;
            }
            final DialogList dialogList = new DialogList(Activities.getString(2131886173));
            AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
            adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.local.EventAction.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i2) {
                    dialogList.dismiss();
                    AndroidUtils.a((Activity) context);
                    PopupManager.get().a(context, simpleProgressDialog);
                    EventAction.this.a(context, contactData, simpleProgressDialog, strArr[i2]);
                }
            });
            dialogList.setAdapter(adapterText);
            PopupManager.get().a(context, dialogList);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131886375);
    }

    @Override // com.callapp.contacts.action.local.LocalAction, com.callapp.contacts.action.Action
    public String getKey() {
        return "EventAction";
    }
}
