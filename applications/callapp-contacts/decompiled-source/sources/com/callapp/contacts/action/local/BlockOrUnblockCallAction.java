package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BlockOrUnblockCallAction.class */
public abstract class BlockOrUnblockCallAction extends LocalAction {
    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Block/Unblock call action", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.action.local.BlockOrUnblockCallAction.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                long deviceId = contactData.getDeviceId();
                String j = StringUtils.j(contactData.getNameOrNumber());
                Phone phone = contactData.getPhone();
                if (BlockManager.b(phone)) {
                    BlockManager.a(deviceId, j, phone);
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
                    return;
                }
                BlockManager.b(context, j, phone);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
