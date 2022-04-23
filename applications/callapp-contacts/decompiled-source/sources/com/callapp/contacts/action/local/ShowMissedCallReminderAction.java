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
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        List<CallReminderFrequentData> a2 = MissedCallFrequentManager.a(contactData.getPhone(), CallLogContentObserver.f15282a);
        boolean z = false;
        if (CollectionUtils.b(a2)) {
            Iterator<CallReminderFrequentData> it2 = a2.iterator();
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
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Show missed call reminder action", Constants.CLICK);
        MissedCallFrequentManager.a(contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
