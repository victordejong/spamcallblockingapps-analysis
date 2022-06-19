package com.callerid.block.start;

import android.view.View;
import com.callerid.block.start.BlockListActivity$BlackAdapter;
import com.rey.material.app.Dialog;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$BlackAdapter$2$1$a.class */
class BlockListActivity$BlackAdapter$2$1$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ Dialog f4908b;

    /* renamed from: c */
    final /* synthetic */ BlockListActivity$BlackAdapter.View$OnClickListenerC11522.1 f4909c;

    BlockListActivity$BlackAdapter$2$1$a(BlockListActivity$BlackAdapter.View$OnClickListenerC11522.1 r4, Dialog dialog) {
        this.f4909c = r4;
        this.f4908b = dialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        BlockListActivity$BlackAdapter.View$OnClickListenerC11522 view$OnClickListenerC11522 = this.f4909c.n;
        BlockListActivity$BlackAdapter.this.m9937d(view, view$OnClickListenerC11522.f4899b);
        this.f4908b.dismiss();
    }
}
