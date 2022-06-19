package com.callapp.contacts.action.local;

import android.content.Context;
import android.os.Looper;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogDateAndTime;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.workers.CallReminderWorker;
import com.callapp.framework.util.StringUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddCallReminderAction.class */
public class AddCallReminderAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.AddCallReminderAction$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddCallReminderAction$4.class */
    static /* synthetic */ class C55704 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19239a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19239a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19239a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddCallReminderAction$ICallReminder.class */
    public interface ICallReminder {
        /* renamed from: a */
        void mo31275a(String str, String str2, Calendar calendar);
    }

    /* renamed from: a */
    static /* synthetic */ void m31836a(AddCallReminderAction addCallReminderAction, final ContactData contactData, final Calendar calendar) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            new Task() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AddCallReminderAction.m31832b(contactData, calendar);
                }
            }.execute();
        } else {
            m31832b(contactData, calendar);
        }
        String format = new SimpleDateFormat("HH:mm").format(calendar.getTime());
        Date date = new Date();
        if (DateUtils.m27125a(calendar.getTime(), date)) {
            FeedbackManager.get().m28664b(Activities.m27697a(2131887567, format), (Integer) null);
        } else {
            FeedbackManager.get().m28664b(Activities.m27697a(2131887566, DateUtils.m27125a(new Date(calendar.getTime().getTime() - 86400000), date) ? Activities.getString(2131887909) : new SimpleDateFormat("dd MMMM yyyy").format(calendar.getTime()), format), (Integer) null);
        }
    }

    /* renamed from: a */
    public static void m31834a(final Calendar calendar, Context context, final String str, final String str2, final ICallReminder iCallReminder, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        final DialogList dialogList = new DialogList(Activities.getString(2131887633));
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231799, Activities.getString(2131886434), 2131886434));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231799, Activities.getString(2131886436), 2131886436));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231799, Activities.getString(2131886435), 2131886435));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231799, Activities.getString(2131886442), 2131886442));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.2
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                boolean z;
                dialogList.dismiss();
                final Calendar calendar2 = Calendar.getInstance();
                if (i != 2131886442) {
                    switch (i) {
                        case 2131886434:
                            calendar2.add(12, 15);
                            z = true;
                            break;
                        case 2131886435:
                            calendar2.add(10, 4);
                            z = true;
                            break;
                        case 2131886436:
                            calendar2.add(10, 1);
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                } else {
                    z = false;
                    PopupManager.get().m28209a(dialogList.getActivity(), new DialogDateAndTime(calendar, new DialogDateAndTime.IDateAndTimeDialogListener() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.2.1
                        @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                        /* renamed from: a */
                        public final void mo27973a() {
                        }

                        @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                        /* renamed from: a */
                        public final void mo27972a(long j) {
                            Calendar calendar3 = Calendar.getInstance();
                            calendar2.setTimeInMillis(j);
                            if (calendar2.getTime().before(calendar3.getTime())) {
                                calendar2.add(6, 1);
                            }
                            iCallReminder.mo31275a(str, str2, calendar2);
                        }
                    }));
                }
                if (z) {
                    iCallReminder.mo31275a(str, str2, calendar2);
                }
            }
        });
        if (iDialogSimpleListener != null) {
            dialogList.setDialogCustomListener(iDialogSimpleListener);
        }
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().m28209a(context, dialogList);
    }

    /* renamed from: b */
    public static void m31833b(Context context, ContactData contactData) {
        Activities.m27676a(context, Activities.m27697a(2131886163, StringUtils.m26020j(contactData.getNameOrNumber()), contactData.getPhone().m26087e()), contactData.getPhone().m26087e().length() >= 11 ? Activities.m27697a(2131886162, contactData.getPhone().m26087e()) : null, DateUtils.getDateRangeForMeeting(), (String) null);
    }

    /* renamed from: b */
    public static void m31832b(ContactData contactData, Calendar calendar) {
        int intValue = Prefs.f26218V.get().intValue();
        int i = intValue >= 20000 ? 10000 : intValue + 1;
        Prefs.f26218V.set(Integer.valueOf(i));
        CallRemindersManager.m28693a(contactData.getNameOrNumber(), contactData.getPhone().getRawNumber(), calendar, i, CallReminderWorker.f29582a.m26166a(i, calendar.getTimeInMillis()));
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
        String string = Activities.getString(2131886438);
        int intValue2 = Prefs.f26298bV.get().intValue();
        if (intValue2 < 5) {
            string = Activities.getString(2131886437);
        }
        Prefs.f26298bV.set(Integer.valueOf(intValue2 + 1));
        FeedbackManager.get().m28669a(string, (Integer) null);
    }

    public Calendar getDefaultCalendar() {
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(11) >= 20) {
            calendar.add(5, 1);
            calendar.set(11, 9);
        } else {
            calendar.add(10, 5);
        }
        return calendar;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = C55704.f19239a[contextType.ordinal()];
        if (i != 1 && i != 2) {
            return super.mo31798a(contextType, contactData, baseAdapterItemData);
        }
        return true;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Add call reminder action", Constants.CLICK);
        final DialogList dialogList = new DialogList(Activities.getString(2131886433));
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231567, Activities.getString(2131886165), 2131886165));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231876, Activities.getString(2131886164), 2131886164));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                dialogList.dismiss();
                switch (i) {
                    case 2131886164:
                        AddCallReminderAction.m31833b(context, contactData);
                        if (!PhoneManager.get().isDefaultPhoneApp() || PhoneManager.get().getIncomingCall() == null) {
                            return;
                        }
                        PhoneManager.get();
                        PhoneManager.m28224f();
                        return;
                    case 2131886165:
                        AddCallReminderAction.m31834a(AddCallReminderAction.this.getDefaultCalendar(), context, contactData.getNameOrNumber(), contactData.getPhone().getRawNumber(), new ICallReminder() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.1.1
                            @Override // com.callapp.contacts.action.local.AddCallReminderAction.ICallReminder
                            /* renamed from: a */
                            public final void mo31275a(String str, String str2, Calendar calendar) {
                                AddCallReminderAction.m31836a(AddCallReminderAction.this, contactData, calendar);
                                if (!PhoneManager.get().isDefaultPhoneApp() || PhoneManager.get().getIncomingCall() == null) {
                                    return;
                                }
                                PhoneManager.get();
                                PhoneManager.m28224f();
                            }
                        }, null);
                        AnalyticsManager.get().m28450a(Constants.CALL_REMINDER_ACTION, "Call reminder with CallApp clicked");
                        return;
                    default:
                        return;
                }
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().m28209a(context, dialogList);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
