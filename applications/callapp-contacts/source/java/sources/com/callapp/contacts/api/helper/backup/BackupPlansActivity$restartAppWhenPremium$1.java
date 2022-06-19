package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.content.DialogInterface;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m4298d2 = {"com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;", "onBillingClientSetupFinished", "", "onPurchasesUpdated", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1.class */
public final class BackupPlansActivity$restartAppWhenPremium$1 implements BillingManager.BillingUpdatesListener {

    /* renamed from: a */
    final /* synthetic */ BackupPlansActivity f24713a;

    public BackupPlansActivity$restartAppWhenPremium$1(BackupPlansActivity backupPlansActivity) {
        this.f24713a = backupPlansActivity;
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    /* renamed from: a */
    public final void mo26177a() {
        BillingManager billingManager;
        billingManager = this.f24713a.f24684d;
        if (billingManager != null) {
            billingManager.m28298a();
        }
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    /* renamed from: a */
    public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
        BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    /* renamed from: a */
    public final void mo26175a(List<? extends C3344i> purchases) {
        BillingManager billingManager;
        C18524p.m3840d(purchases, "purchases");
        billingManager = this.f24713a.f24684d;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        this.f24713a.f24684d = null;
        Prefs.f26612hR.set(Boolean.TRUE);
        DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131887427), Activities.getString(2131887426), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                AndroidUtils.m27633a(BackupPlansActivity$restartAppWhenPremium$1.this.f24713a, Activities.getString(2131887415));
            }
        }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: a */
            public final void mo26209a(DialogPopup dialog) {
                C18524p.m3840d(dialog, "dialog");
                AndroidUtils.m27633a(BackupPlansActivity$restartAppWhenPremium$1.this.f24713a, Activities.getString(2131887415));
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: b */
            public final void mo26208b(DialogPopup dialog) {
                C18524p.m3840d(dialog, "dialog");
                AndroidUtils.m27633a(BackupPlansActivity$restartAppWhenPremium$1.this.f24713a, Activities.getString(2131887415));
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialog) {
                C18524p.m3840d(dialog, "dialog");
            }
        });
        dialogSimpleMessage.setCancelable(false);
        PopupManager.get().m28209a(this.f24713a, dialogSimpleMessage);
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    /* renamed from: b */
    public /* synthetic */ void mo26174b(List list) {
        BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
    }
}
