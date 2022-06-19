package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.callreminder.CallRemindersData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.workers.CallReminderWorker;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallRemindersAction.class */
public class DeleteCallRemindersAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.DeleteCallRemindersAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallRemindersAction$1.class */
    static /* synthetic */ class C55901 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19270a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19270a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19270a[Action.ContextType.MISSED_CALL_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = C55901.f19270a[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Delete call reminder action", Constants.CLICK);
        if (baseAdapterItemData instanceof CallRemindersData) {
            CallRemindersData callRemindersData = (CallRemindersData) baseAdapterItemData;
            long longValue = callRemindersData.notificationId.longValue();
            long m28692b = CallRemindersManager.m28692b(Long.valueOf(longValue));
            if (longValue != -1) {
                NotificationManager.get().m28578a((int) longValue);
            }
            CallReminderWorker.Companion companion = CallReminderWorker.f29582a;
            CallReminderWorker.Companion.m26165a(callRemindersData.jobId);
            if (m28692b <= 0) {
                return;
            }
            EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.REMINDER, false);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
