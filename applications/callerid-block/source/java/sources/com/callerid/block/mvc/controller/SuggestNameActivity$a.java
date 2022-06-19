package com.callerid.block.mvc.controller;

import android.widget.CompoundButton;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$a.class */
class SuggestNameActivity$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    final /* synthetic */ SuggestNameActivity f4704b;

    SuggestNameActivity$a(SuggestNameActivity suggestNameActivity) {
        this.f4704b = suggestNameActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            SuggestNameActivity.Q(this.f4704b).setChecked(false);
        }
    }
}
