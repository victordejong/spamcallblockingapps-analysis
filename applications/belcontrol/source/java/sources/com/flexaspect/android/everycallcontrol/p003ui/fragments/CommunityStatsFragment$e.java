package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.CommunityStatsFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e.class */
public class CommunityStatsFragment$e extends Scroller {

    /* renamed from: a */
    public final /* synthetic */ CommunityStatsFragment f2912a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunityStatsFragment$e(CommunityStatsFragment communityStatsFragment, Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.f2912a = communityStatsFragment;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, CommunityStatsFragment.L(this.f2912a));
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, CommunityStatsFragment.L(this.f2912a));
    }
}
