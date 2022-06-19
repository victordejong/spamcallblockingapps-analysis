package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$g */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g.class */
public class RecentcallsFragment$g implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3143a;

    public RecentcallsFragment$g(RecentcallsFragment recentcallsFragment) {
        this.f3143a = recentcallsFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        RecentcallsFragment.J(this.f3143a);
        dialogInterface.cancel();
    }
}
