package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.callappplus.CallAppPlusData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallAppPlusNumberAction.class */
public class DeleteCallAppPlusNumberAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.DeleteCallAppPlusNumberAction$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$3.class */
    static /* synthetic */ class C55853 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19264a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19264a = iArr;
            try {
                iArr[Action.ContextType.CALLAPP_PLUS_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19264a[Action.ContextType.CALLAPP_PLUS_STARRED_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        int i = C55853.f19264a[contextType.ordinal()];
        return i == 1 || i == 2;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, final ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Delete CallAppPlus number action", Constants.CLICK);
        PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131887002), Activities.m27697a(2131887001, baseAdapterItemData.displayName), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteCallAppPlusNumberAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                if (baseAdapterItemData2 instanceof CallAppPlusData) {
                    IMDataExtractionUtils.m28623a(baseAdapterItemData2.getPhone(), ((CallAppPlusData) baseAdapterItemData).f20527a.recognizedPersonOrigin);
                    if (ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(contactData.getPhone(), contactData.getDeviceId()) != null) {
                        contactData.setRecognized(false);
                    }
                    ContactPlusUtils.m28345a();
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteCallAppPlusNumberAction.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, null));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
