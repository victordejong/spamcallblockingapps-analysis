package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteContactAction.class */
public class DeleteContactAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.DeleteContactAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteContactAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10503a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10503a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10503a[Action.ContextType.CONTACT_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || !contactData.isContactInDevice()) {
            return false;
        }
        int i = AnonymousClass1.f10503a[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Delete contact from action", Constants.CLICK);
        ContactItemContextMenuHelper.a(context, contactData);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887190);
    }
}
