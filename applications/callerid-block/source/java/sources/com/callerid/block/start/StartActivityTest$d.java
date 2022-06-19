package com.callerid.block.start;

import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/StartActivityTest$d.class */
class StartActivityTest$d implements Runnable {

    /* renamed from: b */
    final /* synthetic */ StartActivityTest f4969b;

    StartActivityTest$d(StartActivityTest startActivityTest) {
        this.f4969b = startActivityTest;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (C1227w.f5084a) {
            C1227w.m9527a("AppOpenManager", "delayedJudge:" + StartActivityTest.R(this.f4969b));
        }
        if (StartActivityTest.R(this.f4969b)) {
            StartActivityTest.S(this.f4969b, false);
            if (StartActivityTest.T(this.f4969b) != null) {
                StartActivityTest.T(this.f4969b).cancel();
            }
            if (EZCallApplication.m10163c().f4579d.b != null && EZCallApplication.m10163c().f4579d.g) {
                return;
            }
            StartActivityTest.z = true;
            this.f4969b.V();
        }
    }
}
