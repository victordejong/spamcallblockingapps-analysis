package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.CommunityStatsFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$c.class */
public class CommunityStatsFragment$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CommunityStatsFragment f2910a;

    public CommunityStatsFragment$c(CommunityStatsFragment communityStatsFragment) {
        this.f2910a = communityStatsFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CommunityStatsFragment.N(this.f2910a).m4324r(this, MySubscriptions.class, null);
    }
}
