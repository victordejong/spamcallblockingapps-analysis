package com.callerid.block.main;

import android.content.Intent;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$e.class */
class MainActivity$e implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4590b;

    MainActivity$e(MainActivity mainActivity) {
        this.f4590b = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MainActivity.M0(this.f4590b) != null && MainActivity.C0(this.f4590b) != null) {
            if (MainActivity.M0(this.f4590b).getBooleanExtra("missedcall", false)) {
                MainActivity.C0(this.f4590b).setCurrentItem(0);
            }
            if (MainActivity.M0(this.f4590b).getBooleanExtra("blockenable", false)) {
                MainActivity.C0(this.f4590b).setCurrentItem(2);
            }
            if (MainActivity.M0(this.f4590b).getBooleanExtra("download_db", false)) {
                MainActivity.C0(this.f4590b).setCurrentItem(2);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "download_db");
                }
                C1186k.m9816c().m9812g("noti_offlinedb_download");
            }
            if (MainActivity.M0(this.f4590b).getBooleanExtra("update_db", false)) {
                MainActivity.C0(this.f4590b).setCurrentItem(2);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "update_db");
                }
                C1186k.m9816c().m9812g("noti_offlinedb_update");
            }
            if (MainActivity.M0(this.f4590b).getBooleanExtra("receiversms", false)) {
                MainActivity.C0(this.f4590b).setCurrentItem(3);
                C1186k.m9816c().m9812g("search_sms_ok_notifi_ok");
            }
            MainActivity.N0(this.f4590b, (Intent) null);
        }
    }
}
