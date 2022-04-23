package com.callapp.contacts.api.helper.backup;

import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1.class */
final class BackupPlansActivity$handleBilling$1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BackupPlansActivity f14056a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, d2 = {"com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;", "onBillingClientSetupFinished", "", "onPurchasesUpdated", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1.class */
    public static final class AnonymousClass1 implements BillingManager.BillingUpdatesListener {
        AnonymousClass1() {
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a() {
            BillingManager billingManager;
            billingManager = BackupPlansActivity$handleBilling$1.this.f14056a.f14043b;
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
            ArrayList d2 = n.d("monthly_silver_2.00_no_ads", "backup_monthly");
            CatalogManager catalogManager = CatalogManager.get();
            billingManager = BackupPlansActivity$handleBilling$1.this.f14056a.f14043b;
            catalogManager.a(billingManager, (List<i>) purchases).a(new BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1(this, d2));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackupPlansActivity$handleBilling$1(BackupPlansActivity backupPlansActivity) {
        this.f14056a = backupPlansActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14056a.f14043b = new BillingManager(new AnonymousClass1());
    }
}
