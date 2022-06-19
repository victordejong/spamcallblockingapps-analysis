package com.google.android.material.tabs;

import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator.class */
public final class TabLayoutMediator {

    /* renamed from: a */
    private final TabLayout f53970a;

    /* renamed from: b */
    private final ViewPager2 f53971b;

    /* renamed from: c */
    private final boolean f53972c;

    /* renamed from: d */
    private final boolean f53973d;

    /* renamed from: e */
    private final TabConfigurationStrategy f53974e;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy.class */
    public interface TabConfigurationStrategy {
        void onConfigureTab(TabLayout.C14778f c14778f, int i);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, boolean z, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, boolean z, boolean z2, TabConfigurationStrategy tabConfigurationStrategy) {
        this.f53970a = tabLayout;
        this.f53971b = viewPager2;
        this.f53972c = z;
        this.f53973d = z2;
        this.f53974e = tabConfigurationStrategy;
    }
}
