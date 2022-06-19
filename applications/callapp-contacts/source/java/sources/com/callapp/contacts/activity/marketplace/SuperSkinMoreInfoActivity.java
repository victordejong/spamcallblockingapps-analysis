package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkinBackground;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.task.DoneCountNotifier;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.contacts.workers.TrackSuperSkinPremiumSubscriptionEndedWorker;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity.class */
public class SuperSkinMoreInfoActivity extends BaseDownloaderActivity<JSONStoreItemSuperSkin> {

    /* renamed from: e */
    private HorizontalPagerHeader f23528e;

    /* renamed from: f */
    private boolean f23529f;

    /* renamed from: a */
    public static Intent m30029a(Context context, String str) {
        Intent intent = new Intent(context, SuperSkinMoreInfoActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        intent.putExtra("ACTIVITY_SOURCE", Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        return intent;
    }

    /* renamed from: a */
    public /* synthetic */ void m30028a(final ImageView imageView) {
        final String str = ((JSONStoreItemSuperSkin) this.f23266a).getWizardImageUrls()[0];
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinMoreInfoActivity$jYYZYMDg4hebzdrV9XoVGw_GdV8
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinMoreInfoActivity.this.m30027a(imageView, str);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m30027a(ImageView imageView, String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, this);
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    protected final /* synthetic */ JSONStoreItemSuperSkin mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getSuperSkin();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        super.mo30002a(i);
        View findViewById = findViewById(2131362055);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SuperSkinMoreInfoActivity.this.onBackPressed();
                }
            });
        }
        if (this.f23266a != 0) {
            this.f23528e = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] storePartialPreviewImageUrls = ((JSONStoreItemSuperSkin) this.f23266a).getStorePartialPreviewImageUrls();
            if (storePartialPreviewImageUrls != null && storePartialPreviewImageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(storePartialPreviewImageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.f26467ef.get().intValue() < 3) {
                            SuperSkinMoreInfoActivity.this.f23528e.f29275a.m31113b();
                        }
                    }
                });
                for (String str : storePartialPreviewImageUrls) {
                    if (StringUtils.m26045b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f23569a, ImageView.ScaleType.FIT_CENTER, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier));
                    }
                }
            }
            final ImageView imageView = (ImageView) findViewById(2131364037);
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinMoreInfoActivity$n_G06bI9hAMVrbyYzBBhFf7sVxk
                @Override // java.lang.Runnable
                public final void run() {
                    SuperSkinMoreInfoActivity.this.m30028a(imageView);
                }
            });
            this.f23528e.setData(arrayList);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemSuperSkin>() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.3
            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: a */
            public /* synthetic */ void mo30015a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin, ProgressCardView progressCardView) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemSuperSkin, progressCardView);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: a */
            public final /* synthetic */ boolean mo30016a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                return Prefs.f26345cP.get().booleanValue() && mo30013c();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: b */
            public final /* synthetic */ void mo30014b(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                Prefs.f26462ea.set(Boolean.TRUE);
                if (jSONStoreItemSuperSkin2.getDaysOfFreeSubscription() > 0) {
                    TrackSuperSkinPremiumSubscriptionEndedWorker.f29643a.m26115a(jSONStoreItemSuperSkin2.getDaysOfFreeSubscription());
                }
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: c */
            public /* synthetic */ boolean mo30013c() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: c */
            public final /* synthetic */ String[] mo30012c(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                int i;
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                ArrayList arrayList = new ArrayList();
                String[] imageUrls = jSONStoreItemSuperSkin2.getImageUrls();
                String[] overlayUrls = jSONStoreItemSuperSkin2.getOverlayUrls();
                String[] cardUrl = jSONStoreItemSuperSkin2.getCardUrl();
                String[] gifFileUrls = jSONStoreItemSuperSkin2.getGifFileUrls();
                if (CollectionUtils.m26066b(imageUrls)) {
                    for (String str : imageUrls) {
                        arrayList.add(str);
                    }
                }
                if (CollectionUtils.m26066b(overlayUrls)) {
                    for (String str2 : overlayUrls) {
                        arrayList.add(str2);
                    }
                }
                if (CollectionUtils.m26066b(cardUrl)) {
                    for (String str3 : cardUrl) {
                        arrayList.add(str3);
                    }
                }
                if (CollectionUtils.m26066b(gifFileUrls)) {
                    for (String str4 : gifFileUrls) {
                        arrayList.add(str4);
                    }
                }
                if (CollectionUtils.m26066b(jSONStoreItemSuperSkin2.getListBackgroundUrls())) {
                    int length = jSONStoreItemSuperSkin2.getListBackgroundUrls().length * 2;
                    String[] strArr = new String[length];
                    for (int i2 = 0; i2 < length; i2 += 2) {
                        JSONStoreItemSuperSkinBackground[] listBackgroundUrls = jSONStoreItemSuperSkin2.getListBackgroundUrls();
                        int i3 = i2 / 2;
                        strArr[i2] = listBackgroundUrls[i3].getLightBackground();
                        strArr[i2 + 1] = jSONStoreItemSuperSkin2.getListBackgroundUrls()[i3].getDarkBackground();
                    }
                    for (int i4 = 0; i4 < length; i4++) {
                        arrayList.add(strArr[i4]);
                    }
                }
                if (CollectionUtils.m26066b(jSONStoreItemSuperSkin2.getTopBarBackgroundUrls())) {
                    int length2 = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls().length * 2;
                    String[] strArr2 = new String[length2];
                    int i5 = 0;
                    while (true) {
                        if (i5 < length2) {
                            JSONStoreItemSuperSkinBackground[] topBarBackgroundUrls = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls();
                            int i6 = i5 / 2;
                            strArr2[i5] = topBarBackgroundUrls[i6].getLightBackground();
                            strArr2[i5 + 1] = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls()[i6].getDarkBackground();
                            i5 += 2;
                        }
                    }
                    for (i = 0; i < length2; i++) {
                        arrayList.add(strArr2[i]);
                    }
                }
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: d */
            public final /* synthetic */ void mo30011d(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                Prefs.f26396dN.set(jSONStoreItemSuperSkin2.getSku());
                StoreUtils.setSuperSkin(jSONStoreItemSuperSkin2);
                SuperSkinMoreInfoActivity.this.m30153o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: e */
            public final void mo30010e() {
                FeedbackManager.get().m28670a("Download button clicked", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: f */
            public final void mo30009f() {
                FeedbackManager.get().m28670a("Download finished", 80);
                SuperSkinMoreInfoActivity.this.f23529f = true;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: g */
            public final void mo30008g() {
                Prefs.f26396dN.set(null);
                for (StringPref stringPref : Prefs.f26402dT) {
                    stringPref.set(null);
                }
                for (int i = 0; i < Prefs.f26425dq.length; i++) {
                    Prefs.f26425dq[i].set(null);
                }
                Prefs.f26393dK.set(null);
                Prefs.f26390dH.set(null);
                Prefs.f26389dG.set(null);
                Prefs.f26394dL.set(null);
                Prefs.f26395dM.set(null);
                Prefs.f26408dZ.set(Boolean.FALSE);
                for (int i2 = 0; i2 < Prefs.f26391dI.length; i2++) {
                    Prefs.f26391dI[i2].set(null);
                }
                for (int i3 = 0; i3 < Prefs.f26392dJ.length; i3++) {
                    Prefs.f26392dJ[i3].set(null);
                }
                FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131886673)), (Integer) null);
                SuperSkinMoreInfoActivity.this.m30153o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ int getItemType() {
                int ordinal;
                ordinal = DownloaderCardViewHandler.StoreItemType.OTHER.ordinal();
                return ordinal;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ String getLeftButtonPrefixText() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public Promotion.ProductType getPromotionType() {
                return Promotion.ProductType.SUPER_SKIN;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ BooleanPref getPurchasePref() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getPurchasePref(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: h */
            public final boolean mo30007h() {
                return Prefs.f26396dN.get() != null;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: i */
            public final void mo30006i() {
                SuperSkinMoreInfoActivity.this.m30153o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isLightTheme() {
                return ((ThemeState) Prefs.f26417di.get()).isLightTheme();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isSkuInUse() {
                return StringUtils.m26042b(Prefs.f26396dN.get(), ((JSONStoreItemSuperSkin) SuperSkinMoreInfoActivity.this.f23266a).getSku());
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: j */
            public /* synthetic */ void mo30005j() {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
            }
        };
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558470;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f23529f) {
            Intent intent = new Intent();
            intent.putExtra("EXTRA_IS_SUPER_SKIN_DOWNLOADED", this.f23529f);
            setResult(-1, intent);
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        setTitle(Activities.getString(2131887137));
        findViewById(2131362179).getBackground().mutate().setColorFilter(new PorterDuffColorFilter(C0790b.m44492c(this, 2131099915), PorterDuff.Mode.SRC_IN));
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.f23528e;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f29275a.m31111c();
        }
        super.onPause();
    }
}
