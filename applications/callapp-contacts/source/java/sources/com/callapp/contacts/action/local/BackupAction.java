package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BackupAction.class */
public class BackupAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.BackupAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BackupAction$1.class */
    static /* synthetic */ class C55741 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19246a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19246a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && C55741.f19246a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        BackupUtils.m29297a("contact");
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
