package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.start.SettingActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$c$b.class */
class SettingActivity$c$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SettingActivity.c f4945b;

    SettingActivity$c$b(SettingActivity.c cVar) {
        this.f4945b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4945b.a.finish();
            EZCallApplication.m10163c().m10161e();
            Intent intent = new Intent((Context) this.f4945b.a, (Class<?>) StartActivityTest.class);
            intent.addFlags(268435456);
            this.f4945b.a.startActivity(intent);
            Process.killProcess(Process.myPid());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
