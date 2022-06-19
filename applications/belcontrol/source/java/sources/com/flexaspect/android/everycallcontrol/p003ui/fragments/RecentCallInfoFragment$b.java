package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$b.class */
public class RecentCallInfoFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentCallInfoFragment f3100a;

    public RecentCallInfoFragment$b(RecentCallInfoFragment recentCallInfoFragment) {
        this.f3100a = recentCallInfoFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putLong(ContactFragment.y, RecentCallInfoFragment.B(this.f3100a).f7778d);
        RecentCallInfoFragment.C(this.f3100a).m4324r(this, ContactFragment.class, bundle);
    }
}
