package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/SmsAction.class */
public class SmsAction extends LocalAction {
    public static void a(Context context, Phone phone) {
        if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
            SmsUtils.c(context, phone, null);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return false;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "SMS action", Constants.CLICK);
        ContactUtils.a(context, contactData.getPhone(), contactData.getPhonesList(), new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.action.local.SmsAction.1
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public final void onDone(Phone phone, boolean z) {
                SmsAction.a(context, phone);
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
