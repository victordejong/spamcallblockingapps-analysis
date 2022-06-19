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

    /* renamed from: e */
    private ImageView f23516e;

    /* renamed from: f */
    private ImageView f23517f;

    /* renamed from: g */
    private HorizontalPagerHeader f23518g;

    /* renamed from: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4.class */
    public class C67574 implements DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemSuperSkin> {

        /* renamed from: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity$4$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1.class */
        public class C67581 implements StoreItemAssetManager.AssetListener<String> {

            /* renamed from: a */
            final /* synthetic */ ProgressCardView f23526a;

            C67581(ProgressCardView progressCardView) {
                C67574.this = r4;
                this.f23526a = progressCardView;
            }

            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                final String str3 = str;
                SuperSkinDownloaderActivity superSkinDownloaderActivity = SuperSkinDownloaderActivity.this;
                final ProgressCardView progressCardView = this.f23526a;
                superSkinDownloaderActivity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$4$1$dx6lVEdVsKjNrIflcKyyJo6CtBo
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProgressCardView.this.setSuperSkinCardImage(str3);
                    }
                });
            }
        }

        C67574() {
            SuperSkinDownloaderActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30031a(ProgressCardView progressCardView, JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
            new AssetListenerMapper(new C67581(progressCardView)).onAssetReady(jSONStoreItemSuperSkin.getCardUrl()[0], null);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: a */
        public final /* synthetic */ void mo30015a(JSONStoreItemSuperSkin jSONStoreItemSuperSkin, final ProgressCardView progressCardView) {
            final JSONStoreItemSuperSkin jSONStoreItemSuperSkin2 = jSONStoreItemSuperSkin;
            progressCardView.f28819g.setVisibility(0);
            progressCardView.f28819g.findViewById(2131363583).setVisibility(0);
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$4$K7Ow0gQAeq1TwN8mD1CQJb0Zcnk
                @Override // java.lang.Runnable
                public final void run() {
                    SuperSkinDownloaderActivity.C67574.this.m30031a(progressCardView, jSONStoreItemSuperSkin2);
                }
            });
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
            SuperSkinDownloaderActivity.this.m30153o_();
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
            SuperSkinDownloaderActivity.this.m30153o_();
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
            SuperSkinDownloaderActivity.this.m30153o_();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isLightTheme() {
            return ((ThemeState) Prefs.f26417di.get()).isLightTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isSkuInUse() {
            return StringUtils.m26042b(Prefs.f26396dN.get(), ((JSONStoreItemSuperSkin) SuperSkinDownloaderActivity.this.f23266a).getSku());
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: j */
        public /* synthetic */ void mo30005j() {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
        }
    }

    /* renamed from: a */
    public static Intent m30037a(Activity activity, String str) {
        Intent intent = new Intent(activity, SuperSkinDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static void m30036a(Activity activity, String str, Class cls) {
        Intent m30037a = m30037a(activity, str);
        m30037a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            m30037a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(m30037a);
    }

    /* renamed from: a */
    public /* synthetic */ void m30035a(View view) {
        StoreUtils.m29954a(this, SuperSkinMoreInfoActivity.m30029a(view.getContext(), getIntent().getStringExtra("EXTRA_ITEM_ID")), 1, new View[]{this.f23516e, null, this.f23517f});
    }

    /* renamed from: a */
    public /* synthetic */ void m30033a(String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23517f, str, this);
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }

    /* renamed from: d */
    public /* synthetic */ void m30032d() {
        final String str = ((JSONStoreItemSuperSkin) this.f23266a).getWizardImageUrls()[0];
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$WRdVx7XfJ586ei7Bt32pPUUDvsU
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinDownloaderActivity.this.m30033a(str);
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    protected final /* synthetic */ JSONStoreItemSuperSkin mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getSuperSkin();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        super.mo30002a(i);
        View findViewById = findViewById(2131362055);
        if (Build.VERSION.SDK_INT >= 21) {
            findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
            findViewById(2131363963).setVisibility(0);
            findViewById(2131363963).requestLayout();
            ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).topMargin = Activities.getStatusBarHeight();
            findViewById(2131362055).requestLayout();
        }
        this.f23517f = (ImageView) findViewById(2131364037);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$qoI6UsFqVcjS5LHw6KpM6NdMsJw
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinDownloaderActivity.this.m30032d();
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
        if (this.f23266a != 0) {
            this.f23518g = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] imageUrls = ((JSONStoreItemSuperSkin) this.f23266a).getImageUrls();
            if (imageUrls != null && imageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(imageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.f26466ee.get().intValue() < 3) {
                            SuperSkinDownloaderActivity.this.f23518g.f29275a.m31113b();
                        }
                    }
                });
                for (String str : imageUrls) {
                    if (StringUtils.m26045b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f23569a, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier, ImageView.ScaleType.CENTER_CROP));
                    }
                }
            }
            final ImageView imageView = (ImageView) findViewById(2131364034);
            final String str2 = ((JSONStoreItemSuperSkin) this.f23266a).getStoreFullPreviewImageUrls()[0];
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.SuperSkinDownloaderActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str2, SuperSkinDownloaderActivity.this);
                            glideRequestBuilder.f28251q = true;
                            glideRequestBuilder.m27013d();
                        }
                    });
                }
            });
            this.f23518g.setData(arrayList);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new C67574();
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
            getCardView().m30120a();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(1024);
        }
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.SUPER_SKIN_DOWNLOAD_ACTIVITY);
        showActionBar(false);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        this.f23516e = (ImageView) findViewById(2131363000);
        findViewById(2131362169).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$SuperSkinDownloaderActivity$PEt0pIIOJfXZOacrpBRBSCf0oCM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SuperSkinDownloaderActivity.this.m30035a(view);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.f23518g;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f29275a.m31111c();
        }
        super.onPause();
    }
}
