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
    private HorizontalPagerHeader e;

    public static Intent a(Activity activity, String str) {
        Intent intent = new Intent(activity, CoverDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    public static void a(Activity activity, String str, String str2, Class cls) {
        Intent a2 = a(activity, str);
        a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        a2.putExtra(Payload.SOURCE, str2);
        if (cls != null) {
            a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final CoverPreviewFragment coverPreviewFragment, final int i) {
        CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.4
            @Override // java.lang.Runnable
            public void run() {
                coverPreviewFragment.setCoverImageUrl(((JSONStoreItemCover) CoverDownloaderActivity.this.f13040a).getImageUrls()[i]);
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final /* synthetic */ JSONStoreItemCover a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getCover();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public void a(int i) {
        super.a(i);
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
        if (this.f13040a != 0) {
            this.e = (HorizontalPagerHeader) findViewById(2131362981);
            ArrayList<HorizontalPagerHeader.SinglePageData> arrayList = new ArrayList<>();
            String[] imageUrls = ((JSONStoreItemCover) this.f13040a).getImageUrls();
            if (imageUrls != null && imageUrls.length > 0) {
                DoneCountNotifier doneCountNotifier = new DoneCountNotifier(imageUrls.length, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.2
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        if (Prefs.ee.get().intValue() < 3) {
                            CoverDownloaderActivity.this.e.f16811a.b();
                        }
                    }
                });
                for (String str : imageUrls) {
                    if (StringUtils.b((CharSequence) str)) {
                        arrayList.add(new HorizontalPagerHeader.SinglePageData((String) null, (String) null, (String) null, str, CatalogManager.f13248a, (DefaultInterfaceImplUtils.ClickListener) null, doneCountNotifier, ImageView.ScaleType.CENTER_CROP));
                    }
                }
            }
            final CoverPreviewFragment coverPreviewFragment = (CoverPreviewFragment) getSupportFragmentManager().c(2131362498);
            if (coverPreviewFragment != null) {
                a(coverPreviewFragment, 0);
                this.e.setData(arrayList);
                this.e.setPageChangedListener(new DefaultInterfaceImplUtils.OnPageChangeListener() { // from class: com.callapp.contacts.activity.marketplace.CoverDownloaderActivity.3
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.e
                    public void onPageSelected(int i2) {
                        CoverDownloaderActivity.this.a(coverPreviewFragment, i2);
                    }
                });
            }
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ void a(JSONStoreItemCover jSONStoreItemCover, ProgressCardView progressCardView) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemCover, progressCardView);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void d(JSONStoreItemCover jSONStoreItemCover) {
        Prefs.dN.set(jSONStoreItemCover.getSku());
        StoreUtils.setCoverUrls(jSONStoreItemCover);
        o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ boolean a(JSONStoreItemCover jSONStoreItemCover) {
        boolean c2;
        c2 = c();
        return c2;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ void b(JSONStoreItemCover jSONStoreItemCover) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItemCover);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ boolean c() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final /* synthetic */ String[] c(JSONStoreItemCover jSONStoreItemCover) {
        JSONStoreItemCover jSONStoreItemCover2 = jSONStoreItemCover;
        String[] imageUrls = jSONStoreItemCover2.getImageUrls();
        String[] overlayUrls = jSONStoreItemCover2.getOverlayUrls();
        ArrayList<String> arrayList = new ArrayList();
        if (CollectionUtils.b(imageUrls)) {
            arrayList.addAll(Arrays.asList(imageUrls));
        }
        if (CollectionUtils.b(overlayUrls)) {
            arrayList.addAll(Arrays.asList(overlayUrls));
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : arrayList) {
            arrayList2.add(str);
        }
        return (String[]) arrayList2.toArray(new String[arrayList2.size()]);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void e() {
        FeedbackManager.get().a("Download button clicked", 80);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void f() {
        FeedbackManager.get().a("Download finished", 80);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public void g() {
        Prefs.dN.set(null);
        for (StringPref stringPref : Prefs.dT) {
            stringPref.set(null);
        }
        for (int i = 0; i < Prefs.dq.length; i++) {
            Prefs.dq[i].set(null);
        }
        FeedbackManager.get().a(Activities.a(2131887637, Activities.getString(2131886673)), (Integer) null);
        o_();
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
    public boolean h() {
        return Prefs.dN.get() != null;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final void i() {
        o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isLightTheme() {
        return ((ThemeState) Prefs.di.get()).isLightTheme();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isSkuInUse() {
        return StringUtils.b(Prefs.dN.get(), ((JSONStoreItemCover) this.f13040a).getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ void j() {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(1024);
        }
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.COVER_DOWNLOAD_ACTIVITY);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.f13043d = intent.getStringExtra(Payload.SOURCE);
            this.f13042c = intent.getStringExtra("EXTRA_ITEM_ID");
            AnalyticsManager.get().a(Constants.STORE, "Enter to cover page", this.f13042c, 0.0d, null, this.f13043d);
        }
        showActionBar(false);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.COVER_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f13043d);
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
