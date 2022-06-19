package com.flexaspect.android.everycallcontrol.p003ui.fragments;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$a.class */
public class RecentActivityFragment$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3081a;

    public RecentActivityFragment$a(RecentActivityFragment recentActivityFragment) {
        this.f3081a = recentActivityFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (RecentActivityFragment.F(this.f3081a).getSupportFragmentManager().e0() > 0) {
            this.f3081a.m837o().m600b();
        }
    }
}
