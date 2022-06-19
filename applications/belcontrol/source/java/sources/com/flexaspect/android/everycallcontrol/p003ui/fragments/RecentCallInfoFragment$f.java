package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$f.class */
public class RecentCallInfoFragment$f implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentCallInfoFragment f3103a;

    public RecentCallInfoFragment$f(RecentCallInfoFragment recentCallInfoFragment) {
        this.f3103a = recentCallInfoFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        RecentCallInfoFragment.H(this.f3103a);
    }
}
