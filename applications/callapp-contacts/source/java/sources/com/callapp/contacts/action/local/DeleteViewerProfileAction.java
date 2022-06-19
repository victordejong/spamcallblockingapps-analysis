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
    /* renamed from: a */
    static /* synthetic */ void m31829a(WhoViewedMyProfileDataItem whoViewedMyProfileDataItem) {
        if (whoViewedMyProfileDataItem == null || whoViewedMyProfileDataItem.getPhone() == null || !StringUtils.m26045b((CharSequence) whoViewedMyProfileDataItem.getPhone().m26101a())) {
            return;
        }
        WhoViewedMyProfileDataManager.m29357a(whoViewedMyProfileDataItem.getPhone().m26101a());
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && Prefs.f26339cJ.get().booleanValue() && contextType == Action.ContextType.WHO_VIEW_PROFILE_ITEM;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Delete CallAppPlus number action", Constants.CLICK);
        PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131886737), Activities.m27697a(2131886736, baseAdapterItemData.displayName), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteViewerProfileAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                if (baseAdapterItemData2 instanceof WhoViewedMyProfileDataItem) {
                    DeleteViewerProfileAction.m31829a((WhoViewedMyProfileDataItem) baseAdapterItemData2);
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
