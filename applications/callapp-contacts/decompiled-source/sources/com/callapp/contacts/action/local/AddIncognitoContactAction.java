package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddIncognitoContactAction.class */
public class AddIncognitoContactAction extends LocalAction {

    /* renamed from: a  reason: collision with root package name */
    private IncognitoContactsManager f10472a = new IncognitoContactsManager();

    /* renamed from: com.callapp.contacts.action.local.AddIncognitoContactAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddIncognitoContactAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10473a;

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
            f10473a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10473a[Action.ContextType.FAVORITE_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10473a[Action.ContextType.MISSED_CALL_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10473a[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10473a[Action.ContextType.CALLAPP_PLUS_STARRED_ITEM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10473a[Action.ContextType.CALLAPP_PLUS_ITEM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10473a[Action.ContextType.WHO_VIEW_PROFILE_ITEM.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f10473a[Action.ContextType.NETWORK_ITEM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f10473a[Action.ContextType.CALL_LOG_ITEM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ContactData contactData, Activity activity) {
        this.f10472a.c(contactData);
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || this.f10472a.a(contactData) || contactData.isUnknownNumber() || PhoneStateManager.get().isAnyCallActive()) {
            return false;
        }
        switch (AnonymousClass1.f10473a[contextType.ordinal()]) {
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
    public final void b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Add Incognito action", Constants.CLICK);
        if (OptInWithTopImagePopup.a()) {
            OptInWithTopImagePopup.a(context, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local._$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    AddIncognitoContactAction.this.a(contactData, activity);
                }
            }, _$$Lambda$AddIncognitoContactAction$KWRaIjIw82lyX3F0dF8TpCUVdJI.INSTANCE);
        } else {
            this.f10472a.c(contactData);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return null;
    }
}
