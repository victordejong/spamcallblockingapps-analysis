package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BackupAction.class */
public class BackupAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.BackupAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/BackupAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10478a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10478a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && AnonymousClass1.f10478a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        BackupUtils.a("contact");
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
