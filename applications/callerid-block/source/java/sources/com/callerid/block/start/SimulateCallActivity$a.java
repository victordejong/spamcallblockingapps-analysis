package com.callerid.block.start;

import android.view.View;
import com.callerid.block.f.c;
import com.callerid.block.p038f.AbstractC0952b;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SimulateCallActivity$a.class */
class SimulateCallActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ SimulateCallActivity f4958b;

    SimulateCallActivity$a(SimulateCallActivity simulateCallActivity) {
        this.f4958b = simulateCallActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (SimulateCallActivity.Q(this.f4958b) != null) {
            SimulateCallActivity.Q(this.f4958b).cancel();
        }
        if (AbstractC0952b.f4315a != null) {
            c.Z(this.f4958b);
        }
        if (SimulateCallActivity.R(this.f4958b) != null && SimulateCallActivity.S(this.f4958b) != null) {
            SimulateCallActivity.S(this.f4958b).removeCallbacks(SimulateCallActivity.R(this.f4958b));
        }
        this.f4958b.finish();
    }
}
