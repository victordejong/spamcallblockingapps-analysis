package com.callerid.block.main;

import android.content.Context;
import android.content.Intent;
import com.callerid.block.start.StartActivityTest;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$p.class */
class MainActivity$p implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4600b;

    MainActivity$p(MainActivity mainActivity) {
        this.f4600b = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4600b.finish();
        EZCallApplication.m10163c().m10161e();
        this.f4600b.startActivity(new Intent((Context) this.f4600b, (Class<?>) StartActivityTest.class));
    }
}
