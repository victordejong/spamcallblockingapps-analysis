package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.TabHost;
import p000.w81;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$f.class */
public class RecentActivityFragment$f implements TabHost.OnTabChangeListener {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3086a;

    public RecentActivityFragment$f(RecentActivityFragment recentActivityFragment) {
        this.f3086a = recentActivityFragment;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        w81.EnumC1706a enumC1706a;
        w81 w81Var;
        RecentActivityFragment recentActivityFragment = this.f3086a;
        RecentActivityFragment.N(recentActivityFragment, RecentActivityFragment.O(recentActivityFragment).getCurrentTab());
        RecentActivityFragment recentActivityFragment2 = this.f3086a;
        if (RecentActivityFragment.M(recentActivityFragment2) == 0) {
            w81Var = new w81();
            enumC1706a = w81.EnumC1706a.COMMUNITY_ACTIVITY;
        } else {
            w81Var = new w81();
            enumC1706a = w81.EnumC1706a.USER_ACTIVITY;
        }
        RecentActivityFragment.P(recentActivityFragment2, w81Var.m279G(enumC1706a));
    }
}
