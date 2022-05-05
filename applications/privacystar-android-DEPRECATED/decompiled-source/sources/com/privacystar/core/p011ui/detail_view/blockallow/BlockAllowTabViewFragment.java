package com.privacystar.core.p011ui.detail_view.blockallow;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.view.ViewPager;
import android.support.p004v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.approved_list.ApprovedListFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\tH\u0014J\b\u0010\u000f\u001a\u00020\u0001H\u0016J\u0012\u0010\u0010\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u001a\u001a\u00020\rH\u0016J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010\"\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010#\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010$\u001a\u00020\rH\u0016J\b\u0010%\u001a\u00020\rH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��¨\u0006&"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/blockallow/BlockAllowTabViewFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Landroid/support/design/widget/TabLayout$OnTabSelectedListener;", "()V", "fragments", "", "Landroid/support/v4/app/Fragment;", "positionOfTheSelectedTab", "", "toolBar", "Landroid/support/v7/widget/Toolbar;", "enableFab", "", "getLayoutResId", "newInstance", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onTabReselected", "tab", "Landroid/support/design/widget/TabLayout$Tab;", "onTabSelected", "onTabUnselected", "refreshContent", "setupToolbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.blockallow.BlockAllowTabViewFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/blockallow/BlockAllowTabViewFragment.class */
public final class BlockAllowTabViewFragment extends DetailFragment implements DetailActivity.DetailActivityContent, TabLayout.OnTabSelectedListener {
    private HashMap _$_findViewCache;
    private final List<Fragment> fragments = CollectionsKt.listOf((Object[]) new Fragment[]{new BlockListFragment(), new ApprovedListFragment()});
    private int positionOfTheSelectedTab;
    private Toolbar toolBar;

    private final void enableFab() {
        this.activity.enableFab(true);
        this.activity.setFabIcon(C1566R.C1568drawable.ic_add_white_24px);
        this.activity.setFabContentDesc(getString(C1566R.string.con_desc_block_fragment_add));
        Timber.m37d("Enabling and binding FAB.", new Object[0]);
    }

    private final void setupToolbar() {
        Toolbar toolbar = this.toolBar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBar");
        }
        toolbar.setTitle(C1566R.string.nav_drawer_item_block_allow);
        Toolbar toolbar2 = this.toolBar;
        if (toolbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBar");
        }
        toolbar2.setNavigationIcon(C1566R.C1568drawable.back_icon_padded);
        Toolbar toolbar3 = this.toolBar;
        if (toolbar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBar");
        }
        toolbar3.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.blockallow.BlockAllowTabViewFragment$setupToolbar$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DetailActivity detailActivity;
                Timber.m37d("Toolbar back button clicked", new Object[0]);
                detailActivity = BlockAllowTabViewFragment.this.activity;
                detailActivity.onBackPressed();
            }
        });
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.blockallow_tab_view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new BlockAllowTabViewFragment();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        enableFab();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Context context = getContext();
        String str = null;
        String string = context != null ? context.getString(C1566R.string.general_text_block) : null;
        if (string == null) {
            Intrinsics.throwNpe();
        }
        Context context2 = getContext();
        if (context2 != null) {
            str = context2.getString(C1566R.string.general_text_approve);
        }
        if (str == null) {
            Intrinsics.throwNpe();
        }
        List listOf = CollectionsKt.listOf((Object[]) new String[]{string, str});
        List<Fragment> list = this.fragments;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
        BlockAllowPagerAdapter blockAllowPagerAdapter = new BlockAllowPagerAdapter(list, listOf, childFragmentManager);
        ((TabLayout) view.findViewById(C1566R.C1569id.blockallow_tabs)).addOnTabSelectedListener(this);
        ViewPager blockallow_view_pager = (ViewPager) view.findViewById(C1566R.C1569id.blockallow_view_pager);
        Intrinsics.checkExpressionValueIsNotNull(blockallow_view_pager, "blockallow_view_pager");
        blockallow_view_pager.setAdapter(blockAllowPagerAdapter);
        ((TabLayout) view.findViewById(C1566R.C1569id.blockallow_tabs)).setupWithViewPager((ViewPager) view.findViewById(C1566R.C1569id.blockallow_view_pager));
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        Toolbar toolbar = (Toolbar) view.findViewById(C1566R.C1569id.blockallow_toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "view.blockallow_toolbar");
        this.toolBar = toolbar;
        setupToolbar();
        this.activity.hideToolbar();
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
        Timber.m37d("FAB CLICKED", new Object[0]);
        StringBuilder sb = new StringBuilder();
        sb.append(" Selected Tab = ");
        sb.append(this.positionOfTheSelectedTab == 0 ? "BlockListFragment" : "ApprovedListFragment");
        sb.append(' ');
        Timber.m37d(sb.toString(), new Object[0]);
        Fragment fragment = this.fragments.get(this.positionOfTheSelectedTab);
        if (fragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.detail_view.DetailActivity.DetailActivityContent");
        }
        ((DetailActivity.DetailActivityContent) fragment).onFabClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
    public void onTabReselected(@Nullable TabLayout.Tab tab) {
    }

    @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
    public void onTabSelected(@Nullable TabLayout.Tab tab) {
        if (tab != null) {
            this.positionOfTheSelectedTab = tab.getPosition();
        }
    }

    @Override // android.support.design.widget.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(@Nullable TabLayout.Tab tab) {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }
}
