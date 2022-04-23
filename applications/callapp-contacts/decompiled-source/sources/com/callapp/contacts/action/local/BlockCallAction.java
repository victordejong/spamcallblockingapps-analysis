package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BlockCallAction.class */
public class BlockCallAction extends BlockOrUnblockCallAction {

    /* renamed from: com.callapp.contacts.action.local.BlockCallAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BlockCallAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10479a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10479a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && !BlockManager.b(contactData.getPhone()) && !contactData.isUnknownNumber() && AnonymousClass1.f10479a[contextType.ordinal()] == 1;
    }
}
