package com.callapp.contacts.api.helper.backup;

import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1.class */
public final class BackupPlansActivity$handleBilling$1 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ BackupPlansActivity f24706a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m4298d2 = {"com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;", "onBillingClientSetupFinished", "", "onPurchasesUpdated", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1.class */
    public static final class C71601 implements BillingManager.BillingUpdatesListener {
        C71601() {
            BackupPlansActivity$handleBilling$1.this = r4;
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26177a() {
            BillingManager billingManager;
            billingManager = BackupPlansActivity$handleBilling$1.this.f24706a.f24682b;
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
            ArrayList d = C18282n.m4165d("monthly_silver_2.00_no_ads", "backup_monthly");
            CatalogManager catalogManager = CatalogManager.get();
            billingManager = BackupPlansActivity$handleBilling$1.this.f24706a.f24682b;
            catalogManager.m29979a(billingManager, (List<C3344i>) purchases).m29956a(new BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1(this, d));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: b */
        public /* synthetic */ void mo26174b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    public BackupPlansActivity$handleBilling$1(BackupPlansActivity backupPlansActivity) {
        this.f24706a = backupPlansActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24706a.f24682b = new BillingManager(new C71601());
    }
}
