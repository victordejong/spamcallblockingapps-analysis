package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.widget.CompoundButton;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$f.class */
public class RecentcallsFragment$f implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ r71.EnumC1638a f3142a;

    public RecentcallsFragment$f(RecentcallsFragment recentcallsFragment, r71.EnumC1638a enumC1638a) {
        this.f3142a = enumC1638a;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f3142a.m685k(Boolean.valueOf(z));
    }
}
