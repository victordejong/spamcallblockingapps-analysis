package com.callapp.contacts.action.local;

import android.content.Context;
import android.util.Pair;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnSpamAction.class */
public class UnSpamAction extends SpamOrUnSpamAction {

    /* renamed from: com.callapp.contacts.action.local.UnSpamAction$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnSpamAction$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10563a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10563a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || !UserCorrectedInfoUtil.a(contactData)) {
            return false;
        }
        return AnonymousClass2.f10563a[contextType.ordinal()] != 1 ? super.a(contextType, contactData, baseAdapterItemData) : !contactData.isContactInDevice();
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "UnSpam action", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.action.local.UnSpamAction.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactData contactData2 = contactData;
                Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(contactData.getPhone(), contactData.getDeviceId());
                if (contactDataOnlyIfAlreadyLoaded != null) {
                    contactData2 = (ContactData) contactDataOnlyIfAlreadyLoaded.first;
                }
                UserCorrectedInfoUtil.a(contactData2, contactData2.getPhone(), false);
                FastCacheDataManager.c(contactData2);
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.SPAM_CALL_UNREAD_COUNT_CHANGED, false);
            }
        }.execute();
    }
}
