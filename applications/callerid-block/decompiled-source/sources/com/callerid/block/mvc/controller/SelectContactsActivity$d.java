package com.callerid.block.mvc.controller;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SelectContactsActivity$d.class */
class SelectContactsActivity$d implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ SelectContactsActivity f4703b;

    SelectContactsActivity$d(SelectContactsActivity selectContactsActivity) {
        this.f4703b = selectContactsActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4703b.finish();
        this.f4703b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
