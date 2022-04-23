package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.android.billingclient.api.k;
import com.android.billingclient.api.m;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "kotlin.jvm.PlatformType", "onDone"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1.class */
final class BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1 implements CatalogManager.OnCatalogAttributesLoaded {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BackupPlansActivity$handleBilling$1.AnonymousClass1 f14058a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ArrayList f14059b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\b0\u0005H\n¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Lcom/android/billingclient/api/BillingResult;", "skuDetailsList", "", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "", "onSkuDetailsResponse"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1.class */
    static final class AnonymousClass1 implements m {
        AnonymousClass1() {
        }

        @Override // com.android.billingclient.api.m
        public final void b(g gVar, List<k> list) {
            HashMap hashMap;
            p.d(gVar, "<anonymous parameter 0>");
            SimpleProgressDialog.a(BackupPlansActivity.b(BackupPlansActivity$handleBilling$1.this.f14056a));
            List<k> list2 = list;
            if (!(list2 == null || list2.isEmpty())) {
                for (final k details : list) {
                    hashMap = BackupPlansActivity$handleBilling$1.this.f14056a.f;
                    p.b(details, "details");
                    final TextView textView = (TextView) hashMap.get(details.a());
                    if (textView != null) {
                        BackupPlansActivity$handleBilling$1.this.f14056a.setButtonText(details);
                        ViewParent parent = textView.getParent();
                        Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                        final ViewGroup viewGroup = (ViewGroup) parent;
                        viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                viewGroup.setEnabled(false);
                                viewGroup.setClickable(false);
                                BackupPlansActivity$handleBilling$1.this.f14056a.f14044c = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1.1
                                    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                    public final void a() {
                                        BillingManager billingManager;
                                        billingManager = BackupPlansActivity$handleBilling$1.this.f14056a.f14044c;
                                        if (billingManager != null) {
                                            BackupPlansActivity backupPlansActivity = BackupPlansActivity$handleBilling$1.this.f14056a;
                                            k details2 = details;
                                            p.b(details2, "details");
                                            billingManager.a(backupPlansActivity, details2.a(), "subs");
                                        }
                                    }

                                    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                    public final void a(g gVar2, List<i> list3) {
                                        viewGroup.setEnabled(true);
                                        viewGroup.setClickable(true);
                                    }

                                    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                    public final void a(List<? extends i> purchases) {
                                        p.d(purchases, "purchases");
                                    }

                                    @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                    public final void b(List<? extends i> purchases) {
                                        p.d(purchases, "purchases");
                                        BackupPlansActivity.a(BackupPlansActivity$handleBilling$1.this.f14056a, purchases);
                                    }
                                });
                            }
                        });
                    }
                }
                return;
            }
            PopupManager.get().a(BackupPlansActivity$handleBilling$1.this.f14056a, new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131888108), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity.handleBilling.1.1.onPurchasesUpdated.1.1.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    BackupPlansActivity$handleBilling$1.this.f14056a.finish();
                }
            }, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1(BackupPlansActivity$handleBilling$1.AnonymousClass1 r4, ArrayList arrayList) {
        this.f14058a = r4;
        this.f14059b = arrayList;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
    public final /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
        BillingManager billingManager;
        billingManager = BackupPlansActivity$handleBilling$1.this.f14056a.f14043b;
        if (billingManager != null) {
            billingManager.a("subs", this.f14059b, new AnonymousClass1());
        }
    }
}
