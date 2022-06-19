package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
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
import kotlin.jvm.internal.C18524p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "kotlin.jvm.PlatformType", "onDone"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1.class */
public final class BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1 implements CatalogManager.OnCatalogAttributesLoaded {

    /* renamed from: a */
    final /* synthetic */ BackupPlansActivity$handleBilling$1.C71601 f24708a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f24709b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\b0\u0005H\n¢\u0006\u0002\b\t"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Lcom/android/billingclient/api/BillingResult;", "skuDetailsList", "", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "", "onSkuDetailsResponse"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1.class */
    public static final class C71611 implements AbstractC3350m {
        C71611() {
            BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1.this = r4;
        }

        @Override // com.android.billingclient.api.AbstractC3350m
        /* renamed from: b */
        public final void mo28284b(C3341g c3341g, List<C3347k> list) {
            HashMap hashMap;
            C18524p.m3840d(c3341g, "<anonymous parameter 0>");
            SimpleProgressDialog.m27939a(BackupPlansActivity.m29316b(BackupPlansActivity$handleBilling$1.this.f24706a));
            List<C3347k> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                PopupManager.get().m28209a(BackupPlansActivity$handleBilling$1.this.f24706a, new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131888108), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity.handleBilling.1.1.onPurchasesUpdated.1.1.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        BackupPlansActivity$handleBilling$1.this.f24706a.finish();
                    }
                }, null));
                return;
            }
            for (final C3347k details : list) {
                hashMap = BackupPlansActivity$handleBilling$1.this.f24706a.f24686f;
                C18524p.m3843b(details, "details");
                final TextView textView = (TextView) hashMap.get(details.m38184a());
                if (textView != null) {
                    BackupPlansActivity$handleBilling$1.this.f24706a.setButtonText(details);
                    ViewParent parent = textView.getParent();
                    Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    final ViewGroup viewGroup = (ViewGroup) parent;
                    viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            viewGroup.setEnabled(false);
                            viewGroup.setClickable(false);
                            BackupPlansActivity$handleBilling$1.this.f24706a.f24683c = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1.1
                                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                /* renamed from: a */
                                public final void mo26177a() {
                                    BillingManager billingManager;
                                    billingManager = BackupPlansActivity$handleBilling$1.this.f24706a.f24683c;
                                    if (billingManager != null) {
                                        BackupPlansActivity backupPlansActivity = BackupPlansActivity$handleBilling$1.this.f24706a;
                                        C3347k details2 = details;
                                        C18524p.m3843b(details2, "details");
                                        billingManager.m28297a(backupPlansActivity, details2.m38184a(), "subs");
                                    }
                                }

                                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                /* renamed from: a */
                                public final void mo26176a(C3341g c3341g2, List<C3344i> list3) {
                                    viewGroup.setEnabled(true);
                                    viewGroup.setClickable(true);
                                }

                                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                /* renamed from: a */
                                public final void mo26175a(List<? extends C3344i> purchases) {
                                    C18524p.m3840d(purchases, "purchases");
                                }

                                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                /* renamed from: b */
                                public final void mo26174b(List<? extends C3344i> purchases) {
                                    C18524p.m3840d(purchases, "purchases");
                                    BackupPlansActivity.m29317a(BackupPlansActivity$handleBilling$1.this.f24706a, purchases);
                                }
                            });
                        }
                    });
                }
            }
        }
    }

    public BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1(BackupPlansActivity$handleBilling$1.C71601 c71601, ArrayList arrayList) {
        this.f24708a = c71601;
        this.f24709b = arrayList;
    }

    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
    public final /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
        BillingManager billingManager;
        billingManager = BackupPlansActivity$handleBilling$1.this.f24706a.f24682b;
        if (billingManager != null) {
            billingManager.m28292a("subs", this.f24709b, new C71611());
        }
    }
}
