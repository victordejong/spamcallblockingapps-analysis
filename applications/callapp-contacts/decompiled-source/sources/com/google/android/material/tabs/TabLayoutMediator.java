package com.google.android.material.tabs;

import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator.class */
public final class TabLayoutMediator {

    /* renamed from: a  reason: collision with root package name */
    private final TabLayout f30870a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewPager2 f30871b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f30872c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f30873d;
    private final TabConfigurationStrategy e;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy.class */
    public interface TabConfigurationStrategy {
        void onConfigureTab(TabLayout.f fVar, int i);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, boolean z, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, boolean z, boolean z2, TabConfigurationStrategy tabConfigurationStrategy) {
        this.f30870a = tabLayout;
        this.f30871b = viewPager2;
        this.f30872c = z;
        this.f30873d = z2;
        this.e = tabConfigurationStrategy;
    }
}
