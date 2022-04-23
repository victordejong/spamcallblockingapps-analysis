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

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4.class */
    static final class AnonymousClass4 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f12516a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContactData f12517b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ActionDoneListener f12518c;

        AnonymousClass4(Context context, ContactData contactData, ActionDoneListener actionDoneListener) {
            this.f12516a = context;
            this.f12517b = contactData;
            this.f12518c = actionDoneListener;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            PopupManager.get().a(this.f12516a, new DialogSimpleMessage(Activities.getString(2131886729), String.format(CallAppApplication.get().getResources().getString(2131886727), StringUtils.j(this.f12517b.getNameOrNumber())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(final Activity activity) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (activity.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(AnonymousClass4.this.f12517b.getDeviceId())), null, null) > 0) {
                                AnonymousClass4.this.f12517b.clearDeviceId();
                                AnonymousClass4.this.f12517b.fireChange(ContactField.deviceIdChanged);
                                FeedbackManager.get().a(Activities.getString(2131886730), (Integer) null);
                                if (AnonymousClass4.this.f12518c != null) {
                                    AnonymousClass4.this.f12518c.a(true);
                                }
                            } else if (AnonymousClass4.this.f12518c != null) {
                                AnonymousClass4.this.f12518c.a(false);
                            }
                        }
                    }.execute();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.4.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    if (AnonymousClass4.this.f12518c != null) {
                        AnonymousClass4.this.f12518c.a(false);
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

    public static void a(Activity activity, List<Long> list, int i, boolean z, boolean z2, final ActionDoneListener actionDoneListener) {
        ContactCallLogFragment.deleteCallLogEntries(activity, list, i, z, z2, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == -1) {
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
                    ActionDoneListener actionDoneListener2 = ActionDoneListener.this;
                    if (actionDoneListener2 != null) {
                        actionDoneListener2.a(true);
                    }
                }
            }
        });
    }

    public static void a(Context context) {
        ContactCallLogFragment.deleteEntireDeviceCallLog(context, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (i == -1) {
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.RECENT_CALLS, false);
                }
            }
        });
    }

    public static void a(Context context, OnSortAction onSortAction) {
        CallLogSorter.Companion companion = CallLogSorter.f12505a;
        CallLogSorter.Companion.a(context, onSortAction);
    }

    public static void a(Context context, ContactData contactData) {
        new AnonymousClass4(context, contactData, null).execute();
    }

    public static void a(Context context, Phone phone, long j, Action.ContextType contextType, String str, BaseAdapterItemData baseAdapterItemData, MENU_TYPE menu_type, View view) {
        a(context, phone, j, contextType, str, baseAdapterItemData, menu_type, view, false);
    }

    public static void a(final Context context, final Phone phone, final long j, final Action.ContextType contextType, final String str, final BaseAdapterItemData baseAdapterItemData, final MENU_TYPE menu_type, final View view, final boolean z) {
        if (contextType != null) {
            AnalyticsManager.get().a(Constants.CONTACT_LIST, "Interact contact from long press", Constants.LONG_CLICK);
            CLog.a(ContactItemContextMenuHelper.class, "Phone: " + phone + ", contactId: " + j);
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
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.AnonymousClass6.doTask():void");
                }
            }.execute();
        }
    }

    public static void a(final Context context, final List<BaseAdapterItemData> list, final ActionDoneListener actionDoneListener) {
        if (list == null || list.size() == 0) {
            actionDoneListener.a(false);
        } else {
            PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(2131886729), Activities.a(list.size() == 1 ? 2131886727 : 2131886728, Integer.valueOf(list.size())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(final Activity activity) {
                    final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                    simpleProgressDialog.setIndeterminate(true);
                    simpleProgressDialog.setMessage(Activities.getString(2131887415));
                    PopupManager.get().a(context, simpleProgressDialog);
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
                            FeedbackManager.get().a(Activities.a(2131886731, Integer.valueOf(list.size())), (Integer) null);
                            if (actionDoneListener != null) {
                                actionDoneListener.a(true);
                            }
                        }
                    }.execute();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ActionDoneListener actionDoneListener2 = ActionDoneListener.this;
                    if (actionDoneListener2 != null) {
                        actionDoneListener2.a(false);
                    }
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ContactLoader getContactLoader() {
        return new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.genomeData, ContactField.spamScore, ContactField.records)).addSyncLoader(new UserSpamLoader()).addSyncLoader(new CallRecorderLoader()).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).addSyncLoader(new BlockedNumberLoader()).addSyncLoader(new UserCorrectedInfoLoader()).setLoadOnlyFromCache().setIterativeLoad();
    }
}
