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

    /* renamed from: com.callapp.contacts.action.local.AddCallReminderAction$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddCallReminderAction$4.class */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10471a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10471a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10471a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddCallReminderAction$ICallReminder.class */
    public interface ICallReminder {
        void a(String str, String str2, Calendar calendar);
    }

    static /* synthetic */ void a(AddCallReminderAction addCallReminderAction, final ContactData contactData, final Calendar calendar) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            new Task() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AddCallReminderAction.b(contactData, calendar);
                }
            }.execute();
        } else {
            b(contactData, calendar);
        }
        String format = new SimpleDateFormat("HH:mm").format(calendar.getTime());
        Date date = new Date();
        if (DateUtils.a(calendar.getTime(), date)) {
            FeedbackManager.get().b(Activities.a(2131887567, format), (Integer) null);
        } else {
            FeedbackManager.get().b(Activities.a(2131887566, DateUtils.a(new Date(calendar.getTime().getTime() - 86400000), date) ? Activities.getString(2131887909) : new SimpleDateFormat("dd MMMM yyyy").format(calendar.getTime()), format), (Integer) null);
        }
    }

    public static void a(final Calendar calendar, Context context, final String str, final String str2, final ICallReminder iCallReminder, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
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
                DialogList.this.dismiss();
                final Calendar instance = Calendar.getInstance();
                if (i != 2131886442) {
                    switch (i) {
                        case 2131886434:
                            instance.add(12, 15);
                            z = true;
                            break;
                        case 2131886435:
                            instance.add(10, 4);
                            z = true;
                            break;
                        case 2131886436:
                            instance.add(10, 1);
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                } else {
                    z = false;
                    PopupManager.get().a(DialogList.this.getActivity(), new DialogDateAndTime(calendar, new DialogDateAndTime.IDateAndTimeDialogListener() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.2.1
                        @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                        public final void a() {
                        }

                        @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                        public final void a(long j) {
                            Calendar instance2 = Calendar.getInstance();
                            instance.setTimeInMillis(j);
                            if (instance.getTime().before(instance2.getTime())) {
                                instance.add(6, 1);
                            }
                            iCallReminder.a(str, str2, instance);
                        }
                    }));
                }
                if (z) {
                    iCallReminder.a(str, str2, instance);
                }
            }
        });
        if (iDialogSimpleListener != null) {
            dialogList.setDialogCustomListener(iDialogSimpleListener);
        }
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(context, dialogList);
    }

    public static void b(Context context, ContactData contactData) {
        Activities.a(context, Activities.a(2131886163, StringUtils.j(contactData.getNameOrNumber()), contactData.getPhone().e()), contactData.getPhone().e().length() >= 11 ? Activities.a(2131886162, contactData.getPhone().e()) : null, DateUtils.getDateRangeForMeeting(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ContactData contactData, Calendar calendar) {
        int intValue = Prefs.V.get().intValue();
        int i = intValue >= 20000 ? 10000 : intValue + 1;
        Prefs.V.set(Integer.valueOf(i));
        CallRemindersManager.a(contactData.getNameOrNumber(), contactData.getPhone().getRawNumber(), calendar, i, CallReminderWorker.f17034a.a(i, calendar.getTimeInMillis()));
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
        String string = Activities.getString(2131886438);
        int intValue2 = Prefs.bV.get().intValue();
        if (intValue2 < 5) {
            string = Activities.getString(2131886437);
        }
        Prefs.bV.set(Integer.valueOf(intValue2 + 1));
        FeedbackManager.get().a(string, (Integer) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Calendar getDefaultCalendar() {
        Calendar instance = Calendar.getInstance();
        if (instance.get(11) >= 20) {
            instance.add(5, 1);
            instance.set(11, 9);
        } else {
            instance.add(10, 5);
        }
        return instance;
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = AnonymousClass4.f10471a[contextType.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        return super.a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Add call reminder action", Constants.CLICK);
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
                        AddCallReminderAction.b(context, contactData);
                        if (PhoneManager.get().isDefaultPhoneApp() && PhoneManager.get().getIncomingCall() != null) {
                            PhoneManager.get();
                            PhoneManager.f();
                            return;
                        }
                        return;
                    case 2131886165:
                        AddCallReminderAction.a(AddCallReminderAction.this.getDefaultCalendar(), context, contactData.getNameOrNumber(), contactData.getPhone().getRawNumber(), new ICallReminder() { // from class: com.callapp.contacts.action.local.AddCallReminderAction.1.1
                            @Override // com.callapp.contacts.action.local.AddCallReminderAction.ICallReminder
                            public final void a(String str, String str2, Calendar calendar) {
                                AddCallReminderAction.a(AddCallReminderAction.this, contactData, calendar);
                                if (PhoneManager.get().isDefaultPhoneApp() && PhoneManager.get().getIncomingCall() != null) {
                                    PhoneManager.get();
                                    PhoneManager.f();
                                }
                            }
                        }, null);
                        AnalyticsManager.get().a(Constants.CALL_REMINDER_ACTION, "Call reminder with CallApp clicked");
                        return;
                    default:
                        return;
                }
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(context, dialogList);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
