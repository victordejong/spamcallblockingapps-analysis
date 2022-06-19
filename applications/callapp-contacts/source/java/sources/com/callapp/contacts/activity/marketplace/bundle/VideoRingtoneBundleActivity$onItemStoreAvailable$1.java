package com.callapp.contacts.activity.marketplace.bundle;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3347k;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\b0\u0005H\n¢\u0006\u0002\b\t"}, m4298d2 = {"<anonymous>", "", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "skuDetailsList", "", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "", "onSkuDetailsResponse"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1.class */
public final class VideoRingtoneBundleActivity$onItemStoreAvailable$1 implements AbstractC3350m {

    /* renamed from: a */
    final /* synthetic */ VideoRingtoneBundleActivity f23552a;

    public VideoRingtoneBundleActivity$onItemStoreAvailable$1(VideoRingtoneBundleActivity videoRingtoneBundleActivity) {
        this.f23552a = videoRingtoneBundleActivity;
    }

    @Override // com.android.billingclient.api.AbstractC3350m
    /* renamed from: b */
    public final void mo28284b(C3341g billingResult, final List<C3347k> list) {
        C18524p.m3840d(billingResult, "billingResult");
        if (billingResult.f12609a == 0) {
            List<C3347k> list2 = list;
            if (!(list2 == null || list2.isEmpty())) {
                JSONStoreCallScreenThemeItem storeItem = VideoRingtoneBundleActivity.m30001a(this.f23552a);
                C18524p.m3843b(storeItem, "storeItem");
                if (!storeItem.isPurchased()) {
                    RelativeLayout relativeLayout = this.f23552a.getBinding().f24945a;
                    C18524p.m3843b(relativeLayout, "binding.bundleSkuContainer");
                    relativeLayout.setVisibility(0);
                    TextView textView = this.f23552a.getBinding().f24946b;
                    VideoRingtoneBundleActivity videoRingtoneBundleActivity = this.f23552a;
                    C3347k c3347k = list.get(0);
                    C18524p.m3843b(c3347k, "skuDetailsList[0]");
                    C18524p.m3843b(textView, "this");
                    textView.setText(VideoRingtoneBundleActivity.m30000a(videoRingtoneBundleActivity, c3347k, textView));
                    textView.setLineSpacing(textView.getResources().getDimension(2131165572), 1.0f);
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BillingManager billingManager;
                            billingManager = VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f23552a.f23267b;
                            VideoRingtoneBundleActivity videoRingtoneBundleActivity2 = VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f23552a;
                            JSONStoreCallScreenThemeItem storeItem2 = VideoRingtoneBundleActivity.m30001a(VideoRingtoneBundleActivity$onItemStoreAvailable$1.this.f23552a);
                            C18524p.m3843b(storeItem2, "storeItem");
                            billingManager.m28297a(videoRingtoneBundleActivity2, storeItem2.getSku(), "inapp");
                        }
                    });
                    return;
                }
                RelativeLayout relativeLayout2 = this.f23552a.getBinding().f24945a;
                C18524p.m3843b(relativeLayout2, "binding.bundleSkuContainer");
                relativeLayout2.setVisibility(8);
                LinearLayout linearLayout = this.f23552a.getBinding().f24948d;
                C18524p.m3843b(linearLayout, "binding.enjoyBundleButton");
                linearLayout.setVisibility(0);
                TextView textView2 = this.f23552a.getBinding().f24950f;
                textView2.setText(Activities.getString(2131886823));
                textView2.setTextColor(ThemeUtils.getColor(2131099784));
                TextView textView3 = this.f23552a.getBinding().f24949e;
                textView3.setText(Activities.getText(2131887082));
                textView3.setTextColor(ThemeUtils.getColor(2131100140));
                return;
            }
        }
        FeedbackManager.get().m28671a(Activities.getString(2131887286));
        this.f23552a.finish();
    }
}
