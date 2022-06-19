package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/StartContactCallLogActivityAction.class */
public class StartContactCallLogActivityAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.StartContactCallLogActivityAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/StartContactCallLogActivityAction$1.class */
    static /* synthetic */ class C56201 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19328a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19328a = iArr;
            try {
                iArr[Action.ContextType.MISSED_CALL_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || CallLogUtils.m27556b(contactData.getPhone().getRawNumber())) {
            return false;
        }
        if (C56201.f19328a[contextType.ordinal()] == 1) {
            return true;
        }
        return super.mo31798a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Start contact call log action", Constants.CLICK);
        ContactCallLogActivity.m31313a(context, contactData.getDeviceId(), contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
