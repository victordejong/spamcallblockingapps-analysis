package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a.class */
public class RecentcallsFragment$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3134a;

    public RecentcallsFragment$a(RecentcallsFragment recentcallsFragment) {
        this.f3134a = recentcallsFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RecentcallsFragment.F(this.f3134a).m4324r(this, MySubscriptions.class, null);
    }
}
