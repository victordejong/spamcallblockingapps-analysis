package com.callerid.block.start;

import android.content.Intent;
import android.widget.CompoundButton;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1199n0;
import d.p.a.a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$a.class */
class CallerActivity$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4914b;

    CallerActivity$a(CallerActivity callerActivity) {
        this.f4914b = callerActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            C1199n0.m9699h1(this.f4914b.getApplicationContext(), true);
            CallerActivity.S(this.f4914b).setChecked(false);
            EZCallApplication.m10163c().f4577b = true;
            a.b(this.f4914b.getApplicationContext()).d(new Intent("com.callerid.block.CLOSE_NOTIFI"));
            return;
        }
        C1199n0.m9699h1(this.f4914b.getApplicationContext(), false);
        CallerActivity.S(this.f4914b).setChecked(true);
    }
}
