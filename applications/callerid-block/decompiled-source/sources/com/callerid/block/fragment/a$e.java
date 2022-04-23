package com.callerid.block.fragment;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$e.class */
class a$e implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ a f4368b;

    a$e(a aVar) {
        this.f4368b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a.X1(this.f4368b).setText("");
        ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
