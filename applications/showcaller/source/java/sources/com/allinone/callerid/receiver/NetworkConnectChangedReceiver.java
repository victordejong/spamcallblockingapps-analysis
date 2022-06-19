package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Parcelable;
import com.allinone.callerid.p135a.C2137b;
import com.allinone.callerid.util.C3718c0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/NetworkConnectChangedReceiver.class */
public class NetworkConnectChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Parcelable parcelableExtra;
        try {
            if (!"android.net.wifi.STATE_CHANGE".equals(intent.getAction()) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
                return;
            }
            if (!(((NetworkInfo) parcelableExtra).getState() == NetworkInfo.State.CONNECTED)) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("wbb", "断开下载");
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "网络已连接");
            }
            C2137b.m27926e().m27924g();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
