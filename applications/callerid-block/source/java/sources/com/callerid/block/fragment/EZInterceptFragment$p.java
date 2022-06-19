package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$p.class */
class EZInterceptFragment$p extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ EZInterceptFragment f4362a;

    EZInterceptFragment$p(EZInterceptFragment eZInterceptFragment) {
        this.f4362a = eZInterceptFragment;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (EZInterceptFragment.Y1(this.f4362a) == null) {
                return;
            }
            EZInterceptFragment.Y1(this.f4362a).setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
