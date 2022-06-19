package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b.class */
public class RecentActivityFragment$b extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3082a;

    public RecentActivityFragment$b(RecentActivityFragment recentActivityFragment) {
        this.f3082a = recentActivityFragment;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && fa1.m1827w()) {
            RecentActivityFragment.O(this.f3082a).setVisibility(0);
            RecentActivityFragment.C(this.f3082a).setVisibility(8);
            RecentActivityFragment.Q(this.f3082a).setVisibility(0);
            RecentActivityFragment.D(this.f3082a);
        }
    }
}
