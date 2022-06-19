package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$i.class */
class b$i extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ b f4379a;

    b$i(b bVar) {
        this.f4379a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            C1227w.m9527a("testbuy", "短信接收广播：" + intent.getAction());
            if (!"com.callerid.block.CLOSE_AD_VEST".equals(intent.getAction()) || b.P1(this.f4379a) == null) {
                return;
            }
            b.P1(this.f4379a).m10580j();
            b.P1(this.f4379a).notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
