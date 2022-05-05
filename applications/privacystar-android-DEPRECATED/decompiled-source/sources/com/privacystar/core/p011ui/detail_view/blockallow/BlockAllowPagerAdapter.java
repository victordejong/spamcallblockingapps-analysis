package com.privacystar.core.p011ui.detail_view.blockallow;

import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentPagerAdapter;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n��\u0018��2\u00020\u0001B)\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\u000bH\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/blockallow/BlockAllowPagerAdapter;", "Landroid/support/v4/app/FragmentPagerAdapter;", "fragments", "", "Landroid/support/v4/app/Fragment;", "tabTitles", "", "fm", "Landroid/support/v4/app/FragmentManager;", "(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V", "getCount", "", "getItem", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "getPageTitle", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.blockallow.BlockAllowPagerAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/blockallow/BlockAllowPagerAdapter.class */
public final class BlockAllowPagerAdapter extends FragmentPagerAdapter {
    private final List<Fragment> fragments;
    private final List<String> tabTitles;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BlockAllowPagerAdapter(@NotNull List<? extends Fragment> fragments, @NotNull List<String> tabTitles, @NotNull FragmentManager fm) {
        super(fm);
        Intrinsics.checkParameterIsNotNull(fragments, "fragments");
        Intrinsics.checkParameterIsNotNull(tabTitles, "tabTitles");
        Intrinsics.checkParameterIsNotNull(fm, "fm");
        this.fragments = fragments;
        this.tabTitles = tabTitles;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        return 2;
    }

    @Override // android.support.p001v4.app.FragmentPagerAdapter
    @NotNull
    public Fragment getItem(int i) {
        Fragment fragment;
        switch (i) {
            case 0:
                fragment = this.fragments.get(0);
                break;
            case 1:
                fragment = this.fragments.get(1);
                break;
            default:
                fragment = this.fragments.get(0);
                break;
        }
        return fragment;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    @Nullable
    public CharSequence getPageTitle(int i) {
        return i < getCount() ? this.tabTitles.get(i) : "Error Tab";
    }
}
