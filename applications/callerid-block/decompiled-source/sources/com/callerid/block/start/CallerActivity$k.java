package com.callerid.block.start;

import android.widget.CompoundButton;
import com.callerid.block.util.C1199n0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$k.class */
class CallerActivity$k implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4920b;

    CallerActivity$k(CallerActivity callerActivity) {
        this.f4920b = callerActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            C1199n0.m9672q1(this.f4920b.getApplicationContext(), 1);
            CallerActivity.R(this.f4920b).setChecked(false);
            return;
        }
        C1199n0.m9672q1(this.f4920b.getApplicationContext(), 0);
        CallerActivity.R(this.f4920b).setChecked(true);
    }
}
