package com.callerid.block.start;

import android.content.Intent;
import android.widget.CompoundButton;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.p060x0.C1230a;
import d.p.a.a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$b.class */
class CallerActivity$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4915b;

    CallerActivity$b(CallerActivity callerActivity) {
        this.f4915b = callerActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!z) {
            C1199n0.m9699h1(this.f4915b.getApplicationContext(), true);
            CallerActivity.V(this.f4915b).setChecked(true);
        } else if (!C1230a.m9508h(this.f4915b.getApplicationContext())) {
            CallerActivity.T(this.f4915b, true);
            CallerActivity.U(this.f4915b);
        } else {
            EZCallApplication.m10163c().f4577b = false;
            a.b(this.f4915b.getApplicationContext()).d(new Intent("com.callerid.block.CLOSE_NOTIFI"));
            CallerActivity.V(this.f4915b).setChecked(false);
        }
    }
}
