package com.callerid.block.start;

import android.view.View;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/StartActivity$a.class */
class StartActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ StartActivity f4961b;

    StartActivity$a(StartActivity startActivity) {
        this.f4961b = startActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (StartActivity.Q(this.f4961b)) {
            C1227w.m9527a("first_enter", "首次点击getstart");
            C1186k.m9816c().m9812g("first_enter_click_continue");
        }
        StartActivity.R(this.f4961b);
    }
}
