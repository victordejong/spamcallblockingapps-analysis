package com.callerid.block.mvc.controller;

import android.widget.CompoundButton;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$b.class */
class SuggestNameActivity$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ SuggestNameActivity f4705b;

    SuggestNameActivity$b(SuggestNameActivity suggestNameActivity) {
        this.f4705b = suggestNameActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            SuggestNameActivity.R(this.f4705b).setChecked(false);
        }
    }
}
