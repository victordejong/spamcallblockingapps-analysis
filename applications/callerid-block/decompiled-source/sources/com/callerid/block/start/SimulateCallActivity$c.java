package com.callerid.block.start;

import com.callerid.block.f.c;
import com.callerid.block.p038f.AbstractC0952b;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SimulateCallActivity$c.class */
class SimulateCallActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SimulateCallActivity f4960b;

    SimulateCallActivity$c(SimulateCallActivity simulateCallActivity) {
        this.f4960b = simulateCallActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        SimulateCallActivity.Q(this.f4960b).cancel();
        if (AbstractC0952b.f4315a != null) {
            c.Z(this.f4960b.getApplicationContext());
        }
        this.f4960b.finish();
    }
}
