package com.callerid.block.fragment;

import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
import com.callerid.block.mvc.controller.EZDialActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$e.class */
class EZCallLogFragment$e implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ EZCallLogFragment f4338b;

    EZCallLogFragment$e(EZCallLogFragment eZCallLogFragment) {
        this.f4338b = eZCallLogFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent();
        intent.setClass(EZCallLogFragment.f2(this.f4338b), EZDialActivity.class);
        this.f4338b.z1(intent);
        EZCallLogFragment.f2(this.f4338b).overridePendingTransition(R$anim.abc_grow_fade_in_from_bottom, R$anim.abc_slide_out_top);
    }
}
