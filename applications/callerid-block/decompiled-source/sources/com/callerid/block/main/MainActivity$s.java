package com.callerid.block.main;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.bean.GameInfosVersionModel;
import com.callerid.block.p040h.p041a.p050f.C1032g;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import d.p.a.a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$s.class */
class MainActivity$s extends Handler {

    /* renamed from: a */
    WeakReference<MainActivity> f4603a;

    MainActivity$s(MainActivity mainActivity) {
        this.f4603a = new WeakReference<>(mainActivity);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        GameInfosVersionModel gameInfosVersionModel;
        super.handleMessage(message);
        MainActivity mainActivity = this.f4603a.get();
        if (mainActivity != null) {
            int i = message.what;
            if (i == 911) {
                Intent intent = new Intent();
                intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
                a.b(mainActivity).d(intent);
                Intent intent2 = new Intent();
                intent2.setAction("com.callerid.block.STARRED_DATA");
                a.b(mainActivity).d(intent2);
                C1032g.m10320k(mainActivity, new a(this));
            } else if (i == 970 && (gameInfosVersionModel = (GameInfosVersionModel) message.obj) != null) {
                MainActivity.T(mainActivity, gameInfosVersionModel.getUpdatePath());
                String minMaintenanceVersion = gameInfosVersionModel.getMinMaintenanceVersion();
                if (MainActivity.S(mainActivity) == null || MainActivity.S(mainActivity).equals("")) {
                    MainActivity.U(mainActivity).setVisibility(8);
                    Toast.makeText((Context) mainActivity, (CharSequence) mainActivity.getResources().getString(R$string.current), 0).show();
                    return;
                }
                C1227w.m9527a("testupdate", "minVersion:" + minMaintenanceVersion);
                MainActivity.U(mainActivity).setVisibility(8);
                C1227w.m9527a("testupdate", "Utils.getTestRest==" + C1216t0.m9608D(minMaintenanceVersion));
                if (C1216t0.m9608D(minMaintenanceVersion)) {
                    mainActivity.f1(true);
                    return;
                }
                try {
                    C1216t0.m9574f0(mainActivity, mainActivity.getPackageName());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
