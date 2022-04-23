package com.callerid.block.mvc.controller;

import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.bean.EZCountryCode;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$d.class */
class EZSearchNumberActivity$d implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4639b;

    EZSearchNumberActivity$d(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4639b = eZSearchNumberActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        EZSearchNumberActivity eZSearchNumberActivity = this.f4639b;
        eZSearchNumberActivity.y0((EZCountryCode) eZSearchNumberActivity.B.get(i));
        this.f4639b.z.dismiss();
    }
}
