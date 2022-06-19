package com.callerid.block.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.callerid.block.p033a.C0877b;
import com.callerid.block.util.C1170d;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/receiver/NetworkConnectChangedReceiver.class */
public class NetworkConnectChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "onReceive");
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                if (!C1227w.f5084a) {
                    return;
                }
                C1227w.m9527a("wbb", "移动数据未连接且wifi未连接");
            } else if (C1170d.m9898d(context)) {
                C0877b.m10617e().m10614h();
            } else {
                if (C1227w.f5084a) {
                    C1227w.m9527a("wbb", "移动数据已连接");
                }
                C0877b.m10617e().m10615g();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
