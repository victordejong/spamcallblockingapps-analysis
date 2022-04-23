package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.calllog.SingleCallLogData;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/RemoveFromCallLogAction.class */
public class RemoveFromCallLogAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.RemoveFromCallLogAction$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/RemoveFromCallLogAction$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10546a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10546a = iArr;
            try {
                iArr[Action.ContextType.CALL_LOG_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity) {
    }

    static /* synthetic */ void a(Context context) {
        if (OptInWithTopImagePopup.c()) {
            AnalyticsManager.get().a(Constants.INCOGNITO, "User shown popup after deleting call log");
            OptInWithTopImagePopup.a(context, (DialogPopup.IDialogOnClickListener) _$$Lambda$RemoveFromCallLogAction$zP2BXkCyMvTEj9dEScc_U77qIRE.INSTANCE);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && AnonymousClass3.f10546a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Remove from call log action", Constants.CLICK);
        final DialogList dialogList = new DialogList(Activities.getString(2131886166));
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231864, 2131886757));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231472, 2131886756));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.local.RemoveFromCallLogAction.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                dialogList.dismiss();
                switch (i) {
                    case 2131886756:
                        final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                        simpleProgressDialog.setIndeterminate(true);
                        simpleProgressDialog.setMessage(Activities.getString(2131887415));
                        PopupManager.get().a(context, simpleProgressDialog);
                        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.action.local.RemoveFromCallLogAction.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Collection<Phone> phones = contactData.getPhones();
                                if (CollectionUtils.b(phones)) {
                                    for (Phone phone : phones) {
                                        MissedCallManager.a(phone, CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                                    }
                                    List<SingleCallLogData> a2 = CallLogUtils.a(phones);
                                    if (CollectionUtils.b(a2)) {
                                        ArrayList arrayList2 = new ArrayList(a2.size());
                                        for (SingleCallLogData singleCallLogData : a2) {
                                            arrayList2.add(Long.valueOf(singleCallLogData.e));
                                        }
                                        ContactItemContextMenuHelper.a((Activity) context, arrayList2, arrayList2.size(), true, false, null);
                                    }
                                } else {
                                    ContactItemContextMenuHelper.a((Activity) context, null, 0, true, true, null);
                                }
                                RemoveFromCallLogAction.a(context);
                                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.action.local.RemoveFromCallLogAction.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        simpleProgressDialog.dismiss();
                                    }
                                });
                            }
                        });
                        return;
                    case 2131886757:
                        BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                        if (baseAdapterItemData2 instanceof AggregateCallLogData) {
                            List<AggregateCallLogData.CallLogData> callLogs = ((AggregateCallLogData) baseAdapterItemData2).getCallLogs();
                            ArrayList arrayList2 = new ArrayList();
                            for (AggregateCallLogData.CallLogData callLogData : callLogs) {
                                arrayList2.add(Long.valueOf(callLogData.getCallId()));
                            }
                            CallLogUtils.a((List<Long>) arrayList2);
                            EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.RECENT_CALLS);
                            RemoveFromCallLogAction.a(context);
                            MissedCallManager.a(((AggregateCallLogData) baseAdapterItemData).f11101c, CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        dialogList.setOnCancelButtonClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.action.local.RemoveFromCallLogAction.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialogList.dismiss();
            }
        });
        PopupManager.get().a(context, dialogList);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
