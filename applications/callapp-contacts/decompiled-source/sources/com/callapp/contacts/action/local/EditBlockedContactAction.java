package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditBlockedContactAction.class */
public class EditBlockedContactAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.EditBlockedContactAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditBlockedContactAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10507a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f10508b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10508b = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10508b[Action.ContextType.BLOCKED_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[ReminderType.values().length];
            f10507a = iArr2;
            try {
                iArr2[ReminderType.BLOCKED_RULE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10507a[ReminderType.BLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = AnonymousClass1.f10508b[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Edit blocked contact action", Constants.CLICK);
        if (baseAdapterItemData instanceof ReminderData) {
            ReminderData reminderData = (ReminderData) baseAdapterItemData;
            int i = AnonymousClass1.f10507a[reminderData.type.ordinal()];
            if (i == 1) {
                ListsUtils.a(context, (int) reminderData.reminderId, reminderData.getPhone().getRawNumber());
            } else if (i == 2) {
                ListsUtils.a(context, reminderData.displayName, reminderData.getPhone().getRawNumber());
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
