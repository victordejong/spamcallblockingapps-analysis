package com.flexaspect.android.everycallcontrol.p003ui.fragments;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$j */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$j.class */
public class RecentActivityFragment$j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3091a;

    public RecentActivityFragment$j(RecentActivityFragment recentActivityFragment) {
        this.f3091a = recentActivityFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            RecentActivityFragment.R(this.f3091a).setRefreshing(true);
            RecentActivityFragment.D(this.f3091a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
