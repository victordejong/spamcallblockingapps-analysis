package com.callapp.contacts.action.local;

import android.content.Context;
import android.util.Pair;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddRemoveFavoritesAction.class */
public class AddRemoveFavoritesAction extends LocalAction {

    /* renamed from: a */
    private boolean f19244a;

    /* renamed from: com.callapp.contacts.action.local.AddRemoveFavoritesAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddRemoveFavoritesAction$1.class */
    static /* synthetic */ class C55731 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19245a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19245a = iArr;
            try {
                iArr[Action.ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19245a[Action.ContextType.CONTACT_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19245a[Action.ContextType.FAVORITE_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public AddRemoveFavoritesAction(boolean z) {
        this.f19244a = z;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || contactData.getDeviceData() == null || !contactData.isContactInDevice()) {
            return false;
        }
        boolean booleanValue = contactData.getDeviceData().isFavorite() != null ? contactData.getDeviceData().isFavorite().booleanValue() : false;
        if (this.f19244a) {
            if (booleanValue) {
                return false;
            }
        } else if (!booleanValue) {
            return false;
        }
        int i = C55731.f19245a[contextType.ordinal()];
        return i == 1 || i == 2 || i == 3;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Add/Remove favorite action", Constants.CLICK);
        Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(contactData.getPhone(), contactData.getDeviceId());
        if (contactDataOnlyIfAlreadyLoaded != null) {
            ContactDataUtils.setIsFavorite((ContactData) contactDataOnlyIfAlreadyLoaded.first, this.f19244a);
        } else {
            ContactUtils.m28337a(contactData.getDeviceId(), this.f19244a);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(this.f19244a ? 2131886210 : 2131887573);
    }

    @Override // com.callapp.contacts.action.local.LocalAction, com.callapp.contacts.action.Action
    public String getKey() {
        return getClass().getSimpleName() + this.f19244a;
    }
}
