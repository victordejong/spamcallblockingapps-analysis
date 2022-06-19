package com.callerid.block.mvc.controller;

import android.view.View;
import com.callerid.block.util.C1186k;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$f.class */
class EZSearchNumberActivity$f implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4640b;

    EZSearchNumberActivity$f(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4640b = eZSearchNumberActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1186k.m9816c().m9812g("searched_limit_click");
        EZSearchNumberActivity.Q(this.f4640b);
    }
}
