package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.DialogInterface;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/FreeStoreItemDialog.class */
public class FreeStoreItemDialog extends DialogMessageWithTopImage {

    /* renamed from: a  reason: collision with root package name */
    private FreeStoreItemDialogEvents f13121a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents.class */
    public interface FreeStoreItemDialogEvents {
        void a(DownloaderCardViewHandler.StoreItemType storeItemType);

        void g();
    }

    public FreeStoreItemDialog(final FreeStoreItemDialogEvents freeStoreItemDialogEvents) {
        super(2131232027, Activities.getString(2131887072), Activities.getString(2131887071), Activities.getString(2131887069), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                FreeStoreItemDialogEvents freeStoreItemDialogEvents2 = FreeStoreItemDialogEvents.this;
                if (freeStoreItemDialogEvents2 != null) {
                    freeStoreItemDialogEvents2.a((DownloaderCardViewHandler.StoreItemType) Prefs.cS.get());
                }
            }
        }, Activities.getString(2131887070), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        });
        this.f13121a = freeStoreItemDialogEvents;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        super.onDialogDismissed(dialogInterface);
        FreeStoreItemDialogEvents freeStoreItemDialogEvents = this.f13121a;
        if (freeStoreItemDialogEvents != null) {
            freeStoreItemDialogEvents.g();
        }
    }
}
