package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.framework.util.CollectionUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ShowMissedCallReminderAction.class */
public class ShowMissedCallReminderAction extends LocalAction {
    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        List<CallReminderFrequentData> m29829a = MissedCallFrequentManager.m29829a(contactData.getPhone(), CallLogContentObserver.f26825a);
        boolean z = false;
        if (CollectionUtils.m26068b(m29829a)) {
            Iterator<CallReminderFrequentData> it2 = m29829a.iterator();
            while (true) {
                z = false;
                if (it2.hasNext()) {
                    if (it2.next().getFrequentType().equals(CallReminderFrequentData.FrequentType.DONT_SHOW)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        return z;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Show missed call reminder action", Constants.CLICK);
        MissedCallFrequentManager.m29831a(contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
