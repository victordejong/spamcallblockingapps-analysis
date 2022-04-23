package com.callapp.contacts.action.shared;

import android.app.Activity;
import android.content.Context;
import com.callapp.contacts.action.shared.ShareContactAction;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.ShareAdapter;
import com.callapp.contacts.util.Activities;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareDetailsAction.class */
public class ShareDetailsAction extends ShareContactAction {
    public ShareDetailsAction() {
        super(ShareContactAction.ShareContactState.shareContactDetails);
    }

    @Override // com.callapp.contacts.action.shared.ShareContactAction, com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Share details action", Constants.CLICK);
        final ShareDialog shareDialog = new ShareDialog(Activities.getString(2131887659));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ShareAdapter.ItemIconAndText(2131231881, Activities.a(2131886099, contactData.getNameOrNumber()), 2131886099));
        arrayList.add(new ShareAdapter.ItemIconAndText(2131231885, Activities.getString(2131887268), 2131887268));
        arrayList.add(new ShareAdapter.ItemIconAndText(2131231882, Activities.a(2131886170, contactData.getFirstName()), 2131886170));
        arrayList.add(new ShareAdapter.ItemIconAndText(2131231884, 2131886191));
        arrayList.add(new ShareAdapter.ItemIconAndText(2131231883, 2131886197));
        ShareAdapter shareAdapter = new ShareAdapter(context, 2131559018, arrayList);
        shareAdapter.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.shared.ShareDetailsAction.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                shareDialog.dismiss();
                switch (i) {
                    case 2131886099:
                        ShareDetailsAction.a(contactData, (Activity) context);
                        return;
                    case 2131886170:
                        ShareDetailsAction.this.b(contactData, (Activity) context);
                        return;
                    case 2131886185:
                        ((ShareLocationAction) ActionsManager.get().a(ShareLocationAction.class)).b(context, contactData, null);
                        return;
                    case 2131886191:
                        ((ShareFileAction) ActionsManager.get().a(ShareFileAction.class)).b(context, contactData, null);
                        return;
                    case 2131886197:
                        ((ShareCameraAction) ActionsManager.get().a(ShareCameraAction.class)).b(context, contactData, null);
                        return;
                    case 2131887268:
                        ShareDetailsAction.this.c(contactData, (Activity) context);
                        return;
                    default:
                        return;
                }
            }
        });
        shareDialog.setAdapter(shareAdapter);
        PopupManager.get().a(context, shareDialog);
    }

    @Override // com.callapp.contacts.action.shared.ShareContactAction, com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
