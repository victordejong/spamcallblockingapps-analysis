package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/CreateContactsAction.class */
public class CreateContactsAction extends EditOrCreateContactsAction {

    /* renamed from: com.callapp.contacts.action.local.CreateContactsAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/CreateContactsAction$1.class */
    static /* synthetic */ class C55821 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19259a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19259a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.local.EditOrCreateContactsAction, com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (C55821.f19259a[contextType.ordinal()] == 1 && contactData != null && !contactData.isContactInDevice() && !contactData.isUnknownNumber()) {
            return super.mo31798a(contextType, contactData, baseAdapterItemData);
        }
        return false;
    }
}
