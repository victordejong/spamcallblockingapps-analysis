package com.callerid.block.customview;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/DeletableEditText$b.class */
class DeletableEditText$b implements View.OnFocusChangeListener {

    /* renamed from: b */
    final /* synthetic */ DeletableEditText f4127b;

    private DeletableEditText$b(DeletableEditText deletableEditText) {
        this.f4127b = deletableEditText;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        DeletableEditText.b(this.f4127b, z);
        boolean z2 = false;
        if (DeletableEditText.a(this.f4127b)) {
            z2 = false;
            if (this.f4127b.getText().toString().length() >= 1) {
                z2 = true;
            }
        }
        this.f4127b.setClearDrawableVisible(z2);
    }
}
