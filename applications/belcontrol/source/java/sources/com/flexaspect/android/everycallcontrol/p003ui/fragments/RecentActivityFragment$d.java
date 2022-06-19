package com.flexaspect.android.everycallcontrol.p003ui.fragments;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$d.class */
public class RecentActivityFragment$d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3084a;

    public RecentActivityFragment$d(RecentActivityFragment recentActivityFragment) {
        this.f3084a = recentActivityFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecentActivityFragment recentActivityFragment = this.f3084a;
        RecentActivityFragment.y(recentActivityFragment, RecentActivityFragment.z(recentActivityFragment).getHeight());
        int m1093c = oe1.m1093c(90);
        RecentActivityFragment recentActivityFragment2 = this.f3084a;
        if (RecentActivityFragment.K(recentActivityFragment2).getHeight() <= m1093c) {
            m1093c = RecentActivityFragment.K(this.f3084a).getHeight();
        }
        RecentActivityFragment.G(recentActivityFragment2, m1093c);
    }
}
