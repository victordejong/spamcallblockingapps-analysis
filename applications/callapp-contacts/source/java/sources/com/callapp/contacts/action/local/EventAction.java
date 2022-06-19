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

    /* renamed from: com.callapp.contacts.action.local.EventAction$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EventAction$3.class */
    static /* synthetic */ class C56003 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19294a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19294a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: a */
    public static String m31826a(ContactData contactData) {
        String m26020j = StringUtils.m26020j(UserProfileManager.get().getUserFullName());
        String m26049a = StringUtils.m26049a(contactData.getFullName(), ' ');
        String str = Prefs.f26264ao.get();
        if (!StringUtils.m26045b((CharSequence) m26020j) || !StringUtils.m26045b((CharSequence) str) || !Prefs.f26242aS.get().booleanValue()) {
            return Activities.m27697a(2131886176, m26049a + org.apache.commons.lang3.StringUtils.SPACE + contactData.getPhone().m26089d());
        }
        String[] m31825a = m31825a(PhoneManager.get().m28239a(str), contactData.getPhone());
        return Activities.m27697a(2131886175, m26049a + org.apache.commons.lang3.StringUtils.SPACE + m31825a[1], m26020j + org.apache.commons.lang3.StringUtils.SPACE + m31825a[0]);
    }

    /* renamed from: a */
    public void m31828a(final Context context, final ContactData contactData, final SimpleProgressDialog simpleProgressDialog, final String str) {
        new Task() { // from class: com.callapp.contacts.action.local.EventAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                EventAction.this.mo31824a(context, contactData, str);
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.action.local.EventAction.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        simpleProgressDialog.dismiss();
                    }
                });
            }
        }.execute();
    }

    /* renamed from: a */
    private static String[] m31825a(Phone phone, Phone phone2) {
        String[] strArr = new String[2];
        if (phone.getCountryCode() != phone2.getCountryCode()) {
            strArr[0] = phone.m26091c();
            strArr[1] = phone2.m26091c();
        } else {
            strArr[0] = phone.m26089d();
            strArr[1] = phone2.m26089d();
        }
        return strArr;
    }

    public static DateRange getDateRange() {
        return DateUtils.getDateRangeForMeeting();
    }

    public static String getDefaultTimezone() {
        return TimeZone.getDefault().getID();
    }

    /* renamed from: a */
    public boolean mo31824a(Context context, ContactData contactData, String str) {
        String str2 = Prefs.f26267ar.get();
        return Activities.m27676a(context, m31826a(contactData), StringUtils.m26045b((CharSequence) Prefs.f26270au.get()) ? Prefs.f26270au.get() : StringUtils.m26059a((CharSequence) str2) ? "" : Activities.m27697a(2131886174, str2), getDateRange(), str);
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && !contactData.isUnknownNumber() && C56003.f19294a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Event action", Constants.CLICK);
        final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setIndeterminate(true);
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
        if (visibleEmails.isEmpty()) {
            PopupManager.get().m28209a(context, simpleProgressDialog);
            m31828a(context, contactData, simpleProgressDialog, "");
        } else if (visibleEmails.size() == 1) {
            String email = visibleEmails.iterator().next().getEmail();
            PopupManager.get().m28209a(context, simpleProgressDialog);
            m31828a(context, contactData, simpleProgressDialog, email);
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
                    AndroidUtils.m27635a((Activity) context);
                    PopupManager.get().m28209a(context, simpleProgressDialog);
                    EventAction.this.m31828a(context, contactData, simpleProgressDialog, strArr[i2]);
                }
            });
            dialogList.setAdapter(adapterText);
            PopupManager.get().m28209a(context, dialogList);
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
