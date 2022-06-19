package com.callapp.contacts.activity.contact.list;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.provider.ContactsContract;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment;
import com.callapp.contacts.activity.contact.list.CallLogSorter;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.BlockedNumberLoader;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.loader.UserSpamLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper.class */
public class ContactItemContextMenuHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4.class */
    public static final class C64424 extends Task {

        /* renamed from: a */
        final /* synthetic */ Context f22407a;

        /* renamed from: b */
        final /* synthetic */ ContactData f22408b;

        /* renamed from: c */
        final /* synthetic */ ActionDoneListener f22409c;

        C64424(Context context, ContactData contactData, ActionDoneListener actionDoneListener) {
            this.f22407a = context;
            this.f22408b = contactData;
            this.f22409c = actionDoneListener;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            PopupManager.get().m28209a(this.f22407a, new DialogSimpleMessage(Activities.getString(2131886729), String.format(CallAppApplication.get().getResources().getString(2131886727), StringUtils.m26020j(this.f22408b.getNameOrNumber())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(final Activity activity) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (activity.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(C64424.this.f22408b.getDeviceId())), null, null) <= 0) {
                                if (C64424.this.f22409c == null) {
                                    return;
                                }
                                C64424.this.f22409c.mo27471a(false);
                                return;
                            }
                            C64424.this.f22408b.clearDeviceId();
                            C64424.this.f22408b.fireChange(ContactField.deviceIdChanged);
                            FeedbackManager.get().m28669a(Activities.getString(2131886730), (Integer) null);
                            if (C64424.this.f22409c == null) {
                                return;
                            }
                            C64424.this.f22409c.mo27471a(true);
                        }
                    }.execute();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    if (C64424.this.f22409c != null) {
                        C64424.this.f22409c.mo27471a(false);
                    }
                }
            }));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE.class */
    public enum MENU_TYPE {
        DROPPY,
        REGULAR
    }

    /* renamed from: a */
    public static void m30695a(Activity activity, List<Long> list, int i, boolean z, boolean z2, final ActionDoneListener actionDoneListener) {
        ContactCallLogFragment.deleteCallLogEntries(activity, list, i, z, z2, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == -1) {
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
                    ActionDoneListener actionDoneListener2 = actionDoneListener;
                    if (actionDoneListener2 == null) {
                        return;
                    }
                    actionDoneListener2.mo27471a(true);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m30694a(Context context) {
        ContactCallLogFragment.deleteEntireDeviceCallLog(context, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (i == -1) {
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m30693a(Context context, OnSortAction onSortAction) {
        CallLogSorter.Companion companion = CallLogSorter.f22396a;
        CallLogSorter.Companion.m30697a(context, onSortAction);
    }

    /* renamed from: a */
    public static void m30692a(Context context, ContactData contactData) {
        new C64424(context, contactData, null).execute();
    }

    /* renamed from: a */
    public static void m30691a(Context context, Phone phone, long j, Action.ContextType contextType, String str, BaseAdapterItemData baseAdapterItemData, MENU_TYPE menu_type, View view) {
        m30690a(context, phone, j, contextType, str, baseAdapterItemData, menu_type, view, false);
    }

    /* renamed from: a */
    public static void m30690a(final Context context, final Phone phone, final long j, final Action.ContextType contextType, final String str, final BaseAdapterItemData baseAdapterItemData, final MENU_TYPE menu_type, final View view, final boolean z) {
        if (contextType != null) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Interact contact from long press", Constants.LONG_CLICK);
            CLog.m27611a(ContactItemContextMenuHelper.class, "Phone: " + phone + ", contactId: " + j);
            new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.6
                /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x00cf  */
                @Override // com.callapp.contacts.manager.task.Task
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void doTask() {
                    /*
                        Method dump skipped, instructions count: 282
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.C64476.doTask():void");
                }
            }.execute();
        }
    }

    /* renamed from: a */
    public static void m30689a(final Context context, final List<BaseAdapterItemData> list, final ActionDoneListener actionDoneListener) {
        if (list == null || list.size() == 0) {
            actionDoneListener.mo27471a(false);
        } else {
            PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131886729), Activities.m27697a(list.size() == 1 ? 2131886727 : 2131886728, Integer.valueOf(list.size())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(final Activity activity) {
                    final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                    simpleProgressDialog.setIndeterminate(true);
                    simpleProgressDialog.setMessage(Activities.getString(2131887415));
                    PopupManager.get().m28209a(context, simpleProgressDialog);
                    new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.2.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            ContactLoader iterativeLoad = new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.emails)).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).setLoadOnlyFromCache().setIterativeLoad();
                            for (int i = 0; i < list.size(); i++) {
                                BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) list.get(i);
                                ContactData load = iterativeLoad.load(baseAdapterItemData.getPhone(), baseAdapterItemData.contactId);
                                if (activity.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(baseAdapterItemData.contactId)), null, null) > 0) {
                                    load.clearDeviceId();
                                    load.fireChange(ContactField.deviceIdChanged);
                                }
                            }
                            simpleProgressDialog.dismiss();
                            FeedbackManager.get().m28669a(Activities.m27697a(2131886731, Integer.valueOf(list.size())), (Integer) null);
                            if (actionDoneListener != null) {
                                actionDoneListener.mo27471a(true);
                            }
                        }
                    }.execute();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ActionDoneListener actionDoneListener2 = actionDoneListener;
                    if (actionDoneListener2 != null) {
                        actionDoneListener2.mo27471a(false);
                    }
                }
            }));
        }
    }

    public static ContactLoader getContactLoader() {
        return new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.genomeData, ContactField.spamScore, ContactField.records)).addSyncLoader(new UserSpamLoader()).addSyncLoader(new CallRecorderLoader()).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).addSyncLoader(new BlockedNumberLoader()).addSyncLoader(new UserCorrectedInfoLoader()).setLoadOnlyFromCache().setIterativeLoad();
    }
}
