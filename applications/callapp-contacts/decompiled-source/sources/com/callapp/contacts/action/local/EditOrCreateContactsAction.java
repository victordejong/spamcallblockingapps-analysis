package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.EditContactPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditOrCreateContactsAction.class */
public class EditOrCreateContactsAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.EditOrCreateContactsAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditOrCreateContactsAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10509a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10509a = iArr;
            try {
                iArr[Action.ContextType.BLOCKED_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10509a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10509a[Action.ContextType.CALLAPP_PLUS_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        int i;
        if (contactData == null || (i = AnonymousClass1.f10509a[contextType.ordinal()]) == 1) {
            return false;
        }
        if (i == 2 || i == 3) {
            return true;
        }
        return super.a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Edit or create contact action", Constants.CLICK);
        PopupManager.get().a(context, new EditContactPopup(contactData, true));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
