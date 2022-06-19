package com.callerid.block.mvc.controller;

import android.view.View;
import android.view.animation.AnimationUtils;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$i.class */
class EZSearchNumberActivity$i implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ EZSearchNumberActivity f4642b;

    EZSearchNumberActivity$i(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4642b = eZSearchNumberActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f4642b.C.getVisibility() == 0) {
            this.f4642b.C.startAnimation(AnimationUtils.loadAnimation(this.f4642b.getApplicationContext(), R$anim.abc_fade_out));
            this.f4642b.C.setVisibility(8);
            return;
        }
        this.f4642b.C.setVisibility(0);
        this.f4642b.C.startAnimation(AnimationUtils.loadAnimation(this.f4642b.getApplicationContext(), R$anim.abc_fade_in));
    }
}
