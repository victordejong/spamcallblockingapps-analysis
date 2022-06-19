package com.flexaspect.android.everycallcontrol.p003ui.fragments;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.CommunityStatsFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d.class */
public class CommunityStatsFragment$d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CommunityStatsFragment f2911a;

    public CommunityStatsFragment$d(CommunityStatsFragment communityStatsFragment) {
        this.f2911a = communityStatsFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (new iq0(this.f2911a.getActivity(), this.f2911a.getChildFragmentManager()).e() == CommunityStatsFragment.F(this.f2911a)) {
            CommunityStatsFragment.G(this.f2911a, 0);
        } else {
            CommunityStatsFragment.H(this.f2911a);
        }
        CommunityStatsFragment communityStatsFragment = this.f2911a;
        communityStatsFragment.s.setCurrentItem(CommunityStatsFragment.F(communityStatsFragment), true);
        CommunityStatsFragment.P(this.f2911a).postDelayed(this, CommunityStatsFragment.O(this.f2911a));
    }
}
