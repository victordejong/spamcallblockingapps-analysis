package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator.class */
public final class TabLayoutMediator {
    @NonNull

    /* renamed from: a */
    private final TabLayout f11411a;
    @NonNull

    /* renamed from: b */
    private final ViewPager2 f11412b;

    /* renamed from: c */
    private final TabConfigurationStrategy f11413c;
    @Nullable

    /* renamed from: d */
    private RecyclerView.Adapter<?> f11414d;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver.class */
    private class PagerAdapterObserver extends RecyclerView.AdapterDataObserver {

        /* renamed from: a */
        final /* synthetic */ TabLayoutMediator f11415a;

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: a */
        public void mo7065a() {
            this.f11415a.m8902a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: b */
        public void mo8901b(int i, int i2) {
            this.f11415a.m8902a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: c */
        public void mo8900c(int i, int i2, @Nullable Object obj) {
            this.f11415a.m8902a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: d */
        public void mo8899d(int i, int i2) {
            this.f11415a.m8902a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: e */
        public void mo8898e(int i, int i2, int i3) {
            this.f11415a.m8902a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: f */
        public void mo8897f(int i, int i2) {
            this.f11415a.m8902a();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy.class */
    public interface TabConfigurationStrategy {
        /* renamed from: a */
        void m8896a(@NonNull TabLayout.Tab tab, int i);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback.class */
    private static class TabLayoutOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
        @NonNull

        /* renamed from: a */
        private final WeakReference<TabLayout> f11416a;

        /* renamed from: b */
        private int f11417b;

        /* renamed from: c */
        private int f11418c;

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        /* renamed from: a */
        public void mo8895a(int i) {
            this.f11417b = this.f11418c;
            this.f11418c = i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        /* renamed from: b */
        public void mo8894b(int i, float f, int i2) {
            TabLayout tabLayout = this.f11416a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.f11418c != 2 || this.f11417b == 1;
                if (!(this.f11418c == 2 && this.f11417b == 0)) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        /* renamed from: c */
        public void mo8893c(int i) {
            TabLayout tabLayout = this.f11416a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.f11418c;
                tabLayout.m8992E(tabLayout.m8964w(i), i2 == 0 || (i2 == 2 && this.f11417b == 0));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener.class */
    private static class ViewPagerOnTabSelectedListener implements TabLayout.OnTabSelectedListener {

        /* renamed from: f */
        private final ViewPager2 f11419f;

        /* renamed from: g */
        private final boolean f11420g;

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: N */
        public void mo6558N(@NonNull TabLayout.Tab tab) {
            this.f11419f.setCurrentItem(tab.m8942f(), this.f11420g);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: t */
        public void mo6544t(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: u0 */
        public void mo6543u0(TabLayout.Tab tab) {
        }
    }

    /* renamed from: a */
    void m8902a() {
        this.f11411a.m8996A();
        RecyclerView.Adapter<?> adapter = this.f11414d;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                TabLayout.Tab x = this.f11411a.m8963x();
                this.f11413c.m8896a(x, i);
                this.f11411a.m8981f(x, false);
            }
            if (itemCount > 0) {
                int min = Math.min(this.f11412b.getCurrentItem(), this.f11411a.getTabCount() - 1);
                if (min != this.f11411a.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f11411a;
                    tabLayout.m8993D(tabLayout.m8964w(min));
                }
            }
        }
    }
}
