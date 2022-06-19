package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import android.widget.CompoundButton;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$a.class */
public class RecentCallInfoFragment$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentCallInfoFragment f3099a;

    public RecentCallInfoFragment$a(RecentCallInfoFragment recentCallInfoFragment) {
        this.f3099a = recentCallInfoFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        (RecentCallInfoFragment.x(this.f3099a).m1595s() ? r71.EnumC1638a.f8003y : r71.EnumC1638a.f8000x).m685k(Boolean.valueOf(((CompoundButton) view).isChecked()));
        RecentCallInfoFragment.y(this.f3099a);
    }
}
