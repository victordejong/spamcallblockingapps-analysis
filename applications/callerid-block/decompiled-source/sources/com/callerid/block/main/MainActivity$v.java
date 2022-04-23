package com.callerid.block.main;

import android.os.Handler;
import android.os.Message;
import com.callerid.block.bean.GameInfosVersionModel;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$v.class */
class MainActivity$v extends Handler {

    /* renamed from: a */
    private final MainActivity f4610a;

    MainActivity$v(MainActivity mainActivity) {
        this.f4610a = mainActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 564) {
            MainActivity mainActivity = this.f4610a;
            GameInfosVersionModel gameInfosVersionModel = (GameInfosVersionModel) message.obj;
            mainActivity.y = gameInfosVersionModel;
            MainActivity.T(mainActivity, gameInfosVersionModel.getUpdatePath());
            String minMaintenanceVersion = this.f4610a.y.getMinMaintenanceVersion();
            C1227w.m9527a("testupdate", "minVersion:" + minMaintenanceVersion);
            if (MainActivity.S(this.f4610a).equals("")) {
                C1199n0.m9657v1(false);
            } else if (C1216t0.m9608D(minMaintenanceVersion)) {
                if (C1199n0.m9752L(this.f4610a) == 0) {
                    C1199n0.m9729W0(this.f4610a, System.currentTimeMillis());
                }
                try {
                    if (System.currentTimeMillis() - C1199n0.m9752L(this.f4610a) < 604800000) {
                        this.f4610a.f1(true);
                    } else {
                        C1199n0.m9657v1(true);
                        this.f4610a.f1(false);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                C1199n0.m9657v1(false);
                long C1 = C1199n0.m9774C1();
                long currentTimeMillis = System.currentTimeMillis();
                if (C1 == 0) {
                    try {
                        this.f4610a.g1();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        C1199n0.m9759H1(currentTimeMillis);
                    }
                } else if (currentTimeMillis - C1 > 43200000) {
                    try {
                        this.f4610a.g1();
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        C1199n0.m9759H1(currentTimeMillis);
                    }
                } else {
                    return;
                }
                C1199n0.m9759H1(currentTimeMillis);
            }
        }
    }
}
