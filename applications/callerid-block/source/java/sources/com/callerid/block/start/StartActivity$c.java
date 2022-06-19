package com.callerid.block.start;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/StartActivity$c.class */
class StartActivity$c implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ String[] f4963b;

    /* renamed from: c */
    final /* synthetic */ StartActivity f4964c;

    StartActivity$c(StartActivity startActivity, String[] strArr) {
        this.f4964c = startActivity;
        this.f4963b = strArr;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        StartActivity.T(this.f4964c, this.f4963b[i]);
        C1216t0.f5074a = true;
        EZCallApplication.m10163c().f4578c = this.f4963b[i];
        StartActivity.U(this.f4964c).dismiss();
        Intent intent = new Intent();
        intent.putExtra("is_first", StartActivity.Q(this.f4964c));
        intent.setClass(this.f4964c, StartActivity.class);
        this.f4964c.startActivity(intent);
        this.f4964c.finish();
    }
}
