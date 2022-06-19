package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.IncognitoData;
import io.objectbox.C17944a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/RemoveIncognitoContactAction.class */
public class RemoveIncognitoContactAction extends LocalAction {

    /* renamed from: a */
    private IncognitoContactsManager f19319a = new IncognitoContactsManager();

    /* renamed from: com.callapp.contacts.action.local.RemoveIncognitoContactAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/RemoveIncognitoContactAction$1.class */
    static /* synthetic */ class C56151 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19320a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19320a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19320a[Action.ContextType.FAVORITE_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19320a[Action.ContextType.MISSED_CALL_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19320a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19320a[Action.ContextType.CALLAPP_PLUS_STARRED_ITEM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19320a[Action.ContextType.CALLAPP_PLUS_ITEM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19320a[Action.ContextType.WHO_VIEW_PROFILE_ITEM.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19320a[Action.ContextType.NETWORK_ITEM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19320a[Action.ContextType.CALL_LOG_ITEM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || !this.f19319a.m28657a(contactData) || PhoneStateManager.get().isAnyCallActive()) {
            return false;
        }
        switch (C56151.f19320a[contextType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Remove incognito action", Constants.CLICK);
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(IncognitoData.class);
        IncognitoData m28655b = IncognitoContactsManager.m28655b(contactData);
        if (m28655b != null) {
            m4727d.m4705b((C17944a) m28655b);
        }
        contactData.setIsIncognito(false);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.UNSET_INCOGNITO, false);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
