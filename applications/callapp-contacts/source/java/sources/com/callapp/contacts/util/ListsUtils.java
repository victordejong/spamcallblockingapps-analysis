package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseSwipeView;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.blocked.BlockedAdapter;
import com.callapp.contacts.activity.chooseContact.ChooseMultiNumbersFromContactsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogBlockByNumber;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceRadioBtnsWithTextField;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ListsUtils.class */
public class ListsUtils {

    /* renamed from: com.callapp.contacts.util.ListsUtils$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ListsUtils$1.class */
    public static final class C78071 implements ActionDoneListener {

        /* renamed from: a */
        final /* synthetic */ ContactItemViewEvents f27738a;

        C78071(ContactItemViewEvents contactItemViewEvents) {
            this.f27738a = contactItemViewEvents;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.util.ListsUtils.1.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        if (C78071.this.f27738a == null) {
                            return;
                        }
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ListsUtils.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C78071.this.f27738a.mo29814a();
                            }
                        });
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(boolean z) {
        }
    }

    /* renamed from: com.callapp.contacts.util.ListsUtils$14 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ListsUtils$14.class */
    public static final class C781514 implements AdapterText.AdapterEvents {

        /* renamed from: a */
        final /* synthetic */ DialogList f27745a;

        /* renamed from: b */
        final /* synthetic */ View f27746b;

        /* renamed from: c */
        final /* synthetic */ BlockedAdapter.BlockedAdapterEvents f27747c;

        C781514(DialogList dialogList, View view, BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
            this.f27745a = dialogList;
            this.f27746b = view;
            this.f27747c = blockedAdapterEvents;
        }

        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
        public final void onRowClicked(int i) {
            this.f27745a.dismiss();
            AndroidUtils.m27630a(this.f27746b, 1);
            switch (i) {
                case 2131886344:
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Block an existing contact", Constants.CLICK);
                    Activities.m27680a(this.f27746b.getContext(), ChooseMultiNumbersFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.util.ListsUtils.14.2
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(final Activity activity, int i2, int i3, Intent intent) {
                            if (i3 != -1 || intent.getExtras() == null) {
                                return;
                            }
                            final String string = intent.getExtras().getString(ContactDetailsActivity.EXTRA_FULL_NAME);
                            String[] stringArray = intent.getExtras().getStringArray("phone nums");
                            if (stringArray == null) {
                                return;
                            }
                            for (final String str : stringArray) {
                                if (StringUtils.m26045b((CharSequence) str)) {
                                    new Task() { // from class: com.callapp.contacts.util.ListsUtils.14.2.1
                                        @Override // com.callapp.contacts.manager.task.Task
                                        public void doTask() {
                                            Phone m28239a = PhoneManager.get().m28239a(str);
                                            if (BlockManager.m28746b(m28239a)) {
                                                FeedbackManager.get().m28664b(Activities.m27697a(2131886647, StringUtils.m26020j(string)), (Integer) null);
                                                return;
                                            }
                                            BlockManager.m28758a(activity, string, m28239a);
                                            if (C781514.this.f27747c == null) {
                                                return;
                                            }
                                            C781514.this.f27747c.mo31426b();
                                        }
                                    }.execute();
                                }
                            }
                        }
                    });
                    return;
                case 2131886345:
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Block by number series", Constants.CLICK);
                    ListsUtils.m27482a(this.f27746b.getContext(), new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.14.1
                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        /* renamed from: a */
                        public final void mo27338a(int i2, String str, boolean z) {
                            EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                        }
                    }, 0, "");
                    return;
                case 2131886826:
                    ListsUtils.m27489a(this.f27746b.getContext());
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.callapp.contacts.util.ads.AdSettings m27474a(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.ListsUtils.m27474a(java.lang.String, java.lang.String):com.callapp.contacts.util.ads.AdSettings");
    }

    /* renamed from: a */
    public static void m27489a(Context context) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Block by number", Constants.CLICK);
        PopupManager.get().m28209a(context, new DialogBlockByNumber(Activities.getString(2131886828), "", "", new DialogBlockByNumber.SimpleDoneDialogListener() { // from class: com.callapp.contacts.util.ListsUtils.15
            @Override // com.callapp.contacts.popup.contact.DialogBlockByNumber.SimpleDoneDialogListener
            /* renamed from: a */
            public final void mo27468a() {
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }));
    }

    /* renamed from: a */
    public static void m27488a(Context context, int i, int i2, final Listener<Object> listener) {
        if (Prefs.f26666w.get().booleanValue()) {
            PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(i), Activities.getString(i2), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.ListsUtils.11
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    Prefs.f26666w.set(Boolean.FALSE);
                    new Task() { // from class: com.callapp.contacts.util.ListsUtils.11.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            listener.mo27399a(null);
                        }
                    }.execute();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.ListsUtils.12
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                }
            }));
        } else {
            new Task() { // from class: com.callapp.contacts.util.ListsUtils.13
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    listener.mo27399a(null);
                }
            }.execute();
        }
    }

    /* renamed from: a */
    public static void m27487a(Context context, final int i, final String str) {
        m27482a(context, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.8
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27338a(int i2, String str2, boolean z) {
                if (i != i2 || !StringUtils.m26042b(str, str2)) {
                    BlockManager.m28747b(BlockedRule.BlockRuleType.values()[i], str);
                }
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }, i, str);
    }

    /* renamed from: a */
    public static void m27486a(Context context, BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str, ContactItemContextMenuHelper.MENU_TYPE menu_type, View view) {
        ContactItemContextMenuHelper.m30691a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, contextType, str, baseAdapterItemData, menu_type, view);
    }

    /* renamed from: a */
    public static void m27485a(Context context, BaseAdapterItemData baseAdapterItemData, String str, DataChangedInfo dataChangedInfo, ENTRYPOINT entrypoint) {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.CONTACT_LIST, "Pressed on contact in: " + str, Constants.CLICK);
        String rawNumber = baseAdapterItemData.getPhone() == null ? "" : baseAdapterItemData.getPhone().getRawNumber();
        if (PhoneManager.get().m28240a(baseAdapterItemData.getPhone())) {
            FeedbackManager.get().m28669a(Activities.getString(2131887308), (Integer) null);
        } else if (!StringUtils.m26045b((CharSequence) rawNumber) || CallLogUtils.m27556b(rawNumber)) {
        } else {
            long j = baseAdapterItemData.contactId;
            String rawNumber2 = baseAdapterItemData.getPhone().getRawNumber();
            Intent createIntent = ContactDetailsActivity.createIntent(context, j, rawNumber2, null, true, dataChangedInfo, "Pressed on contact in: " + str, entrypoint);
            if (StringUtils.m26045b((CharSequence) baseAdapterItemData.displayName) && !PhoneManager.get().m28239a(baseAdapterItemData.displayName).equals(baseAdapterItemData.getPhone())) {
                createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, baseAdapterItemData.displayName);
            }
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, baseAdapterItemData.contactId == 0);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, baseAdapterItemData.contactId == 0);
            if (Activities.m27685a(context, createIntent)) {
                return;
            }
            FeedbackManager.get().m28669a(Activities.getString(2131887356), (Integer) null);
        }
    }

    /* renamed from: a */
    public static void m27484a(final Context context, final BaseAdapterItemData baseAdapterItemData, final boolean z, final ContactItemViewEvents contactItemViewEvents) {
        ContactUtils.m28333a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, baseAdapterItemData.normalNumbers, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.util.ListsUtils.2
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public final void onDone(Phone phone, boolean z2) {
                ListsUtils.m27481a(context, phone, baseAdapterItemData, z, contactItemViewEvents);
            }
        });
    }

    /* renamed from: a */
    public static void m27483a(final Context context, MemoryContactItem memoryContactItem, final ContactItemViewEvents contactItemViewEvents) {
        ContactUtils.m28333a(context, memoryContactItem.getPhone(), memoryContactItem.contactId, memoryContactItem.normalNumbers, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.util.ListsUtils.3
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public final void onDone(Phone phone, boolean z) {
                ListsUtils.m27480a(context, phone, contactItemViewEvents);
            }
        });
    }

    /* renamed from: a */
    public static void m27482a(Context context, final DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener, int i, String str) {
        DialogSelectSingleChoiceRadioBtnsWithTextField dialogSelectSingleChoiceRadioBtnsWithTextField = new DialogSelectSingleChoiceRadioBtnsWithTextField(Activities.getString(2131886749), Activities.getString(2131886748), BlockedRule.BlockRuleType.values(), i, str, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.10
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27338a(int i2, String str2, boolean z) {
                BlockManager.m28756a(BlockedRule.BlockRuleType.values()[i2], str2);
                DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener2 = singleChoiceWithTextListener;
                if (singleChoiceWithTextListener2 != null) {
                    singleChoiceWithTextListener2.mo27338a(i2, str2, z);
                }
            }
        });
        dialogSelectSingleChoiceRadioBtnsWithTextField.setInputType(3);
        PopupManager.get().m28209a(context, dialogSelectSingleChoiceRadioBtnsWithTextField);
    }

    /* renamed from: a */
    public static void m27481a(Context context, Phone phone, BaseAdapterItemData baseAdapterItemData, boolean z, ContactItemViewEvents contactItemViewEvents) {
        long j = baseAdapterItemData.contactId;
        String str = baseAdapterItemData.displayName;
        if (phone != null && phone.isNotEmpty() && !CallLogUtils.m27556b(phone.getRawNumber())) {
            PhoneManager.m28248a(context, phone, j, str, "Contact name or number", "Call", z, new C78071(contactItemViewEvents));
        }
    }

    /* renamed from: a */
    public static void m27480a(Context context, Phone phone, ContactItemViewEvents contactItemViewEvents) {
        if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
            return;
        }
        SmsUtils.m27391c(context, phone, "");
        if (contactItemViewEvents == null) {
            return;
        }
        contactItemViewEvents.mo29813b();
    }

    /* renamed from: a */
    public static void m27479a(Context context, String str, Phone phone, String str2) {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.CONTACT_LIST, "Pressed on contact in: " + str2, Constants.CLICK);
        String rawNumber = phone == null ? "" : phone.getRawNumber();
        if (PhoneManager.get().m28240a(phone)) {
            FeedbackManager.get().m28669a(Activities.getString(2131887308), (Integer) null);
        } else if (!StringUtils.m26045b((CharSequence) rawNumber) || CallLogUtils.m27556b(rawNumber)) {
        } else {
            Intent createIntent = ContactDetailsActivity.createIntent(context, 0L, phone.getRawNumber(), null, true, null, "PlaceClicked", null);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, false);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, true);
            if (Activities.m27685a(context, createIntent)) {
                return;
            }
            FeedbackManager.get().m28669a(Activities.getString(2131887356), (Integer) null);
        }
    }

    /* renamed from: a */
    public static void m27478a(Context context, String str, String str2) {
        PopupManager.get().m28209a(context, new DialogBlockByNumber(Activities.getString(2131886804), str, str2, new DialogBlockByNumber.SimpleDoneDialogListener() { // from class: com.callapp.contacts.util.ListsUtils.9
            @Override // com.callapp.contacts.popup.contact.DialogBlockByNumber.SimpleDoneDialogListener
            /* renamed from: a */
            public final void mo27468a() {
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }));
    }

    /* renamed from: a */
    public static void m27477a(View view, BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
        DialogList dialogList = new DialogList(null);
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231414, Activities.getString(2131886345), 2131886345));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231412, Activities.getString(2131886344), 2131886344));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231413, Activities.getString(2131886826), 2131886826));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(view.getContext(), 2131558570, arrayList);
        adapterIconAndText.setListener(new C781514(dialogList, view, blockedAdapterEvents));
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().m28209a(view.getContext(), dialogList);
    }

    /* renamed from: a */
    public static void m27476a(final CallAppRow callAppRow, final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents) {
        if (callAppRow != null) {
            callAppRow.setOnSwipeListener(new BaseSwipeView.OnSwipedListener() { // from class: com.callapp.contacts.util.ListsUtils.4
                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                /* renamed from: a */
                public final void mo27470a() {
                    AndroidUtils.m27630a(callAppRow, 1);
                    ListsUtils.m27480a(callAppRow.getContext(), baseAdapterItemData.getPhone(), contactItemViewEvents);
                }

                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                /* renamed from: b */
                public final void mo27469b() {
                    AndroidUtils.m27630a(callAppRow, 1);
                    Context context = callAppRow.getContext();
                    Phone phone = baseAdapterItemData.getPhone();
                    BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                    ListsUtils.m27481a(context, phone, baseAdapterItemData2, ContactUtils.m28326a(baseAdapterItemData2.getPhone(), baseAdapterItemData.getContactId()), contactItemViewEvents);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m27475a(final CallAppRow callAppRow, final MemoryContactItem memoryContactItem, final ContactItemViewEvents contactItemViewEvents) {
        if (callAppRow != null) {
            callAppRow.setOnSwipeListener(new BaseSwipeView.OnSwipedListener() { // from class: com.callapp.contacts.util.ListsUtils.5
                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                /* renamed from: a */
                public final void mo27470a() {
                    AndroidUtils.m27630a(callAppRow, 1);
                    ListsUtils.m27483a(callAppRow.getContext(), memoryContactItem, contactItemViewEvents);
                }

                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                /* renamed from: b */
                public final void mo27469b() {
                    AndroidUtils.m27630a(callAppRow, 1);
                    Context context = callAppRow.getContext();
                    MemoryContactItem memoryContactItem2 = memoryContactItem;
                    ListsUtils.m27484a(context, memoryContactItem2, ContactUtils.m28326a(memoryContactItem2.getPhone(), memoryContactItem.contactId), contactItemViewEvents);
                }
            });
        }
    }

    /* renamed from: b */
    public static void m27473b(Context context, BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str, ContactItemContextMenuHelper.MENU_TYPE menu_type, View view) {
        ContactItemContextMenuHelper.m30690a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, contextType, str, baseAdapterItemData, menu_type, view, true);
    }
}
