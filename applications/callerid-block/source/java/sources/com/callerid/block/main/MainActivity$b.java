package com.callerid.block.main;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$b.class */
class MainActivity$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4587b;

    MainActivity$b(MainActivity mainActivity) {
        this.f4587b = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296443) {
            return;
        }
        MainActivity.J0(this.f4587b).dismiss();
    }
}
