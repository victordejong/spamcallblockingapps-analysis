package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
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
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CoverDownloaderActivity.class */
public class CoverDownloaderActivity extends BaseDownloaderActivity<JSONStoreItemCover> implements DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemCover> {

    /* renamed from: e */
    private HorizontalPagerHeader f23350e;

    /* renamed from: a */
    public static Intent m30129a(Activity activity, String str) {
        Intent intent = new Intent(activity, CoverDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static void m30128a(Activity activity, String str, String str2, Class cls) {
        Intent m30129a = m30129a(activity, str);
        m30129a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        m30129a.putExtra(Payload.SOURCE, str2);
        if (cls != null) {
            m30129a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(m30129a);
    }

    /* renamed from: a */
    public void m30125a(final CoverPreviewFragment coverPreviewFragment, final int i) {
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.4
            @Override // java.lang.Runnable
            public void run() {
                coverPreviewFragment.setCoverImageUrl(((JSONStoreItemCover) CoverDownloaderActivity.this.f23266a).getImageUrls()[i]);
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    protected final /* synthetic */ JSONStoreItemCover mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getCover();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public void mo30002a(int i) {
        super.mo30002a(i);
        FrameLayout frameLayout = (FrameLayout) findViewById(2131362055);
        View findViewById = findViewById(2131363963);
        if (Build.VERSION.SDK_INT >= 21) {
            if (findViewById != null) {
                findViewById.getLayoutParams().height = Activities.getStatusBarHeight();
                findViewById.setVisibility(0);
                findViewById.requestLayout();
            }
            if (frameLayout != null) {
                ((ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams()).topMargin = Activities.getStatusBarHeight();
                frameLayout.requestLayout();
            }
        }
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CoverDownloaderActivity.this.onBackPressed();
                }
            });
        }
        if (this.f23266a != 0) {
            this.f23350e = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] imageUrls = ((JSONStoreItemCover) this.f23266a).getImageUrls();
            if (imageUrls != null && imageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(imageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.f26466ee.get().intValue() < 3) {
                            CoverDownloaderActivity.this.f23350e.f29275a.m31113b();
                        }
                    }
                });
                for (String str : imageUrls) {
                    if (StringUtils.m26045b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f23569a, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier, ImageView.ScaleType.CENTER_CROP));
                    }
                }
            }
            final CoverPreviewFragment coverPreviewFragment = (CoverPreviewFragment) getSupportFragmentManager().m43719c(2131362498);
            if (coverPreviewFragment == null) {
                return;
            }
            m30125a(coverPreviewFragment, 0);
            this.f23350e.setData(arrayList);
            this.f23350e.setPageChangedListener(new DefaultInterfaceImplUtils.OnPageChangeListener() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.3
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.AbstractC2936e
                public void onPageSelected(int i2) {
                    CoverDownloaderActivity.this.m30125a(coverPreviewFragment, i2);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: a */
    public /* synthetic */ void mo30015a(JSONStoreItemCover jSONStoreItemCover, ProgressCardView progressCardView) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemCover, progressCardView);
    }

    /* renamed from: a */
    public void mo30011d(JSONStoreItemCover jSONStoreItemCover) {
        Prefs.f26396dN.set(jSONStoreItemCover.getSku());
        StoreUtils.setCoverUrls(jSONStoreItemCover);
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: a */
    public /* synthetic */ boolean mo30016a(JSONStoreItemCover jSONStoreItemCover) {
        boolean mo30013c;
        mo30013c = mo30013c();
        return mo30013c;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: b */
    public /* synthetic */ void mo30014b(JSONStoreItemCover jSONStoreItemCover) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItemCover);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: c */
    public /* synthetic */ boolean mo30013c() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: c */
    public final /* synthetic */ String[] mo30012c(JSONStoreItemCover jSONStoreItemCover) {
        JSONStoreItemCover jSONStoreItemCover2 = jSONStoreItemCover;
        String[] imageUrls = jSONStoreItemCover2.getImageUrls();
        String[] overlayUrls = jSONStoreItemCover2.getOverlayUrls();
        ArrayList<String> arrayList = new ArrayList();
        if (CollectionUtils.m26066b(imageUrls)) {
            arrayList.addAll(Arrays.asList(imageUrls));
        }
        if (CollectionUtils.m26066b(overlayUrls)) {
            arrayList.addAll(Arrays.asList(overlayUrls));
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : arrayList) {
            arrayList2.add(str);
        }
        return (String[]) arrayList2.toArray(new String[arrayList2.size()]);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: e */
    public void mo30010e() {
        FeedbackManager.get().m28670a("Download button clicked", 80);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: f */
    public void mo30009f() {
        FeedbackManager.get().m28670a("Download finished", 80);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: g */
    public void mo30008g() {
        Prefs.f26396dN.set(null);
        for (StringPref stringPref : Prefs.f26402dT) {
            stringPref.set(null);
        }
        for (int i = 0; i < Prefs.f26425dq.length; i++) {
            Prefs.f26425dq[i].set(null);
        }
        FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131886673)), (Integer) null);
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return this;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public int getItemType() {
        return DownloaderCardViewHandler.StoreItemType.COVER.ordinal();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558448;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ String getLeftButtonPrefixText() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public Promotion.ProductType getPromotionType() {
        return Promotion.ProductType.COVER;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ BooleanPref getPurchasePref() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getPurchasePref(this);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        if (Build.VERSION.SDK_INT >= 21) {
            return 0;
        }
        return ThemeUtils.getColor(2131099784);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: h */
    public boolean mo30007h() {
        return Prefs.f26396dN.get() != null;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: i */
    public final void mo30006i() {
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isLightTheme() {
        return ((ThemeState) Prefs.f26417di.get()).isLightTheme();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isSkuInUse() {
        return StringUtils.m26042b(Prefs.f26396dN.get(), ((JSONStoreItemCover) this.f23266a).getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: j */
    public /* synthetic */ void mo30005j() {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(1024);
        }
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.COVER_DOWNLOAD_ACTIVITY);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23269d = intent.getStringExtra(Payload.SOURCE);
            this.f23268c = intent.getStringExtra("EXTRA_ITEM_ID");
            AnalyticsManager.get().mo28444a(Constants.STORE, "Enter to cover page", this.f23268c, 0.0d, null, this.f23269d);
        }
        showActionBar(false);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().mo28444a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.COVER_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f23269d);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.f23350e;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f29275a.m31111c();
        }
        super.onPause();
    }
}
