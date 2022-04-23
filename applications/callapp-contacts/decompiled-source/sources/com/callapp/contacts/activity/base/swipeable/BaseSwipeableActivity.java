package com.callapp.contacts.activity.base.swipeable;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.fragment.app.q;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.contact.list.ViewPagerManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.widget.PagingTogglableViewPager;
import com.callapp.contacts.widget.SearchAnimationToolbar;
import com.google.android.material.tabs.TabLayout;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity.class */
public abstract class BaseSwipeableActivity extends BaseNoTitleActivity implements ViewPagerManager, SearchAnimationToolbar.OnSearchQueryChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private SearchAnimationToolbar f11167a;
    protected TabLayout a_;

    /* renamed from: c  reason: collision with root package name */
    public PagingTogglableViewPager f11168c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f11169d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper.class */
    public static class TabSelectedListenerWrapper extends TabLayout.h {

        /* renamed from: a  reason: collision with root package name */
        private final String f11170a;

        /* renamed from: b  reason: collision with root package name */
        private final TabLayout.c f11171b;

        private TabSelectedListenerWrapper(ViewPager viewPager, String str, TabLayout.c cVar) {
            super(viewPager);
            this.f11170a = str;
            this.f11171b = cVar;
        }

        @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
        public final void a(TabLayout.f fVar) {
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            String str = this.f11170a;
            analyticsManager.a(str, "Tab selected: " + fVar.e);
            TabLayout.c cVar = this.f11171b;
            if (cVar != null) {
                cVar.a(fVar);
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
        public final void b(TabLayout.f fVar) {
            TabLayout.c cVar = this.f11171b;
            if (cVar != null) {
                cVar.b(fVar);
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
        public final void c(TabLayout.f fVar) {
            TabLayout.c cVar = this.f11171b;
            if (cVar != null) {
                cVar.c(fVar);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public final void a(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(q qVar) {
        this.f11168c.setAdapter(qVar);
        this.a_.setupWithViewPager(this.f11168c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(AnimationListenerAdapter animationListenerAdapter) {
        this.a_.setVisibility(8);
        if (animationListenerAdapter != null) {
            animationListenerAdapter.onAnimationEnd(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        TabLayout tabLayout = this.a_;
        if (tabLayout != null) {
            tabLayout.setVisibility(0);
        }
    }

    protected abstract int getActivityTitleResource();

    protected abstract String getAnalyticsCategory();

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public int getCurrentPage() {
        return this.f11168c.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558472;
    }

    public SearchAnimationToolbar getSearchAnimationToolbar() {
        return this.f11167a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewGroup getSearchContainer() {
        return this.f11169d;
    }

    protected abstract TabLayout.c getViewPagerOnTabSelectedListener();

    /* JADX INFO: Access modifiers changed from: protected */
    public int getViewPagerPosition() {
        return this.f11168c.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        SearchAnimationToolbar searchAnimationToolbar = getSearchAnimationToolbar();
        boolean z = true;
        if (!(searchAnimationToolbar.f16584a.getVisibility() == 0)) {
            z = false;
        } else {
            searchAnimationToolbar.b();
            searchAnimationToolbar.f16585b.collapseActionView();
        }
        if (!z) {
            super.onBackPressed();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11168c = (PagingTogglableViewPager) findViewById(2131364520);
        this.a_ = (TabLayout) findViewById(2131364048);
        this.f11168c.setPagingEnabled(true);
        this.a_.setTabTextColors(ThemeUtils.getColor(2131099786), ThemeUtils.getColor(2131100228));
        this.a_.a(new TabSelectedListenerWrapper(this.f11168c, getAnalyticsCategory(), getViewPagerOnTabSelectedListener()));
        this.a_.setBackgroundColor(ThemeUtils.getColor(2131099784));
        SearchAnimationToolbar searchAnimationToolbar = (SearchAnimationToolbar) findViewById(2131363755);
        this.f11167a = searchAnimationToolbar;
        searchAnimationToolbar.getToolbar().setBackgroundColor(ThemeUtils.getColor(2131099784));
        this.f11167a.getSearchToolbar().setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.f11167a.setSearchTextColor(ThemeUtils.getColor(2131099917));
        this.f11167a.setSearchHintColor(ThemeUtils.getColor(2131100108));
        this.f11167a.setSupportActionBar(this);
        this.f11167a.setSearchHint(Activities.getString(2131887887));
        this.f11167a.setOnSearchQueryChangedListener(this);
        this.f11167a.setTitle(Activities.getString(getActivityTitleResource()));
        setSupportActionBar(this.f11167a.getToolbar());
        getSupportActionBar().b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().a(true);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131363757);
        this.f11169d = viewGroup;
        viewGroup.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPagingEnabled(boolean z) {
        this.f11168c.setPagingEnabled(z);
    }
}
