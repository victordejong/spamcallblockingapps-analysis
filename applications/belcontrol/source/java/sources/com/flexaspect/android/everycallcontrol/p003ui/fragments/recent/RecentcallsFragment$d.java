package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.widget.PopupMenu;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d.class */
public class RecentcallsFragment$d implements PopupMenu.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3140a;

    public RecentcallsFragment$d(RecentcallsFragment recentcallsFragment) {
        this.f3140a = recentcallsFragment;
    }

    @Override // android.widget.PopupMenu.OnDismissListener
    public void onDismiss(PopupMenu popupMenu) {
        RecentcallsFragment.H(this.f3140a, false);
        RecentcallsFragment recentcallsFragment = this.f3140a;
        if (recentcallsFragment.w) {
            RecentcallsFragment.I(recentcallsFragment, 0);
        }
        this.f3140a.q0();
    }
}
