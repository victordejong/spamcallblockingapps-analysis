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

    /* renamed from: com.callapp.contacts.action.local.EditBlockedContactAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditBlockedContactAction$1.class */
    static /* synthetic */ class C55941 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19275a;

        /* renamed from: b */
        static final /* synthetic */ int[] f19276b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19276b = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19276b[Action.ContextType.BLOCKED_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[ReminderType.values().length];
            f19275a = iArr2;
            try {
                iArr2[ReminderType.BLOCKED_RULE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19275a[ReminderType.BLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = C55941.f19276b[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Edit blocked contact action", Constants.CLICK);
        if (baseAdapterItemData instanceof ReminderData) {
            ReminderData reminderData = (ReminderData) baseAdapterItemData;
            int i = C55941.f19275a[reminderData.type.ordinal()];
            if (i == 1) {
                ListsUtils.m27487a(context, (int) reminderData.reminderId, reminderData.getPhone().getRawNumber());
            } else if (i != 2) {
            } else {
                ListsUtils.m27478a(context, reminderData.displayName, reminderData.getPhone().getRawNumber());
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
