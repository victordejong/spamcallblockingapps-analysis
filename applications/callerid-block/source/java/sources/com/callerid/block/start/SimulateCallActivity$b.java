package com.callerid.block.start;

import android.widget.TextView;
import com.callerid.block.R$string;
import com.callerid.block.f.c;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SimulateCallActivity$b.class */
class SimulateCallActivity$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SimulateCallActivity f4959b;

    SimulateCallActivity$b(SimulateCallActivity simulateCallActivity) {
        this.f4959b = simulateCallActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.h0(this.f4959b.getApplicationContext(), "123456789", 55, 55, "");
        TextView T = SimulateCallActivity.T(this.f4959b);
        T.setText(this.f4959b.getResources().getString(R$string.great) + "\n" + this.f4959b.getResources().getString(R$string.clickx));
    }
}
