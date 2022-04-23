package com.callerid.block.main;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.callerid.block.util.C1186k;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$m.class */
class MainActivity$m implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4595b;

    /* renamed from: com.callerid.block.main.MainActivity$m$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$m$a.class */
    class C1095a extends TimerTask {
        C1095a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            MainActivity.A0(MainActivity$m.this.f4595b);
        }
    }

    MainActivity$m(MainActivity mainActivity) {
        this.f4595b = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            MainActivity.x0(this.f4595b, true);
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.f4595b.getPackageName()));
            intent.setFlags(268435456);
            this.f4595b.startActivity(intent);
            if (MainActivity.y0(this.f4595b) != null) {
                MainActivity.y0(this.f4595b).cancel();
            }
            MainActivity.z0(this.f4595b, new C1095a());
            MainActivity.q0(this.f4595b).schedule(MainActivity.y0(this.f4595b), 0L, 500L);
            C1186k.m9816c().m9812g("overlay_per_dialog_click");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
