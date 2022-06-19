package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.view.MenuItem;
import android.widget.PopupMenu;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$j */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$j.class */
public class RecentcallsFragment$j implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3151a;

    public RecentcallsFragment$j(RecentcallsFragment recentcallsFragment) {
        this.f3151a = recentcallsFragment;
    }

    public /* synthetic */ RecentcallsFragment$j(RecentcallsFragment recentcallsFragment, RecentcallsFragment$a recentcallsFragment$a) {
        this(recentcallsFragment);
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3151a.onContextItemSelected(menuItem);
    }
}
