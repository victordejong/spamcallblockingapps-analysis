package com.callapp.contacts.activity.marketplace.bundle;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.billingclient.api.g;
import com.android.billingclient.api.k;
import com.android.billingclient.api.m;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\b0\u0005H\n¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "skuDetailsList", "", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "", "onSkuDetailsResponse"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1.class */
final class VideoRingtoneBundleActivity$onItemStoreAvailable$1 implements m {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ VideoRingtoneBundleActivity f13239a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoRingtoneBundleActivity$onItemStoreAvailable$1(VideoRingtoneBundleActivity videoRingtoneBundleActivity) {
        this.f13239a = videoRingtoneBundleActivity;
    }

    @Override // com.android.billingclient.api.m
    public final void b(g billingResult, final List<k> list) {
        p.d(billingResult, "billingResult");
        if (billingResult.f6986a == 0) {
            List<k> list2 = list;
            if (!(list2 == null || list2.isEmpty())) {
                JSONStoreCallScreenThemeItem storeItem = VideoRingtoneBundleActivity.a(this.f13239a);
                p.b(storeItem, "storeItem");
                if (storeItem.isPurchased()) {
                    RelativeLayout relativeLayout = this.f13239a.getBinding().f14273a;
                    p.b(relativeLayout, "binding.bundleSkuContainer");
                    relativeLayout.setVisibility(8);
                    LinearLayout linearLayout = this.f13239a.getBinding().f14276d;
                    p.b(linearLayout, "binding.enjoyBundleButton");
                    linearLayout.setVisibility(0);
                    TextView textView = this.f13239a.getBinding().f;
                    textView.setText(Activities.getString(2131886823));
                    textView.setTextColor(ThemeUtils.getColor(2131099784));
                    TextView textView2 = this.f13239a.getBinding().e;
                    textView2.setText(Activities.getText(2131887082));
                    textView2.setTextColor(ThemeUtils.getColor(2131100140));
                    return;
                }
                RelativeLayout relativeLayout2 = this.f13239a.getBinding().f14273a;
                p.b(relativeLayout2, "binding.bundleSkuContainer");
                relativeLayout2.setVisibility(0);
                TextView textView3 = this.f13239a.getBinding().f14274b;
                VideoRingtoneBundleActivity videoRingtoneBundleActivity = this.f13239a;
                k kVar = list.get(0);
                p.b(kVar, "skuDetailsList[0]");
                p.b(textView3, "this");
                textView3.setText(VideoRingtoneBundleActivity.a(videoRingtoneBundleActivity, kVar, textView3));
                textView3.setLineSpacing(textView3.getResources().getDimension(2131165572), 1.0f);
                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BillingManager billingManager;
                        billingManager = VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f13239a.f13041b;
                        VideoRingtoneBundleActivity videoRingtoneBundleActivity2 = VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f13239a;
                        JSONStoreCallScreenThemeItem storeItem2 = VideoRingtoneBundleActivity.a(VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f13239a);
                        p.b(storeItem2, "storeItem");
                        billingManager.a(videoRingtoneBundleActivity2, storeItem2.getSku(), "inapp");
                    }
                });
                return;
            }
        }
        FeedbackManager.get().a(Activities.getString(2131887286));
        this.f13239a.finish();
    }
}
