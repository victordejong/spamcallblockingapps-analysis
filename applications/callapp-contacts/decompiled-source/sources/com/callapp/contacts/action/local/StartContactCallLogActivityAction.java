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

    /* renamed from: com.callapp.contacts.action.local.StartContactCallLogActivityAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/StartContactCallLogActivityAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10556a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10556a = iArr;
            try {
                iArr[Action.ContextType.MISSED_CALL_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || CallLogUtils.b(contactData.getPhone().getRawNumber())) {
            return false;
        }
        if (AnonymousClass1.f10556a[contextType.ordinal()] != 1) {
            return super.a(contextType, contactData, baseAdapterItemData);
        }
        return true;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Start contact call log action", Constants.CLICK);
        ContactCallLogActivity.a(context, contactData.getDeviceId(), contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
