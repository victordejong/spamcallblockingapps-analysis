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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.action.local.EditOrCreateContactsAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EditOrCreateContactsAction$1.class */
    public static /* synthetic */ class C55951 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19277a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19277a = iArr;
            try {
                iArr[Action.ContextType.BLOCKED_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19277a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19277a[Action.ContextType.CALLAPP_PLUS_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        int i;
        if (contactData == null || (i = C55951.f19277a[contextType.ordinal()]) == 1) {
            return false;
        }
        if (i != 2 && i != 3) {
            return super.mo31798a(contextType, contactData, baseAdapterItemData);
        }
        return true;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Edit or create contact action", Constants.CLICK);
        PopupManager.get().m28207a(context, new EditContactPopup(contactData, true));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
