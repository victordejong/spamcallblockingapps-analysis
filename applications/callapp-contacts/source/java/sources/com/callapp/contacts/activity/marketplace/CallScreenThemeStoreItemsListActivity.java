package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.StoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceCallScreenThemeAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.ItemCallScreenThemeViewHolder;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity.class */
public class CallScreenThemeStoreItemsListActivity extends StoreItemsListActivity<JSONStoreCallScreenThemeItem, ItemCallScreenThemeViewHolder> {

    /* renamed from: e */
    private boolean f23317e = true;

    /* renamed from: a */
    public /* synthetic */ void m30140a(final View view, View view2) {
        final ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.3f, 1.0f, 1.3f, view2.getWidth() / 2.0f, view2.getHeight() / 2.0f);
        final ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.3f, 1.0f, 1.3f, 1.0f, view2.getWidth() / 2.0f, view2.getHeight() / 2.0f);
        scaleAnimation.setDuration(2000L);
        scaleAnimation2.setDuration(2000L);
        view.setAnimation(scaleAnimation);
        scaleAnimation.start();
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setAnimation(scaleAnimation2);
                scaleAnimation2.start();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        scaleAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setAnimation(scaleAnimation);
                scaleAnimation.start();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    /* renamed from: a */
    protected final List<JSONStoreCallScreenThemeItem> mo30004a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvailableCallScreenThemes();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    /* renamed from: a */
    protected final void mo30046a(RecyclerView recyclerView, StoreItemsListActivity.StoreListItemClickEvent storeListItemClickEvent, List<JSONStoreCallScreenThemeItem> list) {
        recyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView.m40480a(new RecyclerView.AbstractC2636h() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
            /* renamed from: a */
            public final void mo29937a(Rect rect, View view, RecyclerView recyclerView2, RecyclerView.C2654s c2654s) {
                super.mo29937a(rect, view, recyclerView2, c2654s);
                int dimensionPixelOffset = view.getResources().getDimensionPixelOffset(2131165559);
                int dimensionPixelOffset2 = view.getResources().getDimensionPixelOffset(2131165552);
                int dimensionPixelOffset3 = view.getResources().getDimensionPixelOffset(2131165583);
                int m40447d = RecyclerView.m40447d(view) % 2;
                rect.left = m40447d == 0 ? dimensionPixelOffset : dimensionPixelOffset2;
                if (m40447d == 0) {
                    dimensionPixelOffset = dimensionPixelOffset2;
                }
                rect.right = dimensionPixelOffset;
                rect.bottom = dimensionPixelOffset3;
            }
        }, -1);
        recyclerView.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        recyclerView.setAdapter(new MarketPlaceCallScreenThemeAdapter(getLifecycle(), list, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.5
            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
            /* renamed from: a */
            public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                Intent intent;
                if (t.isCustomizable()) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Thumb clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", thumb - More screen");
                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                    intent = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(CallScreenThemeStoreItemsListActivity.this, t.getSku());
                } else {
                    intent = CallScreenThemeDownloaderActivity.m30147a(CallScreenThemeStoreItemsListActivity.this, t.getSku());
                }
                StoreUtils.m29953a(CallScreenThemeStoreItemsListActivity.this, intent, viewArr);
            }
        }, this.f23497d, 2131558794, true));
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558837;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected int getStoreItemType() {
        return 3;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected String getStoreTitle() {
        return Activities.getString(2131887133);
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().m28450a(Constants.STORE, "Call screen themes page");
        AnalyticsManager.get().m28450a(Constants.STORE, "Enter to call screen theme page");
        final View findViewById = findViewById(2131362625);
        ViewUtils.m27317a(findViewById, new ContextRunnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$CallScreenThemeStoreItemsListActivity$_Hy9JTau_maYt3F5SlPByxj6BN8
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                CallScreenThemeStoreItemsListActivity.this.m30140a(findViewById, (View) obj);
            }
        });
        ((RecyclerView) findViewById(2131363648)).m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10832a(RecyclerView recyclerView, int i, int i2) {
                super.mo10832a(recyclerView, i, i2);
                if (i2 <= 0 || !CallScreenThemeStoreItemsListActivity.this.f23317e) {
                    return;
                }
                CallScreenThemeStoreItemsListActivity.this.f23317e = false;
                findViewById.animate().alpha(BitmapDescriptorFactory.HUE_RED).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.3.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        findViewById.clearAnimation();
                    }
                }).setDuration(300L).start();
                recyclerView.m40459b(this);
            }
        });
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((ImageView) findViewById(2131362075), 2131230883, this);
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }
}
