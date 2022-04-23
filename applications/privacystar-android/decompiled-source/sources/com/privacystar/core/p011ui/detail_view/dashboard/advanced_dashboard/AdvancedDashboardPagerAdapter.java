package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentPagerAdapter;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.privacystar.core.p011ui.FragmentObserver;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\nH\u0016J\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPagerAdapter;", "Landroid/support/v4/app/FragmentPagerAdapter;", "fm", "Landroid/support/v4/app/FragmentManager;", "disableOther", "", "(Landroid/support/v4/app/FragmentManager;Z)V", "observers", "Lcom/privacystar/core/ui/FragmentObserver;", "getCount", "", "getItem", "Landroid/support/v4/app/Fragment;", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "getPageTitle", "", "updateFragments", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPagerAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPagerAdapter.class */
public final class AdvancedDashboardPagerAdapter extends FragmentPagerAdapter {
    private final boolean disableOther;
    private final FragmentObserver observers = new FragmentObserver();

    public AdvancedDashboardPagerAdapter(@Nullable FragmentManager fragmentManager, boolean z) {
        super(fragmentManager);
        this.disableOther = z;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        return this.disableOther ? 3 : 4;
    }

    @Override // android.support.p001v4.app.FragmentPagerAdapter
    @NotNull
    public Fragment getItem(int i) {
        AdvancedDashboardPage newInstance = AdvancedDashboardPage.Companion.newInstance(i);
        this.observers.addObserver(newInstance);
        return newInstance;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    @NotNull
    public CharSequence getPageTitle(int i) {
        return AdvancedDashboardPage.Companion.getTitle(i);
    }

    public final void updateFragments() {
        this.observers.notifyObservers();
    }
}
