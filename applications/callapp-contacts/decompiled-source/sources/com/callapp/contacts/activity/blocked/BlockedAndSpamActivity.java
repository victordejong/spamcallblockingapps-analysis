package com.callapp.contacts.activity.blocked;

import android.os.Bundle;
import androidx.fragment.app.q;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.InterstitialLoaderLifecycle;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.google.android.material.tabs.TabLayout;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAndSpamActivity.class */
public class BlockedAndSpamActivity extends BaseSwipeableActivity implements ThemeChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private InterstitialLoaderLifecycle f11230a;

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void a(String str) {
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void b() {
        d();
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void c() {
        a((AnimationListenerAdapter) null);
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public int getActivityTitleResource() {
        return 2131886357;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public String getAnalyticsCategory() {
        return Constants.BLOCK_AND_SPAM;
    }

    public q getViewPagerAdapter() {
        return new BlockedAndSpamPagerAdapter(this, getSupportFragmentManager());
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.c getViewPagerOnTabSelectedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11230a = new InterstitialLoaderLifecycle(this, AdUtils.b("SpamListInterstitialBidding", "SpamListInterstitialAdUnitId"), "SpamListInterstitialPreferences", new InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents(), InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents.f16074a);
        getLifecycle().addObserver(this.f11230a);
        AnalyticsManager.get().b(Constants.CALL_BLOCKER_SCREEN);
        a(getViewPagerAdapter());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getLifecycle().removeObserver(this.f11230a);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_BLOCKER_SCREEN);
        super.onDestroy();
    }
}
