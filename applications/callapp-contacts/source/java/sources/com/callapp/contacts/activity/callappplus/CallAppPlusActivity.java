package com.callapp.contacts.activity.callappplus;

import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.AbstractC1119q;
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

    /* renamed from: g */
    private CallAppPlusFilterViewController f20510g;

    /* renamed from: h */
    private CollapsingToolbarLayout f20511h;

    /* renamed from: j */
    private AppBarLayout f20512j;

    /* renamed from: l */
    private MenuItem f20514l;

    /* renamed from: m */
    private View f20515m;

    /* renamed from: n */
    private InterstitialLoaderLifecycle f20516n;

    /* renamed from: a */
    private Set<CallAppFilter> f20506a = new HashSet();

    /* renamed from: d */
    private Set<SearchBarFilter> f20507d = new HashSet();

    /* renamed from: e */
    private SearchCallAppPlusFragment f20508e = new SearchCallAppPlusFragment();

    /* renamed from: f */
    private String f20509f = "";

    /* renamed from: k */
    private float f20513k = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: a */
    public /* synthetic */ void m31423a(View view) {
        m31468d();
        this.f20510g.m31418a();
        setPagingEnabled(true);
        m31422a(true);
        invalidateOptionsMenu();
    }

    /* renamed from: a */
    private void m31422a(boolean z) {
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams();
        if (!z) {
            getSearchAnimationToolbar().setY(this.f20513k);
            layoutParams.f52459a = 1;
            this.f20511h.setContentScrimColor(ThemeUtils.getColor(2131099784));
            return;
        }
        layoutParams.f52459a = 0;
        this.f20513k = getSearchAnimationToolbar().getY();
        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.C0702d) this.f20512j.getLayoutParams()).f3200a;
        if (behavior != null) {
            getSearchAnimationToolbar().setY(BitmapDescriptorFactory.HUE_RED);
            behavior.mo11250b(0);
            behavior.mo11129a((CoordinatorLayout) this.f20512j.getParent(), (CoordinatorLayout) this.f20512j, (View) null, BitmapDescriptorFactory.HUE_RED, 1000.0f);
        }
        this.f20511h.setContentScrim(null);
    }

    /* renamed from: b */
    private void m31421b(String str) {
        this.f20509f = str;
        if (CollectionUtils.m26068b(this.f20506a)) {
            for (CallAppFilter callAppFilter : this.f20506a) {
                callAppFilter.mo26315a(this.f20509f);
            }
        }
        if (CollectionUtils.m26068b(this.f20507d)) {
            for (SearchBarFilter searchBarFilter : this.f20507d) {
                searchBarFilter.mo30194a(str);
            }
        }
    }

    public static void setPremiumFlow(boolean z) {
        Prefs.f26235aL.set(Boolean.valueOf(z));
        if (Prefs.f26235aL.get().booleanValue()) {
            Prefs.f26236aM.set(null);
            Prefs.f26237aN.set(Boolean.FALSE);
            Prefs.f26238aO.set(Boolean.FALSE);
            Prefs.f26333cD.set(0);
            Prefs.f26332cC.set(new Date());
        }
    }

    @Override // com.callapp.contacts.activity.callappplus.CallappPlusFilterAdapter.OnFilterChangeListener
    /* renamed from: a */
    public final void mo31401a() {
        m31421b(this.f20509f);
    }

    @Override // com.callapp.contacts.activity.interfaces.FilterEvents
    /* renamed from: a */
    public final void mo30214a(CallAppFilter callAppFilter) {
        this.f20506a.add(callAppFilter);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    /* renamed from: a */
    public final void mo29757a(SearchBarFilter searchBarFilter) {
        this.f20507d.add(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: a */
    public final void mo26640a(String str) {
        m31421b(str);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: b */
    public final void mo26639b() {
        this.f20509f = "";
        m31421b("");
        if (!this.f20510g.isViewShown()) {
            m31468d();
        }
        getSearchContainer().setVisibility(8);
        getSupportFragmentManager().m43765a().mo43539a(this.f20508e).mo43536b();
    }

    @Override // com.callapp.contacts.activity.interfaces.FilterEvents
    /* renamed from: b */
    public final void mo30213b(CallAppFilter callAppFilter) {
        this.f20506a.remove(callAppFilter);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    /* renamed from: b */
    public final void mo29750b(SearchBarFilter searchBarFilter) {
        this.f20507d.remove(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: c */
    public final void mo26638c() {
        m31469a((AnimationListenerAdapter) null);
        setFilterViewVisiblity(false);
        getSearchContainer().setVisibility(0);
        if (!this.f20508e.isAdded()) {
            getSupportFragmentManager().m43765a().m43542a(2131363757, this.f20508e).mo43536b();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppPlusFilter
    public List<Integer> getActiveFilter() {
        return this.f20510g.getActiveFilters();
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

    public AbstractC1119q getViewPagerAdapter() {
        return new CallAppPlusPagerAdapter(this, getSupportFragmentManager());
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.AbstractC14773c getViewPagerOnTabSelectedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppPlusFilter
    public boolean isAllSelected() {
        return this.f20510g.isAllSelected();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f20516n = new InterstitialLoaderLifecycle(this, AdUtils.m27261b("CallappPlusListInterstitialBidding", "CallappPlusListInterstitialAdUnitId"), "CallappPlusListInterstitialPreferences", new InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents(), InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents.f28026a);
        getLifecycle().addObserver(this.f20516n);
        AnalyticsManager.get().mo28441b(Constants.CALLAPP_PLUS_SCREEN);
        boolean z = true;
        if (bundle == null && ContactPlusUtils.isAllowedToShowAccessRequestPopup()) {
            String string = Activities.getString(2131886981);
            String string2 = Activities.getString(2131886980);
            if (Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.m27661b()) {
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ViewPermissionToNotificationPopup", Constants.CALLAPP_PLUS);
                Prefs.f26333cD.m28169b(1);
                Prefs.f26332cC.set(new Date());
                PopupManager.get().m28209a(this, new DialogMessageWithTopImage(2131230886, (!BillingManager.isBillingAvailable() || !Prefs.f26235aL.get().booleanValue() || Prefs.f26339cJ.get().booleanValue()) ? 0 : 2131230840, 0, StringUtils.m26049a(string, new char[0]), 2131099784, string2, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ClickAllowPermissionToNotificationPopup", Constants.CALLAPP_PLUS);
                        Activities.m27659b(activity);
                    }
                }, Activities.getString(2131886773), true, ThemeUtils.getColor(2131100108), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                    }
                }));
            }
        }
        this.f20512j = (AppBarLayout) findViewById(2131362020);
        this.f20515m = findViewById(2131363757);
        m31470a(getViewPagerAdapter());
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(2131362383);
        this.f20511h = collapsingToolbarLayout;
        collapsingToolbarLayout.setContentScrimColor(ThemeUtils.getColor(2131099784));
        this.f20510g = new CallAppPlusFilterViewController(this.f20511h, new CallappPlusFilterAdapter(this));
        m31468d();
        this.f20510g.m31418a();
        this.f20510g.setOnCloseFiltersClickedListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusActivity$ZWXsqcq6Jr7mIZMR8IMJ1zwPhKM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppPlusActivity.this.m31423a(view);
            }
        });
        setPagingEnabled(true);
        this.f20382c.addOnPageChangeListener(new DefaultInterfaceImplUtils.OnPageChangeListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.AbstractC2936e
            public void onPageScrolled(int i, float f, int i2) {
                super.onPageScrolled(i, f, i2);
                CallAppPlusActivity.this.invalidateOptionsMenu();
            }

            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnPageChangeListener, androidx.viewpager.widget.ViewPager.AbstractC2936e
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                CallAppPlusActivity.this.invalidateOptionsMenu();
            }
        });
        m31422a(true);
        if (Activities.getNotificationListenersSettingsScreenIntent() != null && Activities.m27661b() && BillingManager.isBillingAvailable() && Prefs.f26235aL.get().booleanValue() && !Prefs.f26339cJ.get().booleanValue()) {
            if (Prefs.f26236aM.get() == null) {
                CLog.m27611a(CallAppPlusActivity.class, "user start the callapp + trial time, init the pref ");
                Prefs.f26236aM.set(new Date());
            }
            long m27124a = DateUtils.m27124a(Prefs.f26236aM.get(), new Date(), TimeUnit.DAYS);
            if (m27124a > 10) {
                z = false;
            }
            StickyCallAppPremiumView stickyCallAppPremiumView = (StickyCallAppPremiumView) findViewById(2131363986);
            final boolean z2 = z;
            stickyCallAppPremiumView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent(CallAppPlusActivity.this, PlanPageActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "callAppPlus");
                    intent.putExtra("RETURN_TO_PREVIOUS_CLASS", CallAppPlusActivity.class);
                    Activities.m27656b(CallAppPlusActivity.this, intent);
                    AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, "ClickBannerTrial", "Trial", (z2 ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
                }
            });
            if (z) {
                CLog.m27611a(CallAppPlusActivity.class, "time for trial ".concat(String.valueOf(m27124a)));
                stickyCallAppPremiumView.setVisibility(0);
                stickyCallAppPremiumView.setPremiumGroup(StickyCallAppPremiumView.PremiumGroup.CALLAPP_PLUS_SMALL);
                AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 1.0d, new String[0]);
            } else {
                CLog.m27611a(CallAppPlusActivity.class, "first time enter after trial ends + ".concat(String.valueOf(m27124a)));
                if (!Prefs.f26237aN.get().booleanValue()) {
                    String string3 = Activities.getString(2131886476);
                    String string4 = Activities.getString(2131886475);
                    Prefs.f26237aN.set(Boolean.TRUE);
                    DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230890, 0, 2131230841, StringUtils.m26049a(string3, new char[0]), 2131099784, string4, Activities.getString(2131886471), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.6
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 0.0d, new String[0]);
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
                    PopupManager.get().m28209a(this, dialogMessageWithTopImage);
                } else {
                    CLog.m27611a(CallAppPlusActivity.class, "trial ends + ".concat(String.valueOf(m27124a)));
                    stickyCallAppPremiumView.setVisibility(0);
                    stickyCallAppPremiumView.setPremiumGroup(StickyCallAppPremiumView.PremiumGroup.CALLAPP_PLUS_BIG);
                    AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, "ViewBannerTrial", "Trial", 0.0d, new String[0]);
                }
                this.f20515m.setBackgroundResource(((ThemeState) Prefs.f26417di.get()).isLightTheme() ? 2131230860 : 2131230861);
                this.f20515m.setVisibility(0);
                this.f20515m.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
        }
        AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ViewScreenCallAppPlus");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623946, menu);
        MenuItem visible = menu.findItem(2131363272).setVisible(getViewPagerPosition() == CallAppPlusPagerAdapter.f20552a);
        this.f20514l = visible;
        visible.getIcon().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_ATOP);
        if (BillingManager.isBillingAvailable() && Prefs.f26235aL.get().booleanValue() && !Prefs.f26339cJ.get().booleanValue() && DateUtils.m27124a(Prefs.f26236aM.get(), new Date(), TimeUnit.DAYS) > 10) {
            menu.findItem(2131361963).setEnabled(false);
            menu.findItem(2131363272).setEnabled(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getLifecycle().removeObserver(this.f20516n);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALLAPP_PLUS_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId != 2131361963) {
            if (itemId != 2131363272) {
                return super.onOptionsItemSelected(menuItem);
            }
            boolean z = !this.f20510g.isViewShown();
            setFilterViewVisiblity(z);
            if (z) {
                m31469a((AnimationListenerAdapter) null);
                return true;
            }
            m31468d();
            return true;
        }
        return getSearchAnimationToolbar().m26649a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED, false);
        super.onStop();
    }

    protected void setFilterViewVisiblity(boolean z) {
        if (z) {
            this.f20510g.mo26534b();
            setPagingEnabled(false);
            m31422a(false);
            this.f20514l.getIcon().setColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_ATOP);
            return;
        }
        this.f20510g.m31418a();
        setPagingEnabled(true);
        m31422a(true);
        this.f20514l.getIcon().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_ATOP);
    }
}
