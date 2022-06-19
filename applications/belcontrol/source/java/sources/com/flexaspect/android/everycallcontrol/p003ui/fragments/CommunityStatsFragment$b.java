package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.CommunityStatsFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b.class */
public class CommunityStatsFragment$b implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ CommunityStatsFragment f2909a;

    public CommunityStatsFragment$b(CommunityStatsFragment communityStatsFragment) {
        this.f2909a = communityStatsFragment;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        CommunityStatsFragment.K(this.f2909a).removeCallbacks(this.f2909a.z);
        CommunityStatsFragment.M(this.f2909a, 100);
        return false;
    }
}
