package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnBlockCallAction.class */
public class UnBlockCallAction extends BlockOrUnblockCallAction {

    /* renamed from: com.callapp.contacts.action.local.UnBlockCallAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnBlockCallAction$1.class */
    static /* synthetic */ class C56211 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19329a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19329a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && BlockManager.m28746b(contactData.getPhone()) && C56211.f19329a[contextType.ordinal()] == 1;
    }
}
