package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BlockCallAction.class */
public class BlockCallAction extends BlockOrUnblockCallAction {

    /* renamed from: com.callapp.contacts.action.local.BlockCallAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BlockCallAction$1.class */
    static /* synthetic */ class C55751 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19247a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19247a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && !BlockManager.m28746b(contactData.getPhone()) && !contactData.isUnknownNumber() && C55751.f19247a[contextType.ordinal()] == 1;
    }
}
