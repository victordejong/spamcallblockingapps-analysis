package com.callerid.block.start;

import android.content.Context;
import android.widget.CompoundButton;
import com.callerid.block.util.C1199n0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$j.class */
class CallerActivity$j implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4919b;

    CallerActivity$j(CallerActivity callerActivity) {
        this.f4919b = callerActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Context applicationContext = this.f4919b.getApplicationContext();
        int i = z ? 0 : 1;
        C1199n0.m9672q1(applicationContext, i);
        CallerActivity.Q(this.f4919b).setChecked(i);
    }
}
