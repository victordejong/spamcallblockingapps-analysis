package com.callerid.block.fragment;

import android.app.Activity;
import android.content.DialogInterface;
import com.callerid.block.util.p060x0.C1230a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$m.class */
class EZInterceptFragment$m implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ Activity f4358b;

    EZInterceptFragment$m(EZInterceptFragment eZInterceptFragment, Activity activity) {
        this.f4358b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        C1230a.m9511e(this.f4358b);
        dialogInterface.dismiss();
    }
}
