package com.callerid.block.customview;

import android.text.Editable;
import android.text.TextWatcher;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/DeletableEditText$c.class */
class DeletableEditText$c implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ DeletableEditText f4128b;

    private DeletableEditText$c(DeletableEditText deletableEditText) {
        this.f4128b = deletableEditText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        boolean z = true;
        if (this.f4128b.getText().toString().length() < 1) {
            z = false;
        }
        this.f4128b.setClearDrawableVisible(z);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
