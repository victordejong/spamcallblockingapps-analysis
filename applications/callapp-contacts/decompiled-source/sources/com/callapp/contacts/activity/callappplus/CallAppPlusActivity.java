package com.callapp.contacts.activity.callappplus;

import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.q;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity;
import com.callapp.contacts.activity.callappplus.CallappPlusFilterAdapter;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.CallAppFilter;
import com.callapp.contacts.activity.interfaces.CallAppPlusFilter;
import com.callapp.contacts.activity.interfaces.FilterEvents;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.activity.interfaces.SearchBarFilter;
import com.callapp.contacts.activity.interfaces.SearchBarFilterEvents;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.InterstitialLoaderLifecycle;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.SearchAnimationToolbar;
import com.callapp.contacts.widget.sticky.StickyCallAppPremiumView;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusActivity.class */
public class CallAppPlusActivity extends BaseSwipeableActivity implements CallappPlusFilterAdapter.OnFilterChangeListener, CallAppPlusFilter, FilterEvents, SearchBarFilterEvents, SearchAnimationToolbar.OnSearchQueryChangedListener {
    private CallAppPlusFilterViewController g;
    private CollapsingToolbarLayout h;
    private AppBarLayout j;
    private MenuItem l;
    private View m;
    private InterstitialLoaderLifecycle n;

    /* renamed from: a  reason: collision with root package name */
    private Set<CallAppFilter> f11257a = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private Set<SearchBarFilter> f11258d = new HashSet();
    private SearchCallAppPlusFragment e = new SearchCallAppPlusFragment();
    private String f = "";
    private float k = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        d();
        this.g.a();
        setPagingEnabled(true);
        a(true);
        invalidateOptionsMenu();
    }

    private void a(boolean z) {
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams();
        if (z) {
            layoutParams.f30222a = 0;
            this.k = getSearchAnimationToolbar().getY();
            AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.d) this.j.getLayoutParams()).f1663a;
            if (behavior != null) {
                getSearchAnimationToolbar().setY(BitmapDescriptorFactory.HUE_RED);
                behavior.b(0);
                behavior.a((CoordinatorLayout) this.j.getParent(), (CoordinatorLayout) this.j, (View) null, BitmapDescriptorFactory.HUE_RED, 1000.0f);
            }
            this.h.setContentScrim(null);
            return;
        }
        getSearchAnimationToolbar().setY(this.k);
        layoutParams.f30222a = 1;
        this.h.setContentScrimColor(ThemeUtils.getColor(2131099784));
    }

    private void b(String str) {
        this.f = str;
        if (CollectionUtils.b(this.f11257a)) {
            for (CallAppFilter callAppFilter : this.f11257a) {
                callAppFilter.a(this.f);
            }
        }
        if (CollectionUtils.b(this.f11258d)) {
            for (SearchBarFilter searchBarFilter : this.f11258d) {
                searchBarFilter.a(str);
            }
        }
    }

    public static void setPremiumFlow(boolean z) {
        Prefs.aL.set(Boolean.valueOf(z));
        if (Prefs.aL.get().booleanValue()) {
            Prefs.aM.set(null);
            Prefs.aN.set(Boolean.FALSE);
            Prefs.aO.set(Boolean.FALSE);
            Prefs.cD.set(0);
            Prefs.cC.set(new Date());
        }
    }

    @Override // com.callapp.contacts.activity.callappplus.CallappPlusFilterAdapter.OnFilterChangeListener
    public final void a() {
        b(this.f);
    }

    @Override // com.callapp.contacts.activity.interfaces.FilterEvents
    public final void a(CallAppFilter callAppFilter) {
        this.f11257a.add(callAppFilter);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    public final void a(SearchBarFilter searchBarFilter) {
        this.f11258d.add(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void a(String str) {
        b(str);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void b() {
        this.f = "";
        b("");
        if (!this.g.isViewShown()) {
            d();
        }
        getSearchContainer().setVisibility(8);
        getSupportFragmentManager().a().a(this.e).b();
    }

    @Override // com.callapp.contacts.activity.interfaces.FilterEvents
    public final void b(CallAppFilter callAppFilter) {
        this.f11257a.remove(callAppFilter);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    public final void b(SearchBarFilter searchBarFilter) {
        this.f11258d.remove(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void c() {
        a((AnimationListenerAdapter) null);
        setFilterViewVisiblity(false);
        getSearchContainer().setVisibility(0);
        if (!this.e.isAdded()) {
            getSupportFragmentManager().a().a(2131363757, this.e).b();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppPlusFilter
    public List<Integer> getActiveFilter() {
        return this.g.getActiveFilters();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public int getActivityTitleResource() {
        return 2131887004;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public String getAnalyticsCategory() {
        return Constants.CALLAPP_PLUS;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558439;
    }

    public q getViewPagerAdapter() {
        return new CallAppPlusPagerAdapter(this, getSupportFragmentManager());
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.c getViewPagerOnTabSelectedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppPlusFilter
    public boolean isAllSelected() {
        return this.g.isAllSelected();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.n = new InterstitialLoaderLifecycle(this, AdUtils.b("CallappPlusListInterstitialBidding", "CallappPlusListInterstitialAdUnitId"), "CallappPlusListInterstitialPreferences", new InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents(), InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents.f16074a);
        getLifecycle().addObserver(this.n);
        AnalyticsManager.get().b(Constants.CALLAPP_PLUS_SCREEN);
        final boolean z = true;
        if (bundle == null && ContactPlusUtils.isAllowedToShowAccessRequestPopup()) {
            String string = Activities.getString(2131886981);
            String string2 = Activities.getString(2131886980);
            if (Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.b()) {
                AnalyticsManager.get().a(Constants.PERMISSIONS, "ViewPermissionToNotificationPopup", Constants.CALLAPP_PLUS);
                Prefs.cD.b(1);
                Prefs.cC.set(new Date());
                PopupManager.get().a(this, new DialogMessageWithTopImage(2131230886, (!BillingManager.isBillingAvailable() || !Prefs.aL.get().booleanValue() || Prefs.cJ.get().booleanValue()) ? 0 : 2131230840, 0, StringUtils.a(string, new char[0]), 2131099784, string2, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickAllowPermissionToNotificationPopup", Constants.CALLAPP_PLUS);
                        Activities.b(activity);
                    }
                }, Activities.getString(2131886773), true, ThemeUtils.getColor(2131100108), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                    }
                }));
            }
        }
        this.j = (AppBarLayout) findViewById(2131362020);
        this.m = findViewById(2131363757);
        a(getViewPagerAdapter());
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(2131362383);
        this.h = collapsingToolbarLayout;
        collapsingToolbarLayout.setContentScrimColor(ThemeUtils.getColor(2131099784));
        this.g = new CallAppPlusFilterViewController(this.h, new CallappPlusFilterAdapter(this));
        d();
        this.g.a();
        this.g.setOnCloseFiltersClickedListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusActivity$ZWXsqcq6Jr7mIZMR8IMJ1zwPhKM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppPlusActivity.this.a(view);
            }
        });
        setPagingEnabled(true);
        this.f11168c.addOnPageChangeListener(new DefaultInterfaceImplUtils.OnPageChangeListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.e
            public void onPageScrolled(int i, float f, int i2) {
                super.onPageScrolled(i, f, i2);
                CallAppPlusActivity.this.invalidateOptionsMenu();
            }

            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.e
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                CallAppPlusActivity.this.invalidateOptionsMenu();
            }
        });
        a(true);
        if (Activities.getNotificationListenersSettingsScreenIntent() != null && Activities.b() && BillingManager.isBillingAvailable() && Prefs.aL.get().booleanValue() && !Prefs.cJ.get().booleanValue()) {
            if (Prefs.aM.get() == null) {
                CLog.a(CallAppPlusActivity.class, "user start the callapp + trial time, init the pref ");
                Prefs.aM.set(new Date());
            }
            long a2 = DateUtils.a(Prefs.aM.get(), new Date(), TimeUnit.DAYS);
            if (a2 > 10) {
                z = false;
            }
            StickyCallAppPremiumView stickyCallAppPremiumView = (StickyCallAppPremiumView) findViewById(2131363986);
            stickyCallAppPremiumView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent(CallAppPlusActivity.this, PlanPageActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "callAppPlus");
                    intent.putExtra("RETURN_TO_PREVIOUS_CLASS", CallAppPlusActivity.class);
                    Activities.b(CallAppPlusActivity.this, intent);
                    AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickBannerTrial", "Trial", z ? 1.0d : 0.0d, new String[0]);
                }
            });
            if (z) {
                CLog.a(CallAppPlusActivity.class, "time for trial ".concat(String.valueOf(a2)));
                stickyCallAppPremiumView.setVisibility(0);
                stickyCallAppPremiumView.setPremiumGroup(StickyCallAppPremiumView.PremiumGroup.CALLAPP_PLUS_SMALL);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 1.0d, new String[0]);
            } else {
                CLog.a(CallAppPlusActivity.class, "first time enter after trial ends + ".concat(String.valueOf(a2)));
                if (!Prefs.aN.get().booleanValue()) {
                    String string3 = Activities.getString(2131886476);
                    String string4 = Activities.getString(2131886475);
                    Prefs.aN.set(Boolean.TRUE);
                    DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230890, 0, 2131230841, StringUtils.a(string3, new char[0]), 2131099784, string4, Activities.getString(2131886471), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.6
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 0.0d, new String[0]);
                            Intent intent = new Intent(CallAppPlusActivity.this, PlanPageActivity.class);
                            intent.putExtra("RETURN_TO_PREVIOUS_CLASS", CallAppPlusActivity.class);
                            intent.putExtra("PLAN_PAGE_SOURCE", "callAppPlus");
                            CallAppPlusActivity.this.startActivity(intent);
                            CallAppPlusActivity.this.finish();
                        }
                    }, "", true, 2131100108, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.7
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            CallAppPlusActivity.this.finish();
                        }
                    });
                    dialogMessageWithTopImage.setCancelable(false);
                    PopupManager.get().a(this, dialogMessageWithTopImage);
                } else {
                    CLog.a(CallAppPlusActivity.class, "trial ends + ".concat(String.valueOf(a2)));
                    stickyCallAppPremiumView.setVisibility(0);
                    stickyCallAppPremiumView.setPremiumGroup(StickyCallAppPremiumView.PremiumGroup.CALLAPP_PLUS_BIG);
                    AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 0.0d, new String[0]);
                }
                this.m.setBackgroundResource(((ThemeState) Prefs.di.get()).isLightTheme() ? 2131230860 : 2131230861);
                this.m.setVisibility(0);
                this.m.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
        }
        AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ViewScreenCallAppPlus");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623946, menu);
        MenuItem visible = menu.findItem(2131363272).setVisible(getViewPagerPosition() == CallAppPlusPagerAdapter.f11285a);
        this.l = visible;
        visible.getIcon().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_ATOP);
        if (BillingManager.isBillingAvailable() && Prefs.aL.get().booleanValue() && !Prefs.cJ.get().booleanValue() && DateUtils.a(Prefs.aM.get(), new Date(), TimeUnit.DAYS) > 10) {
            menu.findItem(2131361963).setEnabled(false);
            menu.findItem(2131363272).setEnabled(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getLifecycle().removeObserver(this.n);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALLAPP_PLUS_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131361963) {
            return getSearchAnimationToolbar().a();
        }
        if (itemId != 2131363272) {
            return super.onOptionsItemSelected(menuItem);
        }
        boolean z = !this.g.isViewShown();
        setFilterViewVisiblity(z);
        if (z) {
            a((AnimationListenerAdapter) null);
            return true;
        }
        d();
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
        super.onStop();
    }

    protected void setFilterViewVisiblity(boolean z) {
        if (z) {
            this.g.b();
            setPagingEnabled(false);
            a(false);
            this.l.getIcon().setColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_ATOP);
            return;
        }
        this.g.a();
        setPagingEnabled(true);
        a(true);
        this.l.getIcon().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_ATOP);
    }
}
