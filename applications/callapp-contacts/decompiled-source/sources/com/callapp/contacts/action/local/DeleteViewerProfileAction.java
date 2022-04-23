package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataItem;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteViewerProfileAction.class */
public class DeleteViewerProfileAction extends LocalAction {
    static /* synthetic */ void a(WhoViewedMyProfileDataItem whoViewedMyProfileDataItem) {
        if (whoViewedMyProfileDataItem != null && whoViewedMyProfileDataItem.getPhone() != null && StringUtils.b((CharSequence) whoViewedMyProfileDataItem.getPhone().a())) {
            WhoViewedMyProfileDataManager.a(whoViewedMyProfileDataItem.getPhone().a());
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && Prefs.cJ.get().booleanValue() && contextType == Action.ContextType.WHO_VIEW_PROFILE_ITEM;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Delete CallAppPlus number action", Constants.CLICK);
        PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(2131886737), Activities.a(2131886736, baseAdapterItemData.displayName), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteViewerProfileAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                if (baseAdapterItemData2 instanceof WhoViewedMyProfileDataItem) {
                    DeleteViewerProfileAction.a((WhoViewedMyProfileDataItem) baseAdapterItemData2);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteViewerProfileAction.2
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
