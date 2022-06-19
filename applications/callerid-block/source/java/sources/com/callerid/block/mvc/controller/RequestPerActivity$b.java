package com.callerid.block.mvc.controller;

import android.view.View;
import com.callerid.block.util.C1186k;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/RequestPerActivity$b.class */
class RequestPerActivity$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ RequestPerActivity f4700b;

    RequestPerActivity$b(RequestPerActivity requestPerActivity) {
        this.f4700b = requestPerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296569) {
            return;
        }
        C1186k.m9816c().m9812g("ou_meng_dialog_click");
        RequestPerActivity.R(this.f4700b).dismiss();
        RequestPerActivity.S(this.f4700b);
    }
}
