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
        /* renamed from: a */
        void mo30527a();

        /* renamed from: b */
        void mo30526b();

        /* renamed from: c */
        void mo30525c();
    }

    /* renamed from: a */
    public static void m30529a(final Context context, int i, final OnMoreDialogItemClickListener onMoreDialogItemClickListener) {
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
                MoreDialogManager.m30528a(DialogList.this, context, onMoreDialogItemClickListener, i2);
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().m28209a(context, dialogList);
    }

    /* renamed from: a */
    public static /* synthetic */ void m30528a(DialogList dialogList, Context context, final OnMoreDialogItemClickListener onMoreDialogItemClickListener, int i) {
        dialogList.dismiss();
        switch (i) {
            case 2131886292:
                BackupUtils.m29297a("contacts");
                return;
            case 2131886389:
                ContactItemContextMenuHelper.m30693a(context, new OnSortAction() { // from class: com.callapp.contacts.activity.contact.list.MoreDialogManager.1
                    @Override // com.callapp.contacts.activity.contact.list.OnSortAction
                    /* renamed from: a */
                    public final void mo30524a() {
                        onMoreDialogItemClickListener.mo30525c();
                    }
                });
                return;
            case 2131886557:
                ContactItemContextMenuHelper.m30694a(context);
                return;
            case 2131887880:
                AnalyticsManager.get().m28450a(Constants.OPTIMIZE_CONTACTS, "Start from menu");
                IdentifyContactsActivity.m30249a(context);
                return;
            default:
                switch (i) {
                    case 2131887372:
                        ContactUtils.m28335a(context);
                        return;
                    case 2131887373:
                        Activities.m27678a(context, Constants.EXTRA_PHONE_NUMBER, "");
                        return;
                    case 2131887374:
                        ListsUtils.m27489a(context);
                        return;
                    case 2131887375:
                        onMoreDialogItemClickListener.mo30526b();
                        return;
                    case 2131887376:
                        onMoreDialogItemClickListener.mo30527a();
                        return;
                    default:
                        return;
                }
        }
    }
}
