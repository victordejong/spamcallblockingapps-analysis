package com.callerid.block.main;

import android.content.DialogInterface;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$l.class */
class MainActivity$l implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4594b;

    MainActivity$l(MainActivity mainActivity) {
        this.f4594b = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainActivity mainActivity = this.f4594b;
        MainActivity.v0(mainActivity, mainActivity.getApplicationContext());
        C1216t0.f5076c = false;
        MainActivity.w0(this.f4594b);
        C1186k.m9816c().m9812g("overlay_per_dialog_cancel");
    }
}
