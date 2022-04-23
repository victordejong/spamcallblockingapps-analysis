package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkinBackground;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.asset.mappers.AssetListenerMapper;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.task.DoneCountNotifier;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.contacts.workers.TrackSuperSkinPremiumSubscriptionEndedWorker;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity.class */
public class SuperSkinDownloaderActivity extends BaseDownloaderActivity<JSONStoreItemSuperSkin> {
    private ImageView e;
    private ImageView f;
    private HorizontalPagerHeader g;

    /* renamed from: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4.class */
    class AnonymousClass4 implements DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemSuperSkin> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity$4$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1.class */
        public class AnonymousClass1 implements StoreItemAssetManager.AssetListener<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ProgressCardView f13224a;

            AnonymousClass1(ProgressCardView progressCardView) {
                this.f13224a = progressCardView;
            }

            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                final String str3 = str;
                SuperSkinDownloaderActivity superSkinDownloaderActivity = SuperSkinDownloaderActivity.this;
                final ProgressCardView progressCardView = this.f13224a;
                superSkinDownloaderActivity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$4$1$dx6lVEdVsKjNrIflcKyyJo6CtBo
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProgressCardView.this.setSuperSkinCardImage(str3);
                    }
                });
            }
        }

        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(ProgressCardView progressCardView, JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
            new AssetListenerMapper(new AnonymousClass1(progressCardView)).onAssetReady(jSONStoreItemSuperSkin.getCardUrl()[0], null);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final /* synthetic */ void a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin, final ProgressCardView progressCardView) {
            final JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
            progressCardView.g.setVisibility(0);
            progressCardView.g.findViewById(2131363583).setVisibility(0);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$4$K7Ow0gQAeq1TwN8mD1CQJb0Zcnk
                @Override // java.lang.Runnable
                public final void run() {
                    SuperSkinDownloaderActivity.AnonymousClass4.this.a(progressCardView, jSONStoreItemSuperSkin2);
                }
            });
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
            SuperSkinDownloaderActivity.this.o_();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void e() {
            FeedbackManager.get().a("Download button clicked", 80);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void f() {
            FeedbackManager.get().a("Download finished", 80);
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
            SuperSkinDownloaderActivity.this.o_();
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
            SuperSkinDownloaderActivity.this.o_();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isLightTheme() {
            return ((ThemeState) Prefs.di.get()).isLightTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isSkuInUse() {
            return StringUtils.b(Prefs.dN.get(), ((JSONStoreItemSuperSkin) SuperSkinDownloaderActivity.this.f13040a).getSku());
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ void j() {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
        }
    }

    public static Intent a(Activity activity, String str) {
        Intent intent = new Intent(activity, SuperSkinDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    public static void a(Activity activity, String str, Class cls) {
        Intent a2 = a(activity, str);
        a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        StoreUtils.a(this, SuperSkinMoreInfoActivity.a(view.getContext(), getIntent().getStringExtra("EXTRA_ITEM_ID")), 1, new View[]{this.e, null, this.f});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f, str, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        final String str = ((JSONStoreItemSuperSkin) this.f13040a).getWizardImageUrls()[0];
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$WRdVx7XfJ586ei7Bt32pPUUDvsU
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinDownloaderActivity.this.a(str);
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final /* synthetic */ JSONStoreItemSuperSkin a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getSuperSkin();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final void a(int i) {
        super.a(i);
        View findViewById = findViewById(2131362055);
        if (Build.VERSION.SDK_INT >= 21) {
            findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
            findViewById(2131363963).setVisibility(0);
            findViewById(2131363963).requestLayout();
            ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).topMargin = Activities.getStatusBarHeight();
            findViewById(2131362055).requestLayout();
        }
        this.f = (ImageView) findViewById(2131364037);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$qoI6UsFqVcjS5LHw6KpM6NdMsJw
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinDownloaderActivity.this.d();
            }
        });
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SuperSkinDownloaderActivity.this.onBackPressed();
                }
            });
        }
        if (this.f13040a != 0) {
            this.g = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] imageUrls = ((JSONStoreItemSuperSkin) this.f13040a).getImageUrls();
            if (imageUrls != null && imageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(imageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.ee.get().intValue() < 3) {
                            SuperSkinDownloaderActivity.this.g.f16811a.b();
                        }
                    }
                });
                for (String str : imageUrls) {
                    if (StringUtils.b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f13248a, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier, ImageView.ScaleType.CENTER_CROP));
                    }
                }
            }
            final ImageView imageView = (ImageView) findViewById(2131364034);
            final String str2 = ((JSONStoreItemSuperSkin) this.f13040a).getStoreFullPreviewImageUrls()[0];
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str2, SuperSkinDownloaderActivity.this);
                            glideRequestBuilder.q = true;
                            glideRequestBuilder.d();
                        }
                    });
                }
            });
            this.g.setData(arrayList);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new AnonymousClass4();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558471;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        if (Build.VERSION.SDK_INT >= 21) {
            return 0;
        }
        return ThemeUtils.getColor(2131099784);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        boolean z = false;
        if (i == 1) {
            z = false;
            if (i2 == -1) {
                z = false;
                if (intent != null) {
                    z = false;
                    if (intent.getBooleanExtra("EXTRA_IS_SUPER_SKIN_DOWNLOADED", false)) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            getCardView().a();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(1024);
        }
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.SUPER_SKIN_DOWNLOAD_ACTIVITY);
        showActionBar(false);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        this.e = (ImageView) findViewById(2131363000);
        findViewById(2131362169).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$PEt0pIIOJfXZOacrpBRBSCf0oCM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuperSkinDownloaderActivity.this.a(view);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.g;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f16811a.c();
        }
        super.onPause();
    }
}
