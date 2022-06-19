package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$e.class */
public class RecentcallsFragment$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3141a;

    public RecentcallsFragment$e(RecentcallsFragment recentcallsFragment) {
        this.f3141a = recentcallsFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f3141a.R();
        dialogInterface.cancel();
    }
}
