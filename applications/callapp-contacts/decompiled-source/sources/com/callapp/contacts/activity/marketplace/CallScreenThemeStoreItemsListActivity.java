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
    private boolean e = true;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final View view, View view2) {
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
    protected final List<JSONStoreCallScreenThemeItem> a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvailableCallScreenThemes();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected final void a(RecyclerView recyclerView, StoreItemsListActivity.StoreListItemClickEvent storeListItemClickEvent, List<JSONStoreCallScreenThemeItem> list) {
        recyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView.a(new RecyclerView.h() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView.h
            public final void a(Rect rect, View view, RecyclerView recyclerView2, RecyclerView.s sVar) {
                super.a(rect, view, recyclerView2, sVar);
                int dimensionPixelOffset = view.getResources().getDimensionPixelOffset(2131165559);
                int dimensionPixelOffset2 = view.getResources().getDimensionPixelOffset(2131165552);
                int dimensionPixelOffset3 = view.getResources().getDimensionPixelOffset(2131165583);
                int d2 = RecyclerView.d(view) % 2;
                rect.left = d2 == 0 ? dimensionPixelOffset : dimensionPixelOffset2;
                if (d2 == 0) {
                    dimensionPixelOffset = dimensionPixelOffset2;
                }
                rect.right = dimensionPixelOffset;
                rect.bottom = dimensionPixelOffset3;
            }
        }, -1);
        recyclerView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
        recyclerView.setAdapter(new MarketPlaceCallScreenThemeAdapter(getLifecycle(), list, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.5
            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
            public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                Intent intent;
                if (t.isCustomizable()) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Thumb clicked", PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", thumb - More screen");
                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.n;
                    intent = PersonalCallScreenThemeDownloaderActivity.Companion.a(CallScreenThemeStoreItemsListActivity.this, t.getSku());
                } else {
                    intent = CallScreenThemeDownloaderActivity.a(CallScreenThemeStoreItemsListActivity.this, t.getSku());
                }
                StoreUtils.a(CallScreenThemeStoreItemsListActivity.this, intent, viewArr);
            }
        }, this.f13201d, 2131558794, true));
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
        AnalyticsManager.get().a(Constants.STORE, "Call screen themes page");
        AnalyticsManager.get().a(Constants.STORE, "Enter to call screen theme page");
        final View findViewById = findViewById(2131362625);
        ViewUtils.a(findViewById, new ContextRunnable() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$CallScreenThemeStoreItemsListActivity$_Hy9JTau_maYt3F5SlPByxj6BN8
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                CallScreenThemeStoreItemsListActivity.this.a(findViewById, (View) obj);
            }
        });
        ((RecyclerView) findViewById(2131363648)).a(new RecyclerView.m() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i, int i2) {
                super.a(recyclerView, i, i2);
                if (i2 > 0 && CallScreenThemeStoreItemsListActivity.this.e) {
                    CallScreenThemeStoreItemsListActivity.this.e = false;
                    findViewById.animate().alpha(BitmapDescriptorFactory.HUE_RED).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity.3.1
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            findViewById.clearAnimation();
                        }
                    }).setDuration(300L).start();
                    recyclerView.b(this);
                }
            }
        });
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((ImageView) findViewById(2131362075), 2131230883, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }
}
