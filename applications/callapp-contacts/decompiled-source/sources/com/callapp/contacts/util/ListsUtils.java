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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ListsUtils$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ListsUtils$1.class */
    public static final class AnonymousClass1 implements ActionDoneListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ContactItemViewEvents f15895a;

        AnonymousClass1(ContactItemViewEvents contactItemViewEvents) {
            this.f15895a = contactItemViewEvents;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.util.ListsUtils.1.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        if (AnonymousClass1.this.f15895a != null) {
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ListsUtils.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass1.this.f15895a.a();
                                }
                            });
                        }
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ListsUtils$14  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ListsUtils$14.class */
    public static final class AnonymousClass14 implements AdapterText.AdapterEvents {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DialogList f15902a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f15903b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ BlockedAdapter.BlockedAdapterEvents f15904c;

        AnonymousClass14(DialogList dialogList, View view, BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
            this.f15902a = dialogList;
            this.f15903b = view;
            this.f15904c = blockedAdapterEvents;
        }

        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
        public final void onRowClicked(int i) {
            this.f15902a.dismiss();
            AndroidUtils.a(this.f15903b, 1);
            switch (i) {
                case 2131886344:
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Block an existing contact", Constants.CLICK);
                    Activities.a(this.f15903b.getContext(), ChooseMultiNumbersFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.util.ListsUtils.14.2
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(final Activity activity, int i2, int i3, Intent intent) {
                            if (i3 == -1 && intent.getExtras() != null) {
                                final String string = intent.getExtras().getString(ContactDetailsActivity.EXTRA_FULL_NAME);
                                String[] stringArray = intent.getExtras().getStringArray("phone nums");
                                if (stringArray != null) {
                                    for (final String str : stringArray) {
                                        if (StringUtils.b((CharSequence) str)) {
                                            new Task() { // from class: com.callapp.contacts.util.ListsUtils.14.2.1
                                                @Override // com.callapp.contacts.manager.task.Task
                                                public void doTask() {
                                                    Phone a2 = PhoneManager.get().a(str);
                                                    if (BlockManager.b(a2)) {
                                                        FeedbackManager.get().b(Activities.a(2131886647, StringUtils.j(string)), (Integer) null);
                                                        return;
                                                    }
                                                    BlockManager.a(activity, string, a2);
                                                    if (AnonymousClass14.this.f15904c != null) {
                                                        AnonymousClass14.this.f15904c.b();
                                                    }
                                                }
                                            }.execute();
                                        }
                                    }
                                }
                            }
                        }
                    });
                    return;
                case 2131886345:
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Block by number series", Constants.CLICK);
                    ListsUtils.a(this.f15903b.getContext(), new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.14.1
                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        public final void a(int i2, String str, boolean z) {
                            EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                        }
                    }, 0, "");
                    return;
                case 2131886826:
                    ListsUtils.a(this.f15903b.getContext());
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.callapp.contacts.util.ads.AdSettings a(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.ListsUtils.a(java.lang.String, java.lang.String):com.callapp.contacts.util.ads.AdSettings");
    }

    public static void a(Context context) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Block by number", Constants.CLICK);
        PopupManager.get().a(context, new DialogBlockByNumber(Activities.getString(2131886828), "", "", new DialogBlockByNumber.SimpleDoneDialogListener() { // from class: com.callapp.contacts.util.ListsUtils.15
            @Override // com.callapp.contacts.popup.contact.DialogBlockByNumber.SimpleDoneDialogListener
            public final void a() {
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }));
    }

    public static void a(Context context, int i, int i2, final Listener<Object> listener) {
        if (Prefs.w.get().booleanValue()) {
            PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(i), Activities.getString(i2), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.ListsUtils.11
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    Prefs.w.set(Boolean.FALSE);
                    new Task() { // from class: com.callapp.contacts.util.ListsUtils.11.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            Listener.this.a(null);
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
                    Listener.this.a(null);
                }
            }.execute();
        }
    }

    public static void a(Context context, final int i, final String str) {
        a(context, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.8
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(int i2, String str2, boolean z) {
                if (i != i2 || !StringUtils.b(str, str2)) {
                    BlockManager.b(BlockedRule.BlockRuleType.values()[i], str);
                }
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }, i, str);
    }

    public static void a(Context context, BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str, ContactItemContextMenuHelper.MENU_TYPE menu_type, View view) {
        ContactItemContextMenuHelper.a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, contextType, str, baseAdapterItemData, menu_type, view);
    }

    public static void a(Context context, BaseAdapterItemData baseAdapterItemData, String str, DataChangedInfo dataChangedInfo, ENTRYPOINT entrypoint) {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.CONTACT_LIST, "Pressed on contact in: " + str, Constants.CLICK);
        String rawNumber = baseAdapterItemData.getPhone() == null ? "" : baseAdapterItemData.getPhone().getRawNumber();
        if (PhoneManager.get().a(baseAdapterItemData.getPhone())) {
            FeedbackManager.get().a(Activities.getString(2131887308), (Integer) null);
        } else if (StringUtils.b((CharSequence) rawNumber) && !CallLogUtils.b(rawNumber)) {
            long j = baseAdapterItemData.contactId;
            String rawNumber2 = baseAdapterItemData.getPhone().getRawNumber();
            Intent createIntent = ContactDetailsActivity.createIntent(context, j, rawNumber2, null, true, dataChangedInfo, "Pressed on contact in: " + str, entrypoint);
            if (StringUtils.b((CharSequence) baseAdapterItemData.displayName) && !PhoneManager.get().a(baseAdapterItemData.displayName).equals(baseAdapterItemData.getPhone())) {
                createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, baseAdapterItemData.displayName);
            }
            boolean z = true;
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, baseAdapterItemData.contactId == 0);
            if (baseAdapterItemData.contactId != 0) {
                z = false;
            }
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, z);
            if (!Activities.a(context, createIntent)) {
                FeedbackManager.get().a(Activities.getString(2131887356), (Integer) null);
            }
        }
    }

    public static void a(final Context context, final BaseAdapterItemData baseAdapterItemData, final boolean z, final ContactItemViewEvents contactItemViewEvents) {
        ContactUtils.a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, baseAdapterItemData.normalNumbers, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.util.ListsUtils.2
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public final void onDone(Phone phone, boolean z2) {
                ListsUtils.a(context, phone, baseAdapterItemData, z, contactItemViewEvents);
            }
        });
    }

    public static void a(final Context context, MemoryContactItem memoryContactItem, final ContactItemViewEvents contactItemViewEvents) {
        ContactUtils.a(context, memoryContactItem.getPhone(), memoryContactItem.contactId, memoryContactItem.normalNumbers, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.util.ListsUtils.3
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public final void onDone(Phone phone, boolean z) {
                ListsUtils.a(context, phone, contactItemViewEvents);
            }
        });
    }

    public static void a(Context context, final DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener, int i, String str) {
        DialogSelectSingleChoiceRadioBtnsWithTextField dialogSelectSingleChoiceRadioBtnsWithTextField = new DialogSelectSingleChoiceRadioBtnsWithTextField(Activities.getString(2131886749), Activities.getString(2131886748), BlockedRule.BlockRuleType.values(), i, str, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.ListsUtils.10
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(int i2, String str2, boolean z) {
                BlockManager.a(BlockedRule.BlockRuleType.values()[i2], str2);
                DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener2 = DialogWithEditTextDelegate.SingleChoiceWithTextListener.this;
                if (singleChoiceWithTextListener2 != null) {
                    singleChoiceWithTextListener2.a(i2, str2, z);
                }
            }
        });
        dialogSelectSingleChoiceRadioBtnsWithTextField.setInputType(3);
        PopupManager.get().a(context, dialogSelectSingleChoiceRadioBtnsWithTextField);
    }

    public static void a(Context context, Phone phone, BaseAdapterItemData baseAdapterItemData, boolean z, ContactItemViewEvents contactItemViewEvents) {
        long j = baseAdapterItemData.contactId;
        String str = baseAdapterItemData.displayName;
        if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
            PhoneManager.a(context, phone, j, str, "Contact name or number", "Call", z, new AnonymousClass1(contactItemViewEvents));
        }
    }

    public static void a(Context context, Phone phone, ContactItemViewEvents contactItemViewEvents) {
        if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
            SmsUtils.c(context, phone, "");
            if (contactItemViewEvents != null) {
                contactItemViewEvents.b();
            }
        }
    }

    public static void a(Context context, String str, Phone phone, String str2) {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.CONTACT_LIST, "Pressed on contact in: " + str2, Constants.CLICK);
        String rawNumber = phone == null ? "" : phone.getRawNumber();
        if (PhoneManager.get().a(phone)) {
            FeedbackManager.get().a(Activities.getString(2131887308), (Integer) null);
        } else if (StringUtils.b((CharSequence) rawNumber) && !CallLogUtils.b(rawNumber)) {
            Intent createIntent = ContactDetailsActivity.createIntent(context, 0L, phone.getRawNumber(), null, true, null, "PlaceClicked", null);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, false);
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, true);
            if (!Activities.a(context, createIntent)) {
                FeedbackManager.get().a(Activities.getString(2131887356), (Integer) null);
            }
        }
    }

    public static void a(Context context, String str, String str2) {
        PopupManager.get().a(context, new DialogBlockByNumber(Activities.getString(2131886804), str, str2, new DialogBlockByNumber.SimpleDoneDialogListener() { // from class: com.callapp.contacts.util.ListsUtils.9
            @Override // com.callapp.contacts.popup.contact.DialogBlockByNumber.SimpleDoneDialogListener
            public final void a() {
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
            }
        }));
    }

    public static void a(View view, BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
        DialogList dialogList = new DialogList(null);
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231414, Activities.getString(2131886345), 2131886345));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231412, Activities.getString(2131886344), 2131886344));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231413, Activities.getString(2131886826), 2131886826));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(view.getContext(), 2131558570, arrayList);
        adapterIconAndText.setListener(new AnonymousClass14(dialogList, view, blockedAdapterEvents));
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(view.getContext(), dialogList);
    }

    public static void a(final CallAppRow callAppRow, final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents) {
        if (callAppRow != null) {
            callAppRow.setOnSwipeListener(new BaseSwipeView.OnSwipedListener() { // from class: com.callapp.contacts.util.ListsUtils.4
                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                public final void a() {
                    AndroidUtils.a(CallAppRow.this, 1);
                    ListsUtils.a(CallAppRow.this.getContext(), baseAdapterItemData.getPhone(), contactItemViewEvents);
                }

                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                public final void b() {
                    AndroidUtils.a(CallAppRow.this, 1);
                    Context context = CallAppRow.this.getContext();
                    Phone phone = baseAdapterItemData.getPhone();
                    BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                    ListsUtils.a(context, phone, baseAdapterItemData2, ContactUtils.a(baseAdapterItemData2.getPhone(), baseAdapterItemData.getContactId()), contactItemViewEvents);
                }
            });
        }
    }

    public static void a(final CallAppRow callAppRow, final MemoryContactItem memoryContactItem, final ContactItemViewEvents contactItemViewEvents) {
        if (callAppRow != null) {
            callAppRow.setOnSwipeListener(new BaseSwipeView.OnSwipedListener() { // from class: com.callapp.contacts.util.ListsUtils.5
                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                public final void a() {
                    AndroidUtils.a(CallAppRow.this, 1);
                    ListsUtils.a(CallAppRow.this.getContext(), memoryContactItem, contactItemViewEvents);
                }

                @Override // com.callapp.contacts.activity.base.BaseSwipeView.OnSwipedListener
                public final void b() {
                    AndroidUtils.a(CallAppRow.this, 1);
                    Context context = CallAppRow.this.getContext();
                    MemoryContactItem memoryContactItem2 = memoryContactItem;
                    ListsUtils.a(context, memoryContactItem2, ContactUtils.a(memoryContactItem2.getPhone(), memoryContactItem.contactId), contactItemViewEvents);
                }
            });
        }
    }

    public static void b(Context context, BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str, ContactItemContextMenuHelper.MENU_TYPE menu_type, View view) {
        ContactItemContextMenuHelper.a(context, baseAdapterItemData.getPhone(), baseAdapterItemData.contactId, contextType, str, baseAdapterItemData, menu_type, view, true);
    }
}
