package com.callerid.block.mvc.controller;

import android.view.View;
import com.callerid.block.util.C1186k;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/RequestPerActivity$a.class */
class RequestPerActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ RequestPerActivity f4699b;

    RequestPerActivity$a(RequestPerActivity requestPerActivity) {
        this.f4699b = requestPerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1186k.m9816c().m9812g("request_per_click");
        RequestPerActivity.Q(this.f4699b);
    }
}
