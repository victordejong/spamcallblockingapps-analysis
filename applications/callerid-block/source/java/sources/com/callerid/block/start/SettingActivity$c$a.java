package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.start.SettingActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$c$a.class */
class SettingActivity$c$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SettingActivity.c f4944b;

    SettingActivity$c$a(SettingActivity.c cVar) {
        this.f4944b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4944b.a.finish();
            EZCallApplication.m10163c().m10161e();
            Intent intent = new Intent((Context) this.f4944b.a, (Class<?>) StartActivityTest.class);
            intent.addFlags(268435456);
            this.f4944b.a.startActivity(intent);
            Process.killProcess(Process.myPid());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
