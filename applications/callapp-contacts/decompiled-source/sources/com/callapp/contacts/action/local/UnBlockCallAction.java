package com.callapp.contacts.action.local;

import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnBlockCallAction.class */
public class UnBlockCallAction extends BlockOrUnblockCallAction {

    /* renamed from: com.callapp.contacts.action.local.UnBlockCallAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnBlockCallAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10557a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10557a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && BlockManager.b(contactData.getPhone()) && AnonymousClass1.f10557a[contextType.ordinal()] == 1;
    }
}
