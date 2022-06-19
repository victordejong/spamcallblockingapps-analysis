package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/CopyContactNumberAction.class */
public class CopyContactNumberAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.CopyContactNumberAction$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/CopyContactNumberAction$2.class */
    static /* synthetic */ class C55812 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19258a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19258a = iArr;
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
        if (C55812.f19258a[contextType.ordinal()] == 1) {
            return true;
        }
        return super.mo31798a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Copy contact number action", Constants.CLICK);
        ContactUtils.m28332a(context, contactData.getPhone(), contactData.getPhonesList(), new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.action.local.CopyContactNumberAction.1
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public void onDone(Phone phone, boolean z) {
                CallAppClipboardManager.get().m28709a(Activities.getString(2131886149), phone.getRawNumber());
                FeedbackManager.get().m28669a(Activities.getString(2131887906), (Integer) null);
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
