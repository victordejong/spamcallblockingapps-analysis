package com.callapp.contacts.activity.base.swipeable;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC1119q;
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

    /* renamed from: a */
    private SearchAnimationToolbar f20380a;

    /* renamed from: a_ */
    protected TabLayout f20381a_;

    /* renamed from: c */
    public PagingTogglableViewPager f20382c;

    /* renamed from: d */
    private ViewGroup f20383d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper.class */
    public static class TabSelectedListenerWrapper extends TabLayout.C14780h {

        /* renamed from: a */
        private final String f20384a;

        /* renamed from: b */
        private final TabLayout.AbstractC14773c f20385b;

        private TabSelectedListenerWrapper(ViewPager viewPager, String str, TabLayout.AbstractC14773c abstractC14773c) {
            super(viewPager);
            this.f20384a = str;
            this.f20385b = abstractC14773c;
        }

        @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: a */
        public final void mo10080a(TabLayout.C14778f c14778f) {
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            String str = this.f20384a;
            analyticsManager.m28450a(str, "Tab selected: " + c14778f.f53960e);
            TabLayout.AbstractC14773c abstractC14773c = this.f20385b;
            if (abstractC14773c != null) {
                abstractC14773c.mo10080a(c14778f);
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: b */
        public final void mo10079b(TabLayout.C14778f c14778f) {
            TabLayout.AbstractC14773c abstractC14773c = this.f20385b;
            if (abstractC14773c != null) {
                abstractC14773c.mo10079b(c14778f);
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: c */
        public final void mo10078c(TabLayout.C14778f c14778f) {
            TabLayout.AbstractC14773c abstractC14773c = this.f20385b;
            if (abstractC14773c != null) {
                abstractC14773c.mo10078c(c14778f);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    /* renamed from: a */
    public final void mo30518a(int i) {
    }

    /* renamed from: a */
    public final void m31470a(AbstractC1119q abstractC1119q) {
        this.f20382c.setAdapter(abstractC1119q);
        this.f20381a_.setupWithViewPager(this.f20382c);
    }

    /* renamed from: a */
    public final void m31469a(AnimationListenerAdapter animationListenerAdapter) {
        this.f20381a_.setVisibility(8);
        if (animationListenerAdapter != null) {
            animationListenerAdapter.onAnimationEnd(null);
        }
    }

    /* renamed from: d */
    public final void m31468d() {
        TabLayout tabLayout = this.f20381a_;
        if (tabLayout != null) {
            tabLayout.setVisibility(0);
        }
    }

    protected abstract int getActivityTitleResource();

    protected abstract String getAnalyticsCategory();

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public int getCurrentPage() {
        return this.f20382c.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558472;
    }

    public SearchAnimationToolbar getSearchAnimationToolbar() {
        return this.f20380a;
    }

    public ViewGroup getSearchContainer() {
        return this.f20383d;
    }

    protected abstract TabLayout.AbstractC14773c getViewPagerOnTabSelectedListener();

    public int getViewPagerPosition() {
        return this.f20382c.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean z;
        SearchAnimationToolbar searchAnimationToolbar = getSearchAnimationToolbar();
        if (!(searchAnimationToolbar.f28872a.getVisibility() == 0)) {
            z = false;
        } else {
            searchAnimationToolbar.m26646b();
            searchAnimationToolbar.f28873b.collapseActionView();
            z = true;
        }
        if (!z) {
            super.onBackPressed();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f20382c = (PagingTogglableViewPager) findViewById(2131364520);
        this.f20381a_ = (TabLayout) findViewById(2131364048);
        this.f20382c.setPagingEnabled(true);
        this.f20381a_.setTabTextColors(ThemeUtils.getColor(2131099786), ThemeUtils.getColor(2131100228));
        this.f20381a_.m10135a(new TabSelectedListenerWrapper(this.f20382c, getAnalyticsCategory(), getViewPagerOnTabSelectedListener()));
        this.f20381a_.setBackgroundColor(ThemeUtils.getColor(2131099784));
        SearchAnimationToolbar searchAnimationToolbar = (SearchAnimationToolbar) findViewById(2131363755);
        this.f20380a = searchAnimationToolbar;
        searchAnimationToolbar.getToolbar().setBackgroundColor(ThemeUtils.getColor(2131099784));
        this.f20380a.getSearchToolbar().setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.f20380a.setSearchTextColor(ThemeUtils.getColor(2131099917));
        this.f20380a.setSearchHintColor(ThemeUtils.getColor(2131100108));
        this.f20380a.setSupportActionBar(this);
        this.f20380a.setSearchHint(Activities.getString(2131887887));
        this.f20380a.setOnSearchQueryChangedListener(this);
        this.f20380a.setTitle(Activities.getString(getActivityTitleResource()));
        setSupportActionBar(this.f20380a.getToolbar());
        getSupportActionBar().mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131363757);
        this.f20383d = viewGroup;
        viewGroup.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }

    public void setPagingEnabled(boolean z) {
        this.f20382c.setPagingEnabled(z);
    }
}
