package com.callerid.block.fragment;

import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.R$layout;
import com.callerid.block.R$string;
import com.callerid.block.R$style;
import com.callerid.block.bean.EZSimpleContact;
import com.rey.material.app.C2824a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$5.class */
class EZInterceptFragment$5 implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ EZInterceptFragment f4348b;

    EZInterceptFragment$5(EZInterceptFragment eZInterceptFragment) {
        this.f4348b = eZInterceptFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        EZInterceptFragment.d2(this.f4348b).dismiss();
        1 r0 = new 1(this, (int) R$style.SimpleDialogLight, (EZSimpleContact) EZInterceptFragment.f2(this.f4348b).get(i));
        r0.m1520f(R$layout.view_dialog_block_edit);
        r0.m1517n(this.f4348b.J().getString(R$string.save_small));
        r0.m1519g(this.f4348b.J().getString(R$string.cancel_dialog));
        r0.m1516o(this.f4348b.J().getString(R$string.add));
        C2824a.m1467K1(r0).J1(this.f4348b.B(), (String) null);
    }
}
