package com.callerid.block.start;

import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/StartActivityTest$a.class */
public class StartActivityTest$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ StartActivityTest f4965b;

    /* renamed from: com.callerid.block.start.StartActivityTest$a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/StartActivityTest$a$a.class */
    class RunnableC1161a implements Runnable {
        RunnableC1161a() {
            StartActivityTest$a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StartActivityTest.O(StartActivityTest$a.this.f4965b);
        }
    }

    StartActivityTest$a(StartActivityTest startActivityTest) {
        this.f4965b = startActivityTest;
    }

    @Override // java.lang.Runnable
    public void run() {
        StartActivityTest startActivityTest = this.f4965b;
        StartActivityTest.N(startActivityTest, C1216t0.m9560q(startActivityTest.getApplicationContext()));
        if (C1216t0.m9561p(this.f4965b.getApplicationContext())) {
            C1199n0.m9669r1(this.f4965b.getApplicationContext(), System.currentTimeMillis() + 86400000);
        }
        this.f4965b.runOnUiThread(new RunnableC1161a());
    }
}
