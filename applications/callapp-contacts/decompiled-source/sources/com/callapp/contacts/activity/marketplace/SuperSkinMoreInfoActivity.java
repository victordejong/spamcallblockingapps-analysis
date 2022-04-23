package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.b;
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
    private HorizontalPagerHeader e;
    private boolean f;

    public static Intent a(Context context, String str) {
        Intent intent = new Intent(context, SuperSkinMoreInfoActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        intent.putExtra("ACTIVITY_SOURCE", Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final ImageView imageView) {
        final String str = ((JSONStoreItemSuperSkin) this.f13040a).getWizardImageUrls()[0];
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinMoreInfoActivity$jYYZYMDg4hebzdrV9XoVGw_GdV8
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinMoreInfoActivity.this.a(imageView, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ImageView imageView, String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final /* synthetic */ JSONStoreItemSuperSkin a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getSuperSkin();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public final void a(int i) {
        super.a(i);
        View findViewById = findViewById(2131362055);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SuperSkinMoreInfoActivity.this.onBackPressed();
                }
            });
        }
        if (this.f13040a != 0) {
            this.e = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] storePartialPreviewImageUrls = ((JSONStoreItemSuperSkin) this.f13040a).getStorePartialPreviewImageUrls();
            if (storePartialPreviewImageUrls != null && storePartialPreviewImageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(storePartialPreviewImageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.ef.get().intValue() < 3) {
                            SuperSkinMoreInfoActivity.this.e.f16811a.b();
                        }
                    }
                });
                for (String str : storePartialPreviewImageUrls) {
                    if (StringUtils.b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f13248a, ImageView.ScaleType.FIT_CENTER, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier));
                    }
                }
            }
            final ImageView imageView = (ImageView) findViewById(2131364037);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinMoreInfoActivity$n_G06bI9hAMVrbyYzBBhFf7sVxk
                @Override // java.lang.Runnable
                public final void run() {
                    SuperSkinMoreInfoActivity.this.a(imageView);
                }
            });
            this.e.setData(arrayList);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemSuperSkin>() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinMoreInfoActivity.3
            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ void a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin, ProgressCardView progressCardView) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemSuperSkin, progressCardView);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ boolean a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                return Prefs.cP.get().booleanValue() && c();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ void b(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                Prefs.ea.set(Boolean.TRUE);
                if (jSONStoreItemSuperSkin2.getDaysOfFreeSubscription() > 0) {
                    TrackSuperSkinPremiumSubscriptionEndedWorker.f17086a.a(jSONStoreItemSuperSkin2.getDaysOfFreeSubscription());
                }
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ boolean c() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ String[] c(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                ArrayList arrayList = new ArrayList();
                String[] imageUrls = jSONStoreItemSuperSkin2.getImageUrls();
                String[] overlayUrls = jSONStoreItemSuperSkin2.getOverlayUrls();
                String[] cardUrl = jSONStoreItemSuperSkin2.getCardUrl();
                String[] gifFileUrls = jSONStoreItemSuperSkin2.getGifFileUrls();
                if (CollectionUtils.b(imageUrls)) {
                    for (String str : imageUrls) {
                        arrayList.add(str);
                    }
                }
                if (CollectionUtils.b(overlayUrls)) {
                    for (String str2 : overlayUrls) {
                        arrayList.add(str2);
                    }
                }
                if (CollectionUtils.b(cardUrl)) {
                    for (String str3 : cardUrl) {
                        arrayList.add(str3);
                    }
                }
                if (CollectionUtils.b(gifFileUrls)) {
                    for (String str4 : gifFileUrls) {
                        arrayList.add(str4);
                    }
                }
                if (CollectionUtils.b(jSONStoreItemSuperSkin2.getListBackgroundUrls())) {
                    int length = jSONStoreItemSuperSkin2.getListBackgroundUrls().length * 2;
                    String[] strArr = new String[length];
                    for (int i = 0; i < length; i += 2) {
                        JSONStoreItemSuperSkinBackground[] listBackgroundUrls = jSONStoreItemSuperSkin2.getListBackgroundUrls();
                        int i2 = i / 2;
                        strArr[i] = listBackgroundUrls[i2].getLightBackground();
                        strArr[i + 1] = jSONStoreItemSuperSkin2.getListBackgroundUrls()[i2].getDarkBackground();
                    }
                    for (int i3 = 0; i3 < length; i3++) {
                        arrayList.add(strArr[i3]);
                    }
                }
                if (CollectionUtils.b(jSONStoreItemSuperSkin2.getTopBarBackgroundUrls())) {
                    int length2 = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls().length * 2;
                    String[] strArr2 = new String[length2];
                    for (int i4 = 0; i4 < length2; i4 += 2) {
                        JSONStoreItemSuperSkinBackground[] topBarBackgroundUrls = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls();
                        int i5 = i4 / 2;
                        strArr2[i4] = topBarBackgroundUrls[i5].getLightBackground();
                        strArr2[i4 + 1] = jSONStoreItemSuperSkin2.getTopBarBackgroundUrls()[i5].getDarkBackground();
                    }
                    for (int i6 = 0; i6 < length2; i6++) {
                        arrayList.add(strArr2[i6]);
                    }
                }
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ void d(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
                JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
                Prefs.dN.set(jSONStoreItemSuperSkin2.getSku());
                StoreUtils.setSuperSkin(jSONStoreItemSuperSkin2);
                SuperSkinMoreInfoActivity.this.o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void e() {
                FeedbackManager.get().a("Download button clicked", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void f() {
                FeedbackManager.get().a("Download finished", 80);
                SuperSkinMoreInfoActivity.this.f = true;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void g() {
                Prefs.dN.set(null);
                for (StringPref stringPref : Prefs.dT) {
                    stringPref.set(null);
                }
                for (int i = 0; i < Prefs.dq.length; i++) {
                    Prefs.dq[i].set(null);
                }
                Prefs.dK.set(null);
                Prefs.dH.set(null);
                Prefs.dG.set(null);
                Prefs.dL.set(null);
                Prefs.dM.set(null);
                Prefs.dZ.set(Boolean.FALSE);
                for (int i2 = 0; i2 < Prefs.dI.length; i2++) {
                    Prefs.dI[i2].set(null);
                }
                for (int i3 = 0; i3 < Prefs.dJ.length; i3++) {
                    Prefs.dJ[i3].set(null);
                }
                FeedbackManager.get().a(Activities.a(2131887637, Activities.getString(2131886673)), (Integer) null);
                SuperSkinMoreInfoActivity.this.o_();
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
            public final boolean h() {
                return Prefs.dN.get() != null;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void i() {
                SuperSkinMoreInfoActivity.this.o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isLightTheme() {
                return ((ThemeState) Prefs.di.get()).isLightTheme();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isSkuInUse() {
                return StringUtils.b(Prefs.dN.get(), ((JSONStoreItemSuperSkin) SuperSkinMoreInfoActivity.this.f13040a).getSku());
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ void j() {
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
        if (this.f) {
            Intent intent = new Intent();
            intent.putExtra("EXTRA_IS_SUPER_SKIN_DOWNLOADED", this.f);
            setResult(-1, intent);
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        setTitle(Activities.getString(2131887137));
        findViewById(2131362179).getBackground().mutate().setColorFilter(new PorterDuffColorFilter(b.c(this, 2131099915), PorterDuff.Mode.SRC_IN));
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SUPER_SKIN_MORE_INFO_ACTIVITY);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.e;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f16811a.c();
        }
        super.onPause();
    }
}
