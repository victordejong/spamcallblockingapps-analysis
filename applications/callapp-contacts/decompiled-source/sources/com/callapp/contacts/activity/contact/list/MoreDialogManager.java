package com.callapp.contacts.activity.contact.list;

import android.content.Context;
import com.callapp.contacts.activity.identify.IdentifyContactsActivity;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/MoreDialogManager.class */
public class MoreDialogManager {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener.class */
    public interface OnMoreDialogItemClickListener {
        void a();

        void b();

        void c();
    }

    public static void a(final Context context, int i, final OnMoreDialogItemClickListener onMoreDialogItemClickListener) {
        final DialogList dialogList = new DialogList(null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231750, 2131887373));
        if (i == 0) {
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231763, 2131887372));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231751, 2131887374));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231752, 2131886557));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231760, 2131887375));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231901, 2131886389));
        } else if (i == 1) {
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231763, 2131887372));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231760, 2131887376));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231463, 2131886292));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231528, 2131887880));
        }
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i2) {
                MoreDialogManager.a(DialogList.this, context, onMoreDialogItemClickListener, i2);
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(context, dialogList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(DialogList dialogList, Context context, final OnMoreDialogItemClickListener onMoreDialogItemClickListener, int i) {
        dialogList.dismiss();
        switch (i) {
            case 2131886292:
                BackupUtils.a("contacts");
                return;
            case 2131886389:
                ContactItemContextMenuHelper.a(context, new OnSortAction() { // from class: com.callapp.contacts.activity.contact.list.MoreDialogManager.1
                    @Override // com.callapp.contacts.activity.contact.list.OnSortAction
                    public final void a() {
                        OnMoreDialogItemClickListener.this.c();
                    }
                });
                return;
            case 2131886557:
                ContactItemContextMenuHelper.a(context);
                return;
            case 2131887880:
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Start from menu");
                IdentifyContactsActivity.a(context);
                return;
            default:
                switch (i) {
                    case 2131887372:
                        ContactUtils.a(context);
                        return;
                    case 2131887373:
                        Activities.a(context, Constants.EXTRA_PHONE_NUMBER, "");
                        return;
                    case 2131887374:
                        ListsUtils.a(context);
                        return;
                    case 2131887375:
                        onMoreDialogItemClickListener.b();
                        return;
                    case 2131887376:
                        onMoreDialogItemClickListener.a();
                        return;
                    default:
                        return;
                }
        }
    }
}
