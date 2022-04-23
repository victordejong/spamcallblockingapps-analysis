package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.content.DialogInterface;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, d2 = {"com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;", "onBillingClientSetupFinished", "", "onPurchasesUpdated", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1.class */
public final class BackupPlansActivity$restartAppWhenPremium$1 implements BillingManager.BillingUpdatesListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BackupPlansActivity f14063a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackupPlansActivity$restartAppWhenPremium$1(BackupPlansActivity backupPlansActivity) {
        this.f14063a = backupPlansActivity;
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    public final void a() {
        BillingManager billingManager;
        billingManager = this.f14063a.f14045d;
        if (billingManager != null) {
            billingManager.a();
        }
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    public /* synthetic */ void a(g gVar, List list) {
        BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    public final void a(List<? extends i> purchases) {
        BillingManager billingManager;
        p.d(purchases, "purchases");
        billingManager = this.f14063a.f14045d;
        if (billingManager != null) {
            billingManager.b();
        }
        this.f14063a.f14045d = null;
        Prefs.hR.set(Boolean.TRUE);
        DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131887427), Activities.getString(2131887426), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                AndroidUtils.a(BackupPlansActivity$restartAppWhenPremium$1.this.f14063a, Activities.getString(2131887415));
            }
        }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void a(DialogPopup dialog) {
                p.d(dialog, "dialog");
                AndroidUtils.a(BackupPlansActivity$restartAppWhenPremium$1.this.f14063a, Activities.getString(2131887415));
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void b(DialogPopup dialog) {
                p.d(dialog, "dialog");
                AndroidUtils.a(BackupPlansActivity$restartAppWhenPremium$1.this.f14063a, Activities.getString(2131887415));
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialog) {
                p.d(dialog, "dialog");
            }
        });
        dialogSimpleMessage.setCancelable(false);
        PopupManager.get().a(this.f14063a, dialogSimpleMessage);
    }

    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
    public /* synthetic */ void b(List list) {
        BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
    }
}
