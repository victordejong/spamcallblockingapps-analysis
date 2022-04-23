package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$p.class */
class EZCallLogFragment$p extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ EZCallLogFragment f4344a;

    private EZCallLogFragment$p(EZCallLogFragment eZCallLogFragment) {
        this.f4344a = eZCallLogFragment;
    }

    /* synthetic */ EZCallLogFragment$p(EZCallLogFragment eZCallLogFragment, EZCallLogFragment$e eZCallLogFragment$e) {
        this(eZCallLogFragment);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.callerid.block.RELOAD_DATA_VEST".equals(intent.getAction())) {
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "reload_data_vest");
            }
            this.f4344a.u2();
        }
        if ("com.callerid.block.CLOSE_AD_VEST".equals(intent.getAction()) && EZCallLogFragment.M1(this.f4344a) != null) {
            EZCallLogFragment.M1(this.f4344a).setVisibility(8);
        }
    }
}
